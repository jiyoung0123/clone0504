<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let marker_detail={
        init:function(){
            $('#register_btn').click(function(){
                marker_detail.send();
            });
            $('#delete_btn').click(function(){
                var c = confirm("삭제하시겠습니까?");
                if(c==true){
                    location.href="/marker/deleteimpl?id=${gmarker.id}";
                }
            });
        },
        send:function(){
            $('#register_form').attr({
                method:'post',
                action:'/marker/updateimpl',
                //type 에 대한 것도 전송을 하겠다는것. enctype 셋팅
                enctype:'multipart/form-data'
            });
            $('#register_form').submit();
        }
    };

    $(function(){
        marker_detail.init();
    })
</script>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Marker Detail</h1>

    <!-- DataForm Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Marker detail</h6>
        </div>
        <div class="card-body">
            <div id="container">
                <form id="register_form" class="form-horizontal well">

                    <input type="hidden"  name="id" value="${gmarker.id}">
                    <input type="hidden"  name="img" value="${gmarker.img}">

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="title">Title:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="title" value="${gmarker.title}" name="title">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="target">Target:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" value="${gmarker.target}" id="target" name="target">
                        </div>

                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lat">Lat:</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="lat" value="${gmarker.lat}" name="lat">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lng">Lng:</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" id="lng" value="${gmarker.lng}" name="lng">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="imgfile">Img:</label>
                        <div class="col-sm-10">
                            <input type="file" class="form-control" id="imgfile" value="${gmarker.img}" name="imgfile">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="loc">Loc:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="loc" value="${gmarker.loc}" name="loc">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button id="register_btn" type="button" class="btn btn-info">Update</button>
                            <button id="delete_btn" type="button" class="btn btn-info">Delete</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>