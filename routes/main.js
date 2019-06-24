
const db = require('../config/database')();

module.exports = function (app) {

    app.get('/', (req, res, next) => {
        db.query(`SELECT image, name, articles.id, fk_author, users.user_name FROM articles
                INNER JOIN users ON articles.fk_author = users.id`, (err, articles) => {
            if (err) return next(`${err} at db.query (${__filename}:7:9)`);
            db.query(`SELECT * FROM products`, (err, products) => {
                if (err) return next(`${err} at db.query (${__filename}:7:9)`);
                res.render('client/main', { 'products': products, 'articles': articles });
            })
        })
    });
    
};