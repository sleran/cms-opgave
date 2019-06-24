const db = require('../config/database')();
const bcrypt = require('bcryptjs');

module.exports = function (app) {
	app.get('/login', (req, res, next) => {
		if (req.query.status && req.query.status === 'badcredentials') {
			res.locals.status = 'ugyldigt brugernavn eller adgangskode';
		}
		res.render('client/login', {title: 'Log ind'});
	});

	app.post('/auth/login', (req, res, next) => {
		db.query(`SELECT users.id, users.pass, user_name, roles.name AS role, roles.level AS level FROM users 
		INNER JOIN roles ON roles.id = users.fk_role
		WHERE user_name = ?`, [req.fields.username], (err, result) => {
			if (err) return next(`${err} at db.query (${__filename}:13:9)`);
			if (result.length !== 1) {				
				res.redirect('/login?status=badcredentials');
				return;
			} else if (bcrypt.compareSync(req.fields.passphrase, result[0].pass)) {
				req.session.user = result[0].id;
				req.session.role = result[0].role;
				req.session.level = result[0].level;
				app.locals.loggedIn = true;
				if (req.session.role == 'Super admin' || req.session.role == 'Admin' || req.session.role == 'Moderator') {
					res.redirect('/admin');
				}else if (req.session.role == 'User' || req.session.role == 'Author')
					res.redirect('/profil');
				else
					res.redirect('/');
			} else {
				res.redirect('/login?status=badcredentials');
				return;
			}
		});
	});

	app.get('/auth/logout', (req, res, next) => {
		req.session.destroy();
		app.locals.loggedIn = false;
		res.redirect('/');
	});
};