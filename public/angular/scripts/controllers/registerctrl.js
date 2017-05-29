angular.module('angApp')
        .controller('registerCtrl', function ($scope, $http, $location, UserService, AuthService) {
            $scope.errors = [];
            registerData = {};
            $scope.register = function () {
                if ($scope.registerForm.$valid) {
                    registerData.name = $scope.name;
                    registerData.email = $scope.email;
                    registerData.password = $scope.password;
                    var reg = UserService.register(registerData);
                    reg.then(function (response) {
                        if (response.status == 200) {
                            $("button").css("display", "inline");
                            $location.path('/profile');
                        } else {
                            $scope.errors = response.data;
                        }
                    });
                }
            };
        });