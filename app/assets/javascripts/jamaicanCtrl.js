(function() {
  "use strict";

  angular.module("app").controller("jamaicanCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v2/jamaicans.json').then(function(response){
        $scope.jamaicans = response.data;
      });
    }

    $scope.addJamaican = function(firstName, lastName, position) {
      if (firstName && lastName && position) {
        var jamaican = {
          first_name: firstName,
          last_name: lastName,
          position: position,
        };
      }

      $http.post('api/v2/jamaicans.json', jamaican).then(function(response){
        $scope.jamaicans.push(jamaican);
      });

      $scope.firstName = null;
      $scope.lastName = null;
      $scope.position = null;
      
    }

    $scope.toggleOrder = function(attribute) {
      if(attribute != $scope.orderAttribute){
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }
      $scope.orderAttribute = attribute;
    }






  });

}());