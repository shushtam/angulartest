angular.module('angApp')
        .controller('sortCtrl', function ($scope) {
            var employees = [
                {name: "aa", date: new Date(2020, 2, 23), gender: "male", salary: "25"},
                {name: "bb", date: new Date(2017, 8, 13), gender: "female", salary: "35"},
                {name: "cc", date: new Date(2016, 6, 3), gender: "female", salary: "15"},
                {name: "dd", date: new Date(2015, 4, 19), gender: "xx", salary: "20"}
            ];
            $scope.employees = employees;
            $scope.sortColumn = "name";
            $scope.reverseSort = false;
            $scope.sortData = function (column) {
                $scope.reverseSort = ($scope.sortColumn === column) ? !$scope.reverseSort : false;
                $scope.sortColumn = column;

            };
            $scope.getSortClass = function (column) {
                if ($scope.sortColumn === column) {
                    return $scope.reverseSort ? 'arrow-down' : 'arrow-up';
                }
                return '';
            };

        });
angular.module('angApp').filter("gender", function () {
    return function (gender) {
        switch (gender) {
            case 'male':
                return "MALE";
            case 'female':
                return "FEMALE";
            default :
                return "Unknown";
        }

    }
});