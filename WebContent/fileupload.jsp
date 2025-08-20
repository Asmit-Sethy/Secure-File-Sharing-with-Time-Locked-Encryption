<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js">

</script>
<style>
form {
  margin-top: 100px;
}

input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	padding: 0;
	font-size: 20px;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
}

</style>
</head>
<body>
  <form action="FileadddServlet" method="post" enctype=multipart/form-data>
    <div class="col-md-4 col-md-offset-4">
      <div class="input-group">
          <span class="input-group-btn">
            <div class="btn btn-default browse-button">
                <span class="browse-button-text">
                <i class="fa fa-folder-open"></i> Browse</span>
                <input type="file" accept=".pdf" name="attachment"/>
            </div>
            <button type="button" class="btn btn-default clear-button" style="display:none;">
              <span class="fa fa-times"></span> Clear
            </button>
          </span>
          <input type="text" class="form-control filename" disabled="disabled" placeholder="Please click on browse button and select a pdf file">
          <span class="input-group-btn">
            <button class="btn btn-primary upload-button" type="button">
                <i class="fa fa-upload"></i>
                Upload
              </button>
          </span>
        </div>
    </div>
</form>
<script>
//Show filename, show clear button and change browse 
//button text when a valid extension file is selected
$(".browse-button input:file").change(function () {
  $("input[name='attachment']").each(function() {
    var fileName = $(this).val().split('/').pop().split('\\').pop();
    $(".filename").val(fileName);
    $(".browse-button-text").html('<i class="fa fa-refresh"></i> Change');
    $(".clear-button").show();
  });
});

$('.upload-button').click(function() {
  // Trigger form submission when upload button is clicked
  $('form').submit();
});

$('.clear-button').click(function() {
  $('.filename').val("");
  $('.clear-button').hide();
  $('.browse-button input:file').val("");
  $(".browse-button-text").html('<i class="fa fa-folder-open"></i> Browse');
});
 
</script>
</body>
</html>