const db = require('../config/database')();

module.exports = function (app) {

    app.get('/artikel/:id', (req, res, next) => {
        db.query(`SELECT image, name, articles.id, content, fk_author, users.user_name FROM articles
                INNER JOIN users ON articles.fk_author = users.id
                WHERE articles.id = ?`, [req.params.id], (err, article) => {
            if (err) return next(`${err} at db.query (${__filename}:7:9)`);
            res.render('client/article', { 'article': article[0]});
        })
    });
    
};