
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
%>
<div class="        " style="
position: sticky; top:0; z-index: 999">
    <header class="border-bottom">
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(176, 237, 215)">
            <!-- Container wrapper -->
            <div class="container">
                <!-- Navbar brand -->
                <a class="navbar-brand me-2" href="#">
                    <img
                            src="${pageContext.request.contextPath}/img/Logo.png"
                            height="35"
                            alt="Logo"
                            loading="lazy"
                            style="margin-top: -1px;"
                    />
                </a>

                <button
                        data-mdb-collapse-init
                        class="navbar-toggler"
                        type="button"
                        data-mdb-target="#navbarButtonsExample"
                        aria-controls="navbarButtonsExample"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                >
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div class="collapse navbar-collapse" id="navbarButtonsExample">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <c:if test="${sessionScope.account.role.id == 1}">
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/Home">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/Search_Skills">Tìm kiếm</a></li>
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/mentee/schedule">Lịch trình</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account.role.id == 2}">
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/Home">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/mentor/update_profile">Cập nhật CV</a></li>
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/mentor/schedule">Lịch trình</a></li>
                        </c:if>
                        <c:if test="${sessionScope.account.role.id == 3}">
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/admin/dash">Bảng điều khiển</a></li>
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/admin/mentor">Quản lý</a></li>
                            <li class="nav-item"><a class="nav-link" href="<%=url%>/Search_Skills">Tìm kiếm kỹ năng</a></li>
                        </c:if>
                    </ul>

                    <c:if test="${sessionScope.account==null}">
                        <div class="d-flex align-items-center">
                            <button class="btn px-3 me-2" style='background-color: #07ad90;'>
                                <a href="<%=url%>/login" style="text-decoration: none">Đăng nhập</a>
                            </button>
                            <button class="btn me-3" style='background-color: #07ad90;'>
                                <a href="<%=url%>/register" style="text-decoration: none">Đăng ký miễn phí</a>
                            </button>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}">
                        <div class="d-flex align-items-center">
                            <div><span style="color: #07ad90"> ${sessionScope.account.userName}</span></div>
                            <div class="dropdown">
                                <a data-mdb-dropdown-init class="dropdown-toggle d-flex align-items-center hidden-arrow" href="#" id="navbarDropdownMenuAvatar" role="button" aria-expanded="false">
                                    <c:if test="${sessionScope.account.avatar == null}">
                                        <img src="https://www.logolynx.com/images/logolynx/4b/4beebce89d681837ba2f4105ce43afac.png" class="rounded-circle" height="25" alt="Ảnh đại diện" loading="lazy"/>
                                    </c:if>
                                    <c:if test="${sessionScope.account.avatar != null}">
                                        <img src="${pageContext.request.contextPath}/${sessionScope.account.avatar}" class="rounded-circle" height="25" alt="Ảnh đại diện" loading="lazy"/>
                                    </c:if>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuAvatar">
                                    <li><a class="dropdown-item" href="<%=url%>/changePass">Đổi mật khẩu</a></li>
                                    <li><a class="dropdown-item" href="<%=url%>/logout">Đăng xuất</a></li>
                                </ul>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </nav>
    </header>
</div>

