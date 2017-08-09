local Webpage = {}

Webpage.text = [[

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
  font-size: 32px;
}
h1 {
  font-size: 60px;
}
h2 {
  font-size: 40px;
  color: #cc0000;
}
p {
  font-size: 50px
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

.container {
  margin: 50px auto 50px auto;
}

.home{
  
}
.enterData {
  margin-top: 250px;
  display:none;
}
.patientInfo {
  display: none;
}
.patientData {
  margin: 50px;
  text-align: left;
  display: none;
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
  border: 8px solid #6d9eeb;
  border-radius: 45px;
  cursor: pointer;
  color: #6d9eeb;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.current-patients:hover {
  background-color: #6d9eeb;
  color: white;
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

  </style>

  <script>

var app = angular.module("myApp", []);
app.controller("myCtrl", function($scope, $timeout) {
  
  $scope.homeToPatientDataEntry = function() {   
    $scope.homePage = {
      "display": "none"
    }
    $scope.enterDataPage= {
      "display": "block"
    }
  }
  
  $scope.homeToCurrentPatients = function() {
    $scope.familiarPatient = null;
    $scope.homePage = {
      "display": "none"
    }
    $scope.currentPatientsPage = {
      "display": "block"
    }
  }
  
  $scope.backToHome = function() {
    $scope.firstName = null;
    $scope.lastName = null;
    $scope.familiarPatient = null;
    $scope.homePage = {
      "display": "block"
    }
    $scope.enterDataPage = {
      "display": "none"
    }
    $scope.patientInfoPage = {
      "display": "none"
    }
    $scope.currentPatientsPage = {
      "display": "none"
    }
  }
  
  $scope.patientInfoPageToDataEntry = function() {
    $scope.firstName = null;
    $scope.lastName = null;
    $scope.familiarPatient = null;
    $scope.patientInfoPage = {
      "display": "none"
    }
    $scope.enterDataPage = {
      "display": "block"
    }
  }
  
  var rankHold = 0;
  $scope.rankCondition = function(rank) {
    if(rank === 1){
    $scope.yellow = {
      "color": "white"
    }
    $scope.orange = {
      "color": "white"
    }
    $scope.pink = {
      "color": "white"
    }
    $scope.red = {
      "color": "white"
    }
       $scope.green = {
         "color": "black"
       }
    }
    else if(rank === 2){
    $scope.green = {
      "color": "white"
    }
    $scope.orange = {
      "color": "white"
    }
    $scope.pink = {
      "color": "white"
    }
    $scope.red = {
      "color": "white"
    }
      $scope.yellow = {
         "color": "black"
       }
    }
    else if(rank === 3){
      $scope.green = {
        "color": "white"
      }
      $scope.yellow = {
        "color": "white"
      }
      $scope.pink = {
        "color": "white"
      }
      $scope.red = {
        "color": "white"
      }
      $scope.orange = {
         "color": "black"
       }
    }
    else if(rank === 4){
      $scope.green = {
      "color": "white"
      }
      $scope.yellow = {
        "color": "white"
      }
      $scope.orange = {
        "color": "white"
      }
      $scope.red = {
        "color": "white"
      }
      $scope.pink = {
         "color": "black"
       }
    }
    else if(rank === 5){
      $scope.green = {
      "color": "white"
      }
      $scope.yellow = {
        "color": "white"
      }
      $scope.orange = {
        "color": "white"
      }
      $scope.pink = {
        "color": "white"
      }
      $scope.red = {
         "color": "black"
       }
    }
    rankHold = rank;
  }
  
  $scope.patients = [ ["Paul", "Sick", 3] ];
  function addPatient() {
    if (!$scope.addCondition) {return;}
    if ($scope.patients.indexOf($scope.addCondition) == -1) {
      var name = $scope.firstName;
      var condition = $scope.addCondition;
      var rank = rankHold;
      $scope.patients.push([name,condition,rank]);
      $scope.addCondition = "";
    }
  }
  $scope.removeItem = function(x) {
    $scope.patients.splice(x,1);
  }
  
  $scope.patientInfoPageToCurrentPatients = function() {
    $scope.patientFirstName = null;
    $scope.patientLastName = null;
    $scope.patientGender = null;
    $scope.patientId = null;
    $scope.green = {
      "color": "white"
    }
    $scope.yellow = {
      "color": "white"
    }
    $scope.orange = {
      "color": "white"
    }
    $scope.pink = {
      "color": "white"
    }
    $scope.red = {
      "color": "white"
    }
    addPatient();
    $scope.patientInfoPage = {
      "display": "none"
    }
    $scope.currentPatientsPage = {
      "display": "block"
    }
  }
    
  function getPatientData(firstName,lastName) {
    var patientData = [];
    $scope.patientFirstName = $scope.firstName;
    $scope.patientLastName = $scope.lastName;
    $scope.familiarPatient = "New Patient";
    $scope.patientGender = "N/A";
    $scope.patientId = "N/A";
    $.getJSON('http://localhost:8000/demonstration?LastName=' + lastName + '&Format=json', function(data) {
      for(var i = 0; i < data.length; i++){
        if(data[i].FirstName === $scope.firstName){
          var newObject = data[i];
          patientData.push(newObject.FirstName);
          patientData.push(newObject.Gender);
          patientData.push(newObject.LastName);
          patientData.push(newObject.Id); 
          $timeout(function() {
            $scope.familiarPatient = "Returning Patient";
            $scope.patientFirstName = patientData[0];
            $scope.patientLastName = patientData[2];
            $scope.patientGender = patientData[1];
            $scope.patientId = patientData[3]; 
          }, 250);
          break;
        }
      }
    })    
  }

  $scope.searchPatientData = function() {
    $scope.addCondition = null;
    $scope.enterDataPage = {
      "display": "none"
    }
    $scope.patientInfoPage = {
      "display": "block"
    }

    getPatientData($scope.firstName,$scope.lastName);
    
  }
  
});

  </script>

  </head>
  <body>

<div ng-app="myApp" ng-controller="myCtrl" class="container">
  
  <div class="home" ng-style="homePage">
    <h1>Home Page</h1>
    <button ng-click="homeToPatientDataEntry()" class="new-patient" type="button"><p>New Patient</p><i class="fa fa-plus" aria-hidden="true"></i></button>
    <button ng-click="homeToCurrentPatients()" class="current-patients" type="button"><p>Current Beds</p><i class="fa fa-bed" aria-hidden="true"></i></button>
  </div>
  
  <div class="enterData" ng-style="enterDataPage">
    <h1>Search Database</h1>
    <button ng-click="backToHome()" class="nextButton"><i class="fa fa-arrow-left" aria-hidden="true"></i></button><input class="inputNames" type="text" placeholder="First Name" ng-model="firstName" /><input class="inputNames" type="text" placeholder="Last Name" ng-model="lastName" /><button ng-click="searchPatientData()" class="nextButton"><i class="fa fa-arrow-right" aria-hidden="true"></i></button>
  </div>
  
  <div class="patientInfo" ng-style="patientInfoPage">
    <div class="patient-data">
      <h1 id="main">{{ patientFirstName }} {{patientLastName}}</h1>
      <h2>{{ familiarPatient }}</h2>
      <p>Gender: {{patientGender}}</p>
      <p>Patient Id: {{patientId}}</p>
      <input class="inputNames" type="text" placeholder="Condition" ng-model="addCondition" />
    </div>
    <div class="status">
      <button ng-click="patientInfoPageToDataEntry()" class="enter-button " type="text"><i class="fa fa-arrow-left" aria-hidden="true"></i></button>
      <button ng-click="rankCondition(1)" ng-style="green" ng-style="blank" class="green-button status-button" type="text">1</button>
      <button ng-click="rankCondition(2)" ng-style="yellow" class="yellow-button status-button" type="text">2</button>
      <button ng-click="rankCondition(3)" ng-style="orange" class="orange-button status-button" type="text">3</button>
      <button ng-click="rankCondition(4)" ng-style="pink" class="pink-button status-button" type="text">4</button>
      <button ng-click="rankCondition(5)" ng-style="red" class="red-button status-button" type="text">5</button>
      <button ng-click="patientInfoPageToCurrentPatients()" ng-click=" addPatient()" class="enter-button " type="text"><i class="fa fa-arrow-right" aria-hidden="true"></i></button>
    </div>  
  </div>
  
  <div class="patientData" ng-style="currentPatientsPage">
    <h1>Patient Status</h1>
    <table style="width:100%">
      <tr>
        <th>Name</th>
        <th>Condition</th>
        <th>Rank</th>
        <th></th>
      </tr>
      <tr ng-repeat="x in patients">
        <td>{{x[0]}}</td>
        <td>{{x[1]}}</td>
        <td>{{x[2]}}</td>
        <td ng-click="removeItem($index)"><i class="fa fa-times" aria-hidden="true"></i></td>
      </tr>

    </table>  
    <button ng-click="backToHome()" class="enter-button " type="text"><i class="fa fa-home" aria-hidden="true"></i></button>
  </div>
  
</div>


  </body>
</html>


]]

return Webpage

