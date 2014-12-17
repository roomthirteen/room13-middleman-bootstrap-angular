angular.module("app",['ui.router']).config ($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider.otherwise("/home")

  $stateProvider.state "home",
    url: "/home"
    templateUrl: 'components/app/test.html'
    controller: () ->
      console.log "home controller"