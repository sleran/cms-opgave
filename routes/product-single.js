const db = require('../config/database')();

module.exports = function (app) {

    app.get('/produkt/:id', (req, res, next) => {
        db.query(`SELECT * FROM products WHERE products.id = ?`, [req.params.id], (err, product) => {
            if (err) return next(`${err} at db.query (${__filename}:7:9)`);
            res.render('client/product', { 'product': product[0]});
        })
    });
    
};