package controllers.reports;

import java.io.IOException;

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
 * Servlet implementation class ReportsShowServlet
 */
@WebServlet("/reports/show")
public class ReportsShowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportsShowServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        Report r = em.find(Report.class, Integer.parseInt(request.getParameter("id")));
        Employee report_employee = r.getEmployee();

        Employee login_employee = (Employee)request.getSession().getAttribute("login_employee");

        long first_like_check = (long)em.createNamedQuery("firstLikeCheck", Long.class)
                                .setParameter("report", r)
                                .setParameter("employee", login_employee)
                                .getSingleResult();

        long follow_check = (long)em.createNamedQuery("followCheck", Long.class)
                            .setParameter("login_employee", login_employee)
                            .setParameter("follow_employee", report_employee)
                            .getSingleResult();

        em.close();

        request.setAttribute("report", r);
        request.setAttribute("first_like_check", first_like_check);
        request.setAttribute("follow_check", follow_check);
        request.setAttribute("_token", request.getSession().getId());
        request.getSession().setAttribute("report_id", r.getId());  //[/reports/like]に送る
        request.getSession().setAttribute("report_employee", report_employee); //[/follows/create]に送る

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/reports/show.jsp");
        rd.forward(request, response);
    }

}
