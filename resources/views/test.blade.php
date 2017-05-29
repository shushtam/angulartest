<head>
    <meta name="csrf-token" content="{{ csrf_token()}}">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">WebSiteName</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#!/todo">todo</a></li>
                        <li> <a href="#!/about">About</a></li>
                        <li> <a href="#!/register">Register</a></li>
                        <li> <a href="#!/login">Login</a></li>
                         <li> <a href="#!/task">Task</a></li>
                        <li><a href="#!/sort">sort</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div ng-app="angApp" ng-controller="mainCtrl">
                    <button style="display:none" ng-click="logout()">Logout</button>
                    <button style="display:none" ng-click="check()">Profile</button>
                    <div class="ng-view"> </div>
                </div></div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <script src="bower_components/angular/angular.js"></script>
    <script src="bower_components/angular-route/angular-route.js"></script>
    <script src="bower_components/angular-match/angular-match.js"></script>
    <script src="bower_components/ngDraggable/ngDraggable.js"></script>
    <script src="/angular/scripts/app.js"></script>
    <script src="/angular/scripts/controllers/mainctrl.js"></script>
    <script src="/angular/scripts/controllers/registerctrl.js"></script>
    <script src="/angular/scripts/controllers/loginctrl.js"></script>
    <script src="/angular/scripts/controllers/profilectrl.js"></script>
    <script src="/angular/scripts/controllers/taskctrl.js"></script>
    <script src="/angular/scripts/controllers/sortctrl.js"></script>
    <script src="/angular/scripts/services/AuthService.js"></script>
    <script src="/angular/scripts/services/UserService.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>


