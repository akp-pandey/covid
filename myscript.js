const URL="https://covid19.mathdro.id/api";



let app=angular.module('MyApp',[]);
app.controller('MyCtrl',($scope,$http)=>{
	$scope.title="Stay Home,Save Lives";
	$http.get(URL).then((response)=>{
		
		$scope.all_data=response.data;
		
	},
	(error)=>
	
	{
		
		
		
	});
	//getcountry value
	$scope.get_c=()=>{
		let country=$scope.c;
		if(country=="")
			{
			$scope.c_data=undefined;
			return;
			}
		$http.get(`${URL}/countries/${country}`).then((response)=>{
			$scope.c_data=response.data;
			
			
		},(error)=>{
			
			
			
		});
	};
	
		
	
		
	
	$scope.get_state=()=>{
		let state=$scope.st;
		if(state=="")
			{
			$scope.s_data=undefined;
			return;
			}
		$http.get("https://covid19-india-adhikansh.herokuapp.com/state/"+state).then((response)=>{
			$scope.s_data=response.data;
			
			
			
		},(error)=>{
			
		});
	
	};
	
	
	


});
