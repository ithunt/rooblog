function Posts($scope, $http) {

    /**
     * GET /posts objects, run when this Posts controller is instantiated
     */
    $http.get('posts').
        success(function(data) {
            $scope.posts = data;
        });


}