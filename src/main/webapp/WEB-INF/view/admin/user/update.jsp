<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Dự án Sweetie Pies" />
                <meta name="author" content="IT" />
                <title>Update User </title>
                <link href="/css/styles.css" rel="stylesheet" />

                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Quản lý người dùng</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Users</li>
                                </ol>
                                <div class=" mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Cập nhập</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/user/update" modelAttribute="newUser" enctype="multipart/form-data">
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Email:</label>
                                                    <form:input type="email" class="form-control" path="email" readonly="true" />
                                                    <form:errors path="email" cssClass="text-danger" />
                                                </div>
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Mật khẩu:</label>
                                                    <form:password class="form-control" path="password" />
                                                    <form:errors path="password" cssClass="text-danger" />
                                                </div>
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Họ tên:</label>
                                                    <form:input type="text" class="form-control" path="fullName" />
                                                    <form:errors path="fullName" cssClass="text-danger" />
                                                </div>
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Số điện thoại:</label>
                                                    <form:input type="text" class="form-control" path="phone" />
                                                    <form:errors path="phone" cssClass="text-danger" />
                                                </div>
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Địa chỉ:</label>
                                                    <form:input type="text" class="form-control" path="address" />
                                                    <form:errors path="address" cssClass="text-danger" />
                                                </div>
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Ảnh đại diện hiện tại:</label><br />
                                                    <c:if test="${not empty newUser.avatar}">
                                                        <img src="/images/avatar/${newUser.avatar}" alt="Avatar" width="100" height="100" />
                                                    </c:if>
                                                </div>
                                            
                                                <div class="mb-3">
                                                    <label class="form-label">Chọn ảnh mới:</label>
                                                    <input type="file" class="form-control" name="flowershopFile" />
                                                </div>
                                            
                                                <button type="submit" class="btn btn-warning">Cập nhật</button>
                                            </form:form>

                                            <!-- <form:form method="post" action="/admin/user/update"
                                                modelAttribute="newUser">

                                                <div class="mb-3" style="display: none;">
                                                    <label class="form-label">Id:</label>
                                                    <form:input type="text" class="form-control" path="id" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Email:</label>
                                                    <form:input type="email" class="form-control" path="email"
                                                        disabled="true" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">SDT:</label>
                                                    <form:input type="text" class="form-control" path="phone" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Họ tên:</label>
                                                    <form:input type="text" class="form-control" path="fullName" />
                                                </div>
                                                <div class="mb-3">
                                                    <label class="form-label">Địa chỉ:</label>
                                                    <form:input type="text" class="form-control" path="address" />
                                                </div>

                                                <button type="submit" class="btn btn-warning">Cập nhập</button>
                                            </form:form> -->
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>

            </body>

            </html>