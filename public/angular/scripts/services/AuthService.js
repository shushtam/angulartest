angular.module('angApp')
        .factory('AuthService', function ($http, $window) {
            var authData;
            return {
                auth: function (credentials) {
                    var authUser = $http({method: 'POST', url: 'login/auth', data: credentials});
                    return authUser;
                },
                get: function (key) {
                    return $window.localStorage.getItem(key);
                },
                set: function (key, val) {
                    return $window.localStorage.setItem(key, val);
                },
                unset: function (key) {
                    return $window.localStorage.removeItem(key);
                }
            }

        });
