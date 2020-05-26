<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- css -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!-- css end -->
<!-- js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<!-- js end -->
<meta charset="ISO-8859-1">
<title>CORONA INFORMATION</title>
<link rel="stylesheet" href="style.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
<script src="myscript.js"></script>
</head>
<body ng-app="MyApp" ng-controller="MyCtrl">
<div class="container">
<div class="jumbotron py-3">
<h1 style='color:red;'><b><Center>{{title}}</Center></b></h1>
<p class="pt-3"><h4>To prevent the spread of COVID-19:</h4><br>
<ul>
<h5><li>Clean your hands often. Use soap and water, or an alcohol-based hand rub.</li>
<li>Maintain a safe distance from anyone who is coughing or sneezing.</li>
<li>Don't touch your eyes, nose or mouth.</li>
<li>Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.</li>
<li>Stay home if you feel unwell.</li>
<li>If you have a fever, cough and difficulty breathing, seek medical attention. Call in advance.</li>
<li>Follow the directions of your local health authority</li></h5>
</ul>
<!--all data-->
<center><h2>WORLDWIDE CASES</h2></center>
<div class="row text-center">

<div class="col-md-4">
<div class="card bg-warning text-white">
<div class="card-body">
<h3>Confirmed Cases</h3>
<h3>{{all_data.confirmed.value}}</h3>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card bg-success text-white">
<div class="card-body">
<h3>Recovered Cases</h3>
<h3>{{all_data.recovered.value}}</h3></div>
</div>
</div>

<div class="col-md-4 ">
<div class="card bg-danger text-white" >
<div class="card-body">
<h3>Death Cases</h3>
<h3>{{all_data.deaths.value}}</h3></div>
</div>
</div>
</div>


<input type="text" class="form-control mt-4 mb-4" placeholder="ENTER THE NAME OF THE COUNTRY eg:India" ng-model="c" ng-change="get_c()">
<div class="container-fluid" ng-if="c_data">
<center><h3>{{c}} CASES</h3></center>
<div class="row text-center" ng-if="c_data">
<div class="col-md-4">
<div class="card bg-warning text-white">
<div class="card-body">
<h3>Confirmed Cases</h3>
<h3>{{c_data.confirmed.value}}</h3>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card bg-success text-white">
<div class="card-body">
<h3>Recovered Cases</h3>
<h3>{{c_data.recovered.value}}</h3></div>
</div>
</div>

<div class="col-md-4 ">
<div class="card bg-danger text-white" >
<div class="card-body">
<h3>Death Cases</h3>
<h3>{{c_data.deaths.value}}</h3></div>
</div>
</div>
</div>
</div>

<input type="text" class="form-control mt-4 mb-4" placeholder="ENTER THE NAME OF THE STATE IN INDIA eg:Jharkhand" ng-model="st" ng-change="get_state()">

<div class="container-fluid" ng-if="st">
<center><h3>{{st}} CASES</h3></center>
<div class="row text-center" ng-if="st">
<div class="col-md-3">
<div class="card bg-warning text-white">
<div class="card-body">
<h3>Confirmed </h3>
<h3>{{s_data.data[0].confirmed}}</h3>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card bg-success text-white">
<div class="card-body">
<h3>Recovered </h3>
<h3>{{s_data.data[0].cured}}</h3></div>
</div>
</div>

<div class="col-md-3 ">
<div class="card bg-danger text-white" >
<div class="card-body">
<h3>Death </h3>
<h3>{{s_data.data[0].death}}</h3></div>
</div>
</div>

<div class="col-md-3 ">
<div class="card bg-danger text-white" >
<div class="card-body">
<h3>Total </h3>
<h3>{{s_data.data[0].total}}</h3></div>
</div>
</div>
&nbsp;

</div>


</div>

</div>
<!-- Footer -->
<footer class="page-footer font-small teal pt-4">

 
   

  <!-- Footer Text -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">@ 2020 Copyright:
    <a href="https://mdbootstrap.com/"> AbhishekPandey(Java Developer)</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</div>
<!-- end of data -->

</body>
</html>