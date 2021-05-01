package controllers.likes;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Like;
import models.Report;
import utils.DBUtil;

/**
 * Servlet implementation class LikesIndexServlet
 */
@WebServlet("/likes/index")
public class LikesIndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikesIndexServlet() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        int report_id = Integer.parseInt(request.getParameter("id"));
        Report report = em.find(Report.class, report_id);

        int page;
        try{
            page = Integer.parseInt(request.getParameter("page"));
        } catch(Exception e) {
            page = 1;
        }

        List<Like> likes = em.createNamedQuery("getThisReportLikes", Like.class)
                .setParameter("report", report)
                .setFirstResult(15 * (page-1))
                .setMaxResults(15)
                .getResultList();

        long likes_count = (long)em.createNamedQuery("getThisReportLikesCount", Long.class)
                   .setParameter("report", report)
                   .getSingleResult();

        em.close();

        request.setAttribute("likes", likes);
        request.setAttribute("likes_count", likes_count);
        request.setAttribute("page", page);
        request.setAttribute("report_id", report_id);

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/likes/index.jsp");
        rd.forward(request, response);
    }

}
