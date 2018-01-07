'use strict';
angular.module('myApp').controller('ListTLController', ['$scope', 'HeaderService', function($scope, HeaderService) {
	fetchMenu();
	$scope.listTL = [];

	/*Lấy list thể loại*/
	function fetchMenu(){
		HeaderService.fetchListTL(function(response){
			$scope.listTL = response;
			console.log(response);
		});
	}
}]);

angular.module('myApp').controller('IndexController', ['$scope', 'IndexService', function($scope, IndexService) {
	fetchListTRS();
	$scope.listTR = [];
	/*Lấy list truyện*/
	function fetchListTRS(){
		IndexService.fetchListTR(function(response){
			$scope.listTR = response;
		});	
	}
}]);


angular.module('myApp').controller('ListTR_TLController', ['$scope', 'ListTR_TLService', function($scope, ListTR_TLService) {
	/*Lấy list truyện theo thể loại*/
	var host = window.location.host;
	$scope.listTR=[];
	var url = "http://" + host + "/WebDocTruyen";
	function fetchListTR_TLS(id){
		ListTR_TLService.fetchListTR_TL(id,function(response){
    		$scope.listTR= response;
    		console.log($scope.listTR);
    		window.location.href = url + "/category";	
    	}, function(error){
    		console.log('Error!');
    	});
	}
	 $scope.listTRbyid = function(id){
		 fetchListTR_TLS(id);
	 }
}]);

angular.module('myApp').controller('LoginController', ['$scope','$window', 'LoginService', function($scope,$window, LoginService) {
	var host = $window.location.host;
	var url = "http://" + host + "/WebDocTruyen";
	function logins(Account){
		LoginService.login(Account,function(response){
    		if(response == 0){
    			$scope.status = "Tài khoản hoặc mật khẩu bị sai!";
    		}
    		else{
    			$window.location.href = url+"/";
    		}
    	}, function(error){
    		console.log('Error!');
    	});
    }
	$scope.submit = (Account) => {
		console.log($scope.Account);
		logins($scope.Account);
	}
	
}]);

angular.module('myApp').controller('RegisterController', ['$scope','$window', 'RegisterService', function($scope,$window, RegisterService) {
	var host = $window.location.host;
	var url = "http://" + host + "/WebDocTruyen";
	function registers(Account){
		RegisterService.register(Account,function(response){
    		if(response == 0){
    			$scope.status = "Không thành công!";
    		}
    		else{
    			$window.location.href = url+"/";
    		}
    	}, function(error){
    		console.log('Error!');
    	});
    }
	$scope.submit = (Account) => {
		console.log($scope.Account);
		registers($scope.Account);
	}
	
}]);