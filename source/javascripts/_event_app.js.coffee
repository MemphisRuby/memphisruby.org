@eventApp = angular.module 'eventApp', []

@eventApp.controller 'eventCtrl', ($scope, $http, $sce)->
  $http.get('http://memphis-ruby-api.herokuapp.com/calendar.json?keyword=Memphis+Ruby')
    .then (res)->
      event = res.data.meetups[0]
      console.log(event)
      $scope.event  = event
      $scope.date   = moment(event.time).format('MMMM Do YYYY, h:mm a')
      $scope.description = $sce.trustAsHtml(event.description)
