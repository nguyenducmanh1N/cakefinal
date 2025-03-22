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
                <title>Update Product</title>
                <link href="/css/styles.css" rel="stylesheet" />

                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                
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
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/voucher">Voucher</a></li>
                                    <li class="breadcrumb-item active">Update</li>
                                </ol>
                                <div class=" mt-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12 mx-auto">
                                            <h3>Update a voucher </h3>
                                            <hr />
                                            <form:form method="post" action="/admin/voucher/update" class="row"
                                                enctype="multipart/form-data" modelAttribute="newVoucher">
                                                <div class="mb-3" style="display: none;">
                                                    <label class="form-label">Id:</label>
                                                    <form:input type="text" class="form-control" path="id" />
                                                </div>
                                            
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Name:</label>
                                                    <form:input type="text" class="form-control ${not empty errorName ? 'is-invalid' : ''}" path="name" />
                                                    <form:errors path="name" cssClass="invalid-feedback" />
                                                </div>

                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Code:</label>
                                                    <form:input type="text" class="form-control ${not empty errorCode ? 'is-invalid' : ''}" path="code" />
                                                    <form:errors path="code" cssClass="invalid-feedback" />
                                                </div>
                                                
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Discount Value:</label>
                                                    <form:input type="number" class="form-control ${not empty errorDiscountValue ? 'is-invalid' : ''}"
                                                        path="discountValue" />
                                                    <form:errors path="discountValue" cssClass="invalid-feedback" />
                                                </div>
                                                
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Start Date:</label>
                                                    <form:input type="date" class="form-control" path="startDate" />
                                                </div>
                                                
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">End Date:</label>
                                                    <form:input type="date" class="form-control" path="endDate" />
                                                </div>
                                                
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Quantity:</label>
                                                    <form:input type="number" class="form-control ${not empty errorQuantity ? 'is-invalid' : ''}" path="quantity" />
                                                    <form:errors path="quantity" cssClass="invalid-feedback" />
                                                </div>
                                        
                                                <div class="mb-3 col-12 col-md-6">
                                                    <label class="form-label">Minimum:</label>
                                                    <form:input type="number" class="form-control ${not empty errorMiniMum ? 'is-invalid' : ''}" path="minimum" />
                                                    <form:errors path="minimum" cssClass="invalid-feedback" />
                                                </div>
                                                <div class="col-12 mb-5">
                                                    <button type="submit" class="btn btn-warning">Update</button>
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