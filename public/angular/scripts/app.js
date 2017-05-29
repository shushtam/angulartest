var app = angular.module('angApp', [
    'ngRoute',
    'match',
    'ngDraggable'

])
        .config(function ($routeProvider) {
            $routeProvider
                    .when('/todo', {
                        templateUrl: '/angular/views/test.html',

                    })
                    .when('/about', {
                        templateUrl: '/angular/views/about.html',
                    })
                    .when('/register', {
                        templateUrl: '/angular/views/register.html',
                    })
                    .when('/login', {
                        templateUrl: '/angular/views/login.html',
                    })
                    .when('/profile', {
                        templateUrl: '/angular/views/profile.html',
                    })
                    .when('/task', {
                        templateUrl: '/angular/views/task.html',
                    })
                    .when('/sort', {
                        templateUrl: '/angular/views/sort.html',
                    })
                    .otherwise({
                        redirectTo: '/'
                    });
        });