local Webpage = {}

Webpage.home = [[

<!DOCTYPE html>
<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <style>

body {
  background-color: white;
  font-family: 'Fira Sans', sans-serif;
  text-align: center;
  font-size: 25px;
}

h1 {
  font-size: 60px;
}
h2 {
  font-size: 40px;
  color: #cc0000;
}
p {
  font-size: 40px
}

.container {
  margin: 50px auto 50px auto;
}
.new-patient {
  line-height: .1;
  width: 500px;
  height: 300px;
  padding: 10px;
  margin: 50px;
  font-size: 64px;
  font-weight: 700;
  background-color: white;
  border: 8px solid #6aa84f;
  border-radius: 45px;
  cursor: pointer;
  color: #6aa84f;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.new-patient:hover {
  background-color: #6aa84f;
  color: white;
}

.current-patients {
  line-height: .1;
  width: 500px;
  height: 300px;
  padding: 10px;
  margin: 50px;
  font-size: 64px;
  font-weight: 700;
  background-color: white;
  border: 8px solid #ffd966;
  border-radius: 45px;
  cursor: pointer;
  color: #ffd966;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.current-patients:hover {
  background-color: #ffd966;
  color: white;
}

.enterData {
  margin-top: 250px;
}

.inputNames {
  margin: 10px;
  padding: 15px;
  width: 350px;
  font-size: 46px;
  background-color: white;
  border: 3px solid;
  border-radius: 25px;
}

.nextButton {
  margin: 10px;
  font-size: 50px;
  background-color: white;
  border: none;
  cursor: pointer;
}

.status-button {
  padding: 10px;
  margin: 15px;
  width: 100px;
  height: 100px;
  font-size: 70px;
  border: none;
  border-radius: 15px;
  cursor: pointer;
  color: white;
}
.enter-button {
  background-color: white;
  color: black;
  padding: 10px;
  margin: 15px;
  width: 100px;
  height: 100px;
  font-size: 70px;
  border: none;
  border-radius: 15px;
  cursor: pointer;
  margin-left: 0px;
}
.green-button {
  background-color: #93c47d;
}
.yellow-button {
  background-color: #ffd966;
}
.orange-button {
  background-color: #f6b26b;
}
.pink-button {
  background-color: #e06666;
}
.red-button {
  background-color: #cc4125;
}
.patient-data {
  margin: 50px;
  text-align: left;
}
.patientData {
  margin: 50px;
  text-align: left;
}
table, th, td {
    border: 1px solid grey;
}
table {
    border-spacing: 0px;
}
th, td {
    padding: 20\px;
}

h1 {
  font-size: 60px;
}

  </style>

  <script>

var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope) {
  $scope.homeToEnter = function() {
    $scope.nextPage = {
      "display": "none"
    }
  }
});

  </script>

  </head>
  <body>

<div ng-app="myApp" ng-controller="myCtrl" class="container">

  <div class="home" ng-style="nextPage">
    <button ng-click="homeToEnter()" class="new-patient" type="button"><p>New</p><i class="fa fa-plus" aria-hidden="true"></i></button>
    <button ng-click="homeToEnter()" class="current-patients" type="button"><p>Current</p><i class="fa fa-bed" aria-hidden="true"></i></button>
  </div>

  <div class="enterData">
    <input class="inputNames" type="text" placeholder="First Name"/><input class="inputNames" type="text" placeholder="Last Name" /><button class="nextButton"><i class="fa fa-arrow-right" aria-hidden="true"></i></button>
  </div>

  <div class="patientInfo">
    <div class="patient-data">
      <h1>John Doe</h1>
      <h2>Returning Patient</h2>
      <p>Age:</p>
      <p>Gender:</p>
      <p>Condition:</p>
      <p>Medical History:</p>
    </div>
    <div class="status">
      <button class="green-button status-button" type="text">1</button>
      <button class="yellow-button status-button" type="text">2</button>
      <button class="orange-button status-button" type="text">3</button>
      <button class="pink-button status-button" type="text">4</button>
      <button class="red-button status-button" type="text">5</button>
      <button class="enter-button " type="text"><i class="fa fa-arrow-right" aria-hidden="true"></i></button>
    </div>
  </div>
  <div class="patientData">
    <h1>Patient Status</h1>
    <table style="width:100%">
      <tr>
        <th>Name</th>
        <th>Bed Number</th>
        <th>Condition</th>
      </tr>
      <tr>
        <td>Jill</td>
        <td>Smith</td>
        <td>50</td>
      </tr>
      <tr>
        <td>Eve</td>
        <td>Jackson</td>
        <td>94</td>
      </tr>
    </table>
  </div>
</div>


  </body>
</html>

]]

return Webpage
