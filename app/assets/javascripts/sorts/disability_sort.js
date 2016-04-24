 (function(){
  Tablesort.extend('disability', function(item) {
    return item.search(/(High|Moderate|Low < 2|Low >= 2|None)/i) !== -1;
  }, function(a,b) {
    var disability = ['None', 'Low < 2', 'Low >= 2', 'Moderate', 'High'];
    return disability.indexOf(b) - disability.indexOf(a);
  });
}());
