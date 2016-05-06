exports.add = function(req, res, next) {
 req.getConnection(function(err, connection) {
   if (err) return next(err);
   var data = {
     sleep: req.body.sleep,
     wakeup : req.body.wake,
   };
  // console.log(data.result);
   result = Math.abs(data.wakeup.replace(':', '.') - data.sleep.replace(':', '.'));
   data.result = result;
  console.log(result);
   connection.query('insert into Questions_table set ?', [data], function(err, results) {
     if (err) return next(err);
     res.redirect('/sleep');
   });
 });
};

exports.show = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) return next(err);
		connection.query('SELECT Q.sleep_time, Q.description FROM Quotes_table AS Q INNER JOIN Questions_table AS q ON q.result  = Q.sleep_time ORDER BY  q.id DESC  Limit 1'
, [], function(err, result){
        	if (err) return next(err);
          //console.log(result);
    		res.render( 'quotes', {
					results: result,
    		});
      	});
      });
    }

    exports.showStrategies = function (req, res, next) {
    // 	req.getConnection(function(err, connection){
    // 		if (err) return next(err);
    // 		connection.query('insert into Questions_table set ?'
    // , [], function(err, result){
    //         	if (err) return next(err);
              //console.log(result);
        		res.render( 'strategies');
          // 	});
          // });
        }
