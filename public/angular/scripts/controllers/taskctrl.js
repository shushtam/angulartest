angular.module('angApp')
        .controller('taskCtrl', function ($scope, $http) {
            var changeArr = [];
            $scope.errors = [];
            $http({
                method: 'GET',
                url: '/tasks',
            }).then(function successCallback(response) {
                $scope.tasks = response.data;
                $scope.onDragComplete = function (data, event) {
                }
                $("[data-task]").each(function () {
                    changeArr.push($(this).attr("data-task"));
                });
                $scope.onDropSuccess = function (data, event, target) {
                    changeArr = [];
                    if (target.priority < data.priority) {
                        $("[data-task='" + data.id + "']").parent("tr").insertBefore($("[data-target='" + target.id + "']"));
                    }
                    if (target.priority > data.priority) {
                        $("[data-task='" + data.id + "']").parent("tr").insertAfter($("[data-target='" + target.id + "']"));
                    }
                    $("[data-task]").each(function () {
                        changeArr.push($(this).attr("data-task"));
                    });

                    $http({
                        method: 'POST',
                        url: '/update',
                        data: {changeArr: changeArr}
                    }).then(function successCallback(response) {
                        $scope.tasks = response.data;
                    }, function errorCallback(response) {
                    });
                }
            }, function errorCallback(response) {
            });
            $scope.addTask = function () {
                if ($scope.newTaskForm.$valid) {
                    $http({
                        method: 'POST',
                        url: '/add',
                        data: {title: $scope.taskTitle}
                    }).then(function successCallback(response) {
                        $scope.tasks = response.data;

                    }, function errorCallback(response) {
                    });
                }
            }
            $scope.editTask = function (event) {
                var dataValue = $("[data-target=" + event + "] td[data-task] span").text();
                var element = $("[data-target=" + event + "] td[data-task]");
                //element.empty();
                element.find("span").hide();
                element.append("<input type='text'  name='changeId' ng-model='changeId' required />");
                element.find('input').focus().val(dataValue);
                element.parent().find("button").css("display", "block");
                element.parent().find("a").hide();
                //$("[data-target="+event+"] td[data-task]").append("<button type='button' click='changeTask()' class='btn btn-success'>Save</button>");


            }
            $scope.changeTask = function (event) {
                var title = $("[data-target=" + event + "] td[data-task]").find("input").val();
                /*    if (title == '')
                 {
                 $("[data-target=" + event + "] td[data-task]").append("<p style='color:red'>Please enter title</p>");
                 $("[data-target=" + event + "] td[data-task]").find('input').focus().val(title);
                 }*/
                $http({
                    method: 'POST',
                    url: '/change',
                    data: {id: event, title: title}
                }).then(function successCallback(response) {
                    $scope.tasks = response.data;

                }, function errorCallback(response) {
                    $scope.errors = response.data;
                    for (error in $scope.errors) {
                        $("[data-target=" + event + "] td[data-task]").append("<p style='color:red'>" + $scope.errors[error] + "</p>");

                    }
                    $("[data-target=" + event + "] td[data-task]").find('input').focus().val(title);
                });
            }


        });