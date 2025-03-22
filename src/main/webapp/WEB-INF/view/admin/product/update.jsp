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
                <title>Cập nhập Sản phẩm </title>
                <link href="/css/styles.css" rel="stylesheet" />

                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <script>
                    $(document).ready(() => {
                            const avatarFile = $("#avatarFile"); // Thay đổi từ $("#files") thành $("#avatarFile")
                            const orgImage = "${newProduct.images}";

                            if (orgImage) {
                                const urlImage = "/images/product/" + orgImage;
                                $("#avatarPreview").attr("src", urlImage);
                                $("#avatarPreview").css({ "display": "block" });
                            }

                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            });
                        });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Products</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Trang chủ</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/product">Sản phẩm</a></li>
                                    <li class="breadcrumb-item active">Cập nhập</li>
                                </ol>
                                <div class=" mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Cập nhập sản phẩm</h3>
                                            <hr />
                                            <form:form method="post" action="/admin/product/update" class="row"
                                                enctype="multipart/form-data" modelAttribute="newProduct">
                                                <c:set var="errorName">
                                                    <form:errors path="name" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorPrice">
                                                    <form:errors path="price" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorDetailDesc">
                                                    <form:errors path="detailDesc" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorShortDesc">
                                                    <form:errors path="shortDesc" cssClass="invalid-feedback" />
                                                </c:set>
                                                <c:set var="errorQuantity">
                                                    <form:errors path="quantity" cssClass="invalid-feedback" />
                                                </c:set>

                                                <div class="mb-3" style="display: none;">
                                                    <label class="form-label">Id:</label>
                                                    <form:input type="text" class="form-control" path="id" />
                                                </div>

                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Tên:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorName ? 'is-invalid' : ''}"
                                                        path="name" />
                                                    ${errorName}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Price:</label>
                                                    <form:input type="number"
                                                        class="form-control ${not empty errorPrice ? 'is-invalid' : ''}"
                                                        path="price" />
                                                    ${errorPrice}
                                                </div>
                                                <div class="mb-3 col-12">
                                                    <label class="form-label">Giới thiệu chi tiết:</label>
                                                    <form:textarea type="text"
                                                        class="form-control ${not empty errorDetailDesc ? 'is-invalid' : ''}"
                                                        path="detailDesc" />
                                                    ${errorDetailDesc}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Mô tả ngắn:</label>
                                                    <form:input type="text"
                                                        class="form-control ${not empty errorShortDesc ? 'is-invalid' : ''}"
                                                        path="shortDesc" />
                                                    ${errorShortDesc}
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Số lượng:</label>
                                                    <form:input type="number"
                                                        class="form-control ${not empty errorQuantity ? 'is-invalid' : ''}"
                                                        path="quantity" />
                                                    ${errorQuantity}
                                                </div>

                                               
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Nơi cung cấp:</label>
                                                    <select id="factory" name="factory" class="form-select">
                                                        <option value="">Select Factory</option>
                                                        <c:forEach var="factory" items="${factories}">
                                                            <option value="${factory.id}" <c:if test="${factory.id == newProduct.factory.id}">selected</c:if>>
                                                                ${factory.name}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Mục đích:</label>
                                                    <select id="target" name="target" class="form-select">
                                                        <option value="">Select Target</option>
                                                        <c:forEach var="target" items="${targets}">
                                                            <option value="${target.id}" <c:if test="${target.id == newProduct.target.id}">selected</c:if>>
                                                                ${target.name}
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="files" class="form-label">Ảnh:</label>
                                                    
                                                    <input class="form-control" type="file" id="avatarFile" accept=".png, .jpg, .jpeg" name="files" multiple />

                                                </div>
                                                
                                                <div class="col-12 mb-3">
                                                    <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                        id="avatarPreview" />
                                                </div>
                                                <!-- <div class="mb-3 col-12 col-md-6"></div>
                                                    <label for="category" >Category</label>
                                                    <select class="col-12 mb-3" id="category" name="categoryId">
                                                        <option value="">Select Category</option>
                                                        <c:forEach var="category" items="${categories}">
                                                            <option value="${category.id}">${category.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div> -->
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label for="category">Danh mục</label>
                                                    <select id="category" name="categoryId">
                                                        <option value="">Chọn Danh mục</option>
                                                        <c:forEach var="category" items="${categories}">
                                                            <option value="${category.id}">${category.name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-12 mb-5">
                                                    <button type="submit" class="btn btn-warning" >Cập nhập</button>
                                                </div>
                                            </form:form>

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