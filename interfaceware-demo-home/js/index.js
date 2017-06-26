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
    $.getJSON('http://localhost:8000/demo?LastName=' + lastName + '&Format=json', function(data) {
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