angular.module('angApp')
        .controller('mainCtrl', function ($scope, $location, AuthService) {
            function checkForButtons() {
                if ((AuthService.get('auth'))) {
                    $("button").css("display", "inline");
                }
                if (!(AuthService.get('auth'))) {
                    $("button").css("display", "none");
                }
            }
            $scope.logout = function () {
                AuthService.unset('auth');
                $("button").css("display", "none");
                $location.path('/about');
            }
            $scope.check = function () {
                if (AuthService.get('auth')) {
                    $location.path('/profile');
                }
                if (!(AuthService.get('auth'))) {
                    $location.path('/login');
                }

            }
            checkForButtons();
        });