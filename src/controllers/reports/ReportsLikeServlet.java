package controllers.reports;

import java.io.IOException;
import java.sql.Timestamp;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Employee;
import models.Like;
import models.Report;
import utils.DBUtil;

/**
 * Servlet implementation class ReportsLikeServlet
 */
@WebServlet("/reports/like")
public class ReportsLikeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportsLikeServlet() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String _token = request.getParameter("_token");
        if(_token != null && _token.equals(request.getSession().getId())){
            EntityManager em = DBUtil.createEntityManager();

            Report r = em.find(Report.class, (Integer)(request.getSession().getAttribute("report_id")));
            Integer like_count = r.getLike_count();
            like_count++;
            r.setLike_count(like_count);

            Like l = new Like();
            l.setEmployee((Employee)request.getSession().getAttribute("login_employee"));
            l.setReport(r);
            Timestamp currentTime = new Timestamp(System.currentTimeMillis());
            l.setCreated_at(currentTime);
            l.setUpdated_at(currentTime);

            em.getTransaction().begin();
            em.persist(l);
            em.getTransaction().commit();
            em.close();

            request.getSession().setAttribute("flush", "いいねしました");
            request.getSession().removeAttribute("report_id");

            response.sendRedirect(request.getContextPath() + "/reports/index");
        }
    }

}
