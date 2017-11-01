angular.module('sortApp', [])

.controller('mainController', function($scope) {
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.searchitem  = '';     // set the default search/filter term
  
  // create the list of products
  $scope.product = [
                    { pid: 1, item : 'Lanterns', price : 'Rs.10,000', qty: 70 },
                    { pid: 2, item : 'Beds', price : 'Rs.50,000', qty: 50 },
                    { pid: 3, item : 'Clocks', price :  'Rs.5,000', qty: 35  },
                    { pid: 4, item : 'Entertainment Units', price :  'Rs.80,000', qty: 20  },
                    { pid: 5, item : 'Dining Table', price :  'Rs.40,000', qty: 29  },
                  ];
  
});