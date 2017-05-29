angular.module('angApp')
        .controller('profileCtrl', function ($scope, $http, $location, UserService, AuthService) {
            editData = {};
            $scope.updated;
            $scope.set = function () {
                if (!(AuthService.get('auth'))) {
                    $location.path('/login');
                }
                if ((AuthService.get('auth'))) {
                    var getData = UserService.get();
                    getData.then(function (response) {
                        $scope.name = response.data.name;
                        $scope.email = response.data.email;
                    });
                }
            }
            $scope.edit = function () {
                if ($scope.editForm.$valid) {
                    editData.name = $scope.name;
                    editData.name = $scope.name;
                    editData.email = $scope.email;
                    var saveData = UserService.save(editData);
                    saveData.then(function () {
                        $scope.set();
                        $scope.updated = "updated";
                    });
                }
            }
            $scope.set();
        });