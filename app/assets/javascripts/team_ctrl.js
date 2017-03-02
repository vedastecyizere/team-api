(function(){
  "use strict";

  angular.module("app").controller("teamCtrl", function($scope, $http){

    $scope.setup = function(){
      $http.get("/api/v1/teams.json").then(function(response){
        $scope.teams = response.data;
      });
    }

    $scope.addTeam = function(creature, name, state, sport){
      var team = {
        creature: creature,
        name: name,
        state: state,
        sport: sport
      }
      $http.get("/api/v1/teams.json").then(function(response){
          $scope.teams.push(response.data);
      });
    }


    window.$scope = $scope;
  });
})();