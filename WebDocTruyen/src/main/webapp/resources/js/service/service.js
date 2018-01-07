'use strict';

/*Lấy list  thể loại*/
angular.module('myApp').factory('HeaderService', ['$http', function($http){
	var URL = '/WebDocTruyen/header/';
	var factory = {};
	
	factory.fetchListTL = (callbackData,error) => { 
		$http.get(URL)
		.then(function(response){
				if(response.data == '204'){
					console.log('fetch data error!')
				}
				else{
					callbackData(response.data);
				}
			}).catch(function(error){console.log('fetch data error!')});
	}
	
	return factory;
}]);


//List Truyện
angular.module('myApp').factory('IndexService', ['$http', function($http){
	var URL = '/WebDocTruyen/listTr/';
	var factory = {};
	/*Lấy list truyện */
	factory.fetchListTR = (callbackData,error) => { 
		$http.get(URL)
		.then(function(response){
				if(response.data == '204'){
					console.log('fetch data error!')
				}
				else{
					callbackData(response.data);
				}
			}).catch(function(error){console.log('fetch data error!')});
	}
	return factory;
}]);


//List Truyện theo thể loại
angular.module('myApp').factory('ListTR_TLService', ['$http', function($http){
	var URL = '/WebDocTruyen/listTr_TL/';
	var factory = {};
	/*Lấy list truyện theo thể loại*/
    factory.fetchListTR_TL = (id,callbackData,errorData) => {
    	$http.get(URL+id)
    	.then(function(response){
    		callbackData(response.data);
    		console.log(response.data)
    	}, function(error){
    		errorData(error.statusText);
    	});
    }
	
	return factory;
}]);


// Login
angular.module('myApp').factory('LoginService', ['$http', function($http){
	var URL = '/WebDocTruyen/login/';
	var factory = {};
	
	factory.login = (Account,responseData,errorData) => {
		$http.post(URL, Account)
    	 .then(function(response){
    		 if(response.data == ""){
    			 responseData(0);
    		 }
    		 else{
    			 console.log(response.data);
        		 responseData(response.data);
    		 }
    	 }, function(error){
    		 errorData(error.statusText)
    	 });
    }
	
	return factory;
}]);

//Register//
angular.module('myApp').factory('RegisterService', ['$http', function($http){
	var URL = '/WebDocTruyen/register/';
	var factory = {};
	
	factory.register = (Account,responseData,errorData) => {
		$http.post(URL, Account)
    	 .then(function(response){
    		 if(response.data == ""){
    			 responseData(0);
    		 }
    		 else{
    			 console.log(response.data);
        		 responseData(response.data);
    		 }
    	 }, function(error){
    		 errorData(error.statusText)
    	 });
    }
	
	return factory;
}]);

