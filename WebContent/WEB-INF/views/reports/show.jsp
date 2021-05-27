<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${report != null}">
                <h2>日報 詳細ページ</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>氏名</th>
                            <td>
                                <div class="name_follow"><c:out value="${report.employee.name}" /></div>&nbsp;&nbsp;&nbsp;
                                <div class="name_follow">
                                    <c:if test="${sessionScope.login_employee.id != report.employee.id && follow_check == 0}">
                                        <form method="POST" action="<c:url value='/follows/create' />">
                                            <input type="hidden" name="_token" value="${_token}" />
                                            <button id="follow" type="submit">フォローする</button>
                                        </form>
                                    </c:if>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>日付</th>
                            <td><fmt:formatDate value="${report.report_date}" pattern="yyyy-MM-dd"/></td>
                        </tr>
                        <tr>
                            <th>内容</th>
                            <td>
                                <pre><c:out value="${report.content}" /></pre>
                            </td>
                        </tr>
                        <tr>
                            <th>出勤日時</th>
                            <td>
                                <fmt:formatDate value="${report.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                        <tr>
                            <th>退勤日時</th>
                            <td>
                                <c:choose>
                                    <c:when test="${report.created_at != report.updated_at}">
                                       <fmt:formatDate value="${report.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                                    </c:when>
                                    <c:otherwise>
                                        <c:if test="${sessionScope.login_employee.id == report.employee.id}">
                                            <form method="POST" action="<c:url value='/reports/leave' />">
                                               <input type="hidden" name="_token" value="${_token}" />
                                               <button type="submit">退勤</button>
                                            </form>
                                        </c:if>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>

                        <tr>
                            <th>いいね数</th>
                            <c:choose>
                                <c:when test="${report.like_count != 0 }">
                                    <td>
                                        <a href="<c:url value='/likes/index?id=${report.id}' />"><c:out value="${report.like_count}" /></a>
                                    </td>
                                </c:when>
                                <c:otherwise>
                                    <td>
                                        <c:out value="${report.like_count}" />
                                    </td>
                                </c:otherwise>
                            </c:choose>
                        </tr>

                    </tbody>
                </table>
                    <c:choose>
                        <c:when test="${sessionScope.login_employee.id == report.employee.id}">
                            <p><a href="<c:url value='/reports/edit?id=${report.id}' />">この日報を編集する</a></p>
                        </c:when>
                        <c:otherwise>
                            <c:if test="${first_like_check == 0}">
                                <form method="POST" action="<c:url value='/reports/like' />">
                                   <input type="hidden" name="_token" value="${_token}" />
                                   <button type="submit">この日報にいいねする</button>
                                </form>
                            </c:if>
                        </c:otherwise>

                    </c:choose>



            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>

        <p><a href="<c:url value='/reports/index' />">一覧に戻る</a></p>
    </c:param>
</c:import>