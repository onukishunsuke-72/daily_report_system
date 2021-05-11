package controllers.follows;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import models.Report;
import utils.DBUtil;

/**
 * Servlet implementation class FollowsIndexServlet
 */
@WebServlet("/follows/index")
public class FollowsIndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FollowsIndexServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();


        int page;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch(Exception e){
            page = 1;
        }



        Employee login_employee = (Employee)request.getSession().getAttribute("login_employee");

        List<Employee> follow_employees = em.createNamedQuery("getFollowEmployee", Employee.class)
                                            .setParameter("login_employee", login_employee)
                                            .getResultList();

        List<Report> all_follow_reports = new ArrayList<Report>();

        for(Employee follow_employee : follow_employees){
            List<Report> follow_reports = em.createNamedQuery("getMyAllReports", Report.class)
                                            .setParameter("employee", follow_employee)
                                            .getResultList();

            all_follow_reports.addAll(follow_reports);
        }

        all_follow_reports.sort(Comparator.comparing(Report::getId).reversed());


        long all_reports_count = 0;
        for(Employee follow_employee : follow_employees){
            long reports_count = (long)em.createNamedQuery("getMyReportsCount", Long.class)
                    .setParameter("employee", follow_employee)
                    .getSingleResult();

            all_reports_count = all_reports_count + reports_count;
        }

        List<Report> onepage_follow_reports = new ArrayList<Report>();
        if(all_reports_count - (15 * page) < 0){
            onepage_follow_reports = all_follow_reports.subList(15 * (page-1), (int)all_reports_count);
        }else{
            onepage_follow_reports = all_follow_reports.subList(15 * (page-1), 15 * page);
        }


        em.close();

        request.setAttribute("page", page);
        request.setAttribute("reports", onepage_follow_reports);
        request.setAttribute("reports_count", all_reports_count);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/follows/index.jsp");
        rd.forward(request, response);
    }

}
