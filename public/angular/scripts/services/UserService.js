angular.module('angApp')
        .factory('UserService', function ($http, $window, AuthService, $location) {
            return {
                register: function (credentials) {
                    var reg = $http({
                        method: 'POST',
                        url: '/register',
                        data: credentials
                    }).then(function successCallback(response) {
                        if (response.data.registered == true) {
                            AuthService.set('auth', true);
                            return response;
                        }
                    }, function errorCallback(response) {
                        return response;
                    });
                    return reg;
                },
                get: function (credentials) {
                    var getData = $http({
                        method: 'GET',
                        url: '/show',
                    }).then(function successCallback(response) {
                        return response;
                    }, function errorCallback(response) {});
                    return getData;
                },
                save: function (credentials) {
                    var saveData = $http({
                        method: 'POST',
                        url: '/edit',
                        data: credentials
                    }).then(function successCallback(response) {
                    }, function errorCallback(response) {});
                    return saveData;
                }
            };

        });
