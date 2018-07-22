<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- Library CSS -->
<link href="../../plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>
<%@include file="../bundles/bundle_css.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<form id="dummy" method="POST" name="test"  >
<div class="wrapper">
<%@include file="../bundles/content_header.jsp" %>
<!-- Left side column. contains the logo and sidebar -->
<%@include file="../bundles/sidebar.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<section class="content-header">
<h1>
Master Buku
</h1>
<ol class="breadcrumb">
<li><i class="fa fa-user"></i> Master Buku</li>
</ol>
</section>
<!-- Main content -->
<section class="content">
<div class="row">
<div class="col-xs-12">
<div class="box">
<!-- /.box-header -->
<div class="box-body">
<div class="row">
<div class="col-md-12">
<div class="nav-tabs-custom">
<ul class="nav nav-tabs">
<li class="active"><a href="#tab_1" data-toggle="tab">List Buku</a></li>
<li ><a href="#tab_2" data-toggle="tab">Form Buku</a></li>
<li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
</ul>
<div class="tab-content">
<div class="tab-pane active" id="tab_1">
<div class='box-header'>
<h3 class='box-title'>Overview<small> </small></h3>

</div><!-- /.box-header -->
<div class='box-body pad'>
<div class="panel panel-default">
    
 <table id="tab" class="table table-striped table-bordered table-hover"  cellspacing="0"
      width="100%" >
<thead color="#0000">
<tr>
<td vAlign="top" width="0" height="0"  ><b>ID    </b></td>
<td vAlign="top" width="107" height="19"><b>reference      </b></td>
<td vAlign="top" width="107" height="19"><b>Asset        </b></td>    
<td vAlign="top" width="107" height="19"><b>lokasi    </b></td>
</tr>
</thead>
<tfoot>
<tr>
<th   vAlign="top" width="107" height="19"></th>
<th vAlign="top" width="107" height="19"></th>
<th vAlign="top" width="107" height="19"></th>    
<th vAlign="top" width="107" height="19"></th>
</tr>
</tfoot>
</table>
<input   type=hidden id="a" name="a" value=""  />
<input type=hidden id="b" name="b" value=""/>
<input type=hidden id="c" name="c" value=""/>
<input type=hidden id="d" name="d" value=""/>
</div>
</div>
</div><!-- /.tab-pane DATAX-->
<div class="tab-pane" id="tab_2"> 
<div class='box-header'>
<h3 class='box-title'> <small> </small></h3>
<button class="btn btn-danger btn-md"  type="submit" value="submit" name="B1" onClick="return adjust(this);">  
Submit
</button>   
<button class="btn btn-vimeo btn-md"  type="submit" value="submit" name="B2" onClick="return adjust(this);">  
Edit
</button>
<button class="btn btn-vimeo btn-md"  type="submit" value="submit" name="B3" onClick="return adjust(this);">  
Delete
</button>
</div>  
<div  class='box-body pad' >  

<div class="col-md-10">     
    <div class="col-md-4" >   
<div class="form-group" >
<label>ID </label>
<div class="input-group">
<div class="input-group-addon">
<i class="fa fa-id-card"></i>
</div>
<input  type="text" class="form-control" id="id" name="id" value="" autocomplete="false" readonly>
</div>
</div>
</div>     
 
<div class="col-md-4">     
<div class="form-group">
<label>Kode buku<span class="required">*</span></label>
<div class="input-group">
<div class="input-group-addon">
<i class="fa fa-id-card"></i>
</div>
<input width="1px" type="text" class="form-control" id="kode" name="kode" required="required" value="BK-" required>
</div>
</div> 
</div> 
 
<div class="col-md-4">  
<div class="form-group">
<label>judul</label>
<div class="input-group">
<div class="input-group-addon">
<i class="fa fa-id-card"></i>
</div>
<input type="text" class="form-control" id="judul" name="judul" value="" autocomplete="false">
</div>
</div>
</div>  
 
    <div class="col-md-4">     
<div class="form-group">
<label>pengarang</label>
<div class="input-group">
<div class="input-group-addon">
<i class="fa fa-id-card"></i>
</div>
<input type="text" class="form-control" id="pengarang" name="pengarang" required="required" value="" required>
</div>
</div>  
</div>  
</div>           
    </div>     
      
</div> 
</div>
</div><!-- /.tab-content -->
</div><!-- nav-tabs-custom -->
</div><!-- /.col -->
</div> 

    
</div> 
</div> 


</div>
</div>
</div>
</div>
</div>
</div>
</div>

<%@include file="../bundles/bundle_script.jsp" %>
</body>

<script language="javascript">
function adjust(obj)
{
if (obj.name === "B1")
{
document.test.action = "../post";
return true;
}
if (obj.name === "B2")
{
document.test.action = "../edit";
return true;
}
if (obj.name === "B3")
{
document.test.action = "../Delete";
return true;
}
}
</script>


<script>
(function() 
{
if (window.addEventListener)
{
window.addEventListener('load', run, false);
} 
else if (window.attachEvent)
{
window.attachEvent('onload', run);
}
function run() 
{
var t = document.getElementById('tab');
t.onclick = function (event) {
event = event || window.event; //IE8
var target = event.target || event.srcElement;
while (target && target.nodeName !== 'TR') { // find TR
target = target.parentElement;
}
var cells = target.cells; //cell collection - https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement
if (!cells.length || target.parentNode.nodeName === 'THEAD') {
return;
}
var f1 = document.getElementById('a');
var f2 = document.getElementById('b');
var f3 = document.getElementById('c');
var f4 = document.getElementById('d');


f1.value = cells[0].innerHTML;
f2.value = cells[1].innerHTML;
f3.value = cells[2].innerHTML;
f4.value = cells[3].innerHTML;


$("#id").val(document.getElementById('a').value);
$("#kode").val(document.getElementById('b').value);
$("#judul").val(document.getElementById ('c').value);
$("#pengarang").val(document.getElementById ('d').value);
};


}
})
();
</script>

<script type="text/javascript">
var form = $('#dummy');
form.submit(function () {

$.ajax({
type: form.attr('method'),
url: form.attr('action'),
data: form.serialize(),
success: function (data)
{
var result = data;
$('#content').html(result);
alert('save');
window.location.reload(false);
}
});
return false;
}); 
</script>


<script> 
$(document).ready( function () 
{
$('#tab').DataTable({
"processing" : true, 
"ajax" : 
 {"url" : "../getAll",dataSrc: ''},
 
"columns":
[
{"data":"id"},
{"data": "kode"},
{"data": "judul"},
{"data": "pengarang"}
]
});
});
</script>

</html>
