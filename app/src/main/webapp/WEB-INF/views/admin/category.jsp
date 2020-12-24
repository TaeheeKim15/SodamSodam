<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<title>Oculux | Home</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<!-- MAIN CSS -->
<link href="/css/admin_main.css" rel="stylesheet" type="text/css">

</head>
<body class="theme-cyan font-montserrat light_version theme-orange">
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
        <div class="bar4"></div>
        <div class="bar5"></div>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>
<div id="wrapper">
    
    <jsp:include page="../include/admin_nav.jsp"></jsp:include>
    
    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <div class="row clearfix">
                    <div class="col-md-6 col-sm-12">
                        <h1>카테고리 관리</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">소담소담</a></li>
                            <li class="breadcrumb-item active" aria-current="page">카테고리</li>
                            </ol>
                        </nav>
                    </div>            
                    <div class="col-md-6 col-sm-12 text-right hidden-xs">
                        <a href="javascript:void(0);" class="btn btn-sm btn-primary js-sweetalert" data-type="edit-category" title="">카테고리 추가</a>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-hover js-basic-example dataTable table-custom spacing5">
                                    <thead>
                                        <tr>
                                            <th class="col-9">카테고리명</th>
                                            <th class="col-3"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="item" items="${list}">
                                    	<tr>
                                            <td>${item.ctname}</td>
                                            <td>
                                            	<button type="button" class="btn btn-success mb-2 js-sweetalert" title="Save" value="${item.ctno}" data-name="${item.ctname}" data-type="update"><span class="sr-only">Save</span> <i class="fa fa-edit"></i></button>
                                                <button type="button" class="btn btn-danger mb-2 js-sweetalert" title="Delete" value="${item.ctno}" data-type="delete"><span class="sr-only">Delete</span> <i class="fa fa-trash-o"></i></button>
                                            </td>
                                        </tr>
                                    	</c:forEach>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>

            

        </div>
    </div>    
</div>
<!-- Javascript -->
<script type="text/javascript" src="/js/admin.js" charset="utf-8"></script>
</body>
</html>
