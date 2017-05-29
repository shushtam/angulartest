angular.module('angApp')
        .controller('loginCtrl', function ($scope, $http, $location, AuthService) {

            $scope.login = function () {
                if ($scope.loginForm.$valid) {
                    loginData = {};
                    loginData.email = $scope.email;
                    loginData.password = $scope.password;
                    var auth = AuthService.auth(loginData);
                    auth.then(function (response) {
                        if (response.data.id) {
                            AuthService.set('auth', true);
                            $("button").css("display", "inline");
                            $location.path('/profile');

                        } else {
                            alert('could not verify your login');
                        }

                    });
                }
            }
        });