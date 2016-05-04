exports.show = function(req, res, next) {
  req.getConnection(function(err, connection) {
    if (err) return next(err);
    connection.query('SELECT * FROM Quotes_table', [], function(err, results) {
      if (err) return next(err);
      res.render('Quotes', {
      Quotes : results.length === 0,
      });
    });
  });
};
