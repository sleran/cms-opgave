const db = require('../config/database')();
const fs = require('fs');

const roleCheck = require('../middleware/role-check');

module.exports = function (app) {

//admin articles route
	app.get('/admin/produkter', [roleCheck.admins, roleCheck.superadmins], (req, res, next) => {
		db.query(`SELECT products.id, products.name, description, image, categories.name AS category FROM products
		INNER JOIN categories ON products.fk_category = categories.id`, (err, products) => {
			if (err) return next(`${err} at db.query (${__filename}:8:9)`);
            res.render('administration/admin-products', { 'title': 'Produkter', 'content': 'Opret, slet og redigér', 'products': products});
        })
	});

	app.get('/admin/rediger-produkt/:id', [roleCheck.admins, roleCheck.superadmins], (req, res, next) => {
		db.query(`SELECT products.id, products.name, description, image, categories.name AS category, products.fk_category FROM products
		INNER JOIN categories ON products.fk_category = categories.id
		WHERE products.id = ?`, [req.params.id], (err, products) => {
			if (err) return next(`${err} at db.query (${__filename}:16:9)`);
            res.render('administration/admin-products-edit', { 'title': products[0].name, 'content': 'hej med dig', 'product': products[0]});
        })
	});
	app.post('/admin/produkter', [roleCheck.admins, roleCheck.superadmins], (req, res, next) => {
		let timestamp = Date.now();
		let renamedFilename = `${timestamp}_${req.files.image.name}`;
		db.query('INSERT INTO products (name, description, fk_category, price, image, published) VALUES (?, ?, ?, ?, ?, ?)', [req.fields.name, req.fields.description, req.fields.categoryUpdate, req.fields.price, renamedFilename, 1], (err, result) => {
			if (err) {
				return next(`${err} at db.query (${__filename}:24:9)`);
			} else if (!req.files || !req.files.image) {
				return next(new Error('Der var ingen fil med formularen'));
			}
			fs.readFile(req.files.image.path, (err, data) => {
				if (err) {
					return next(new Error('Den midlertidige fil kunne ikke læses'));
				}
				fs.writeFile(`./public/media/${renamedFilename}`, data, (err) => {
					if (err) {
						return next(new Error('Filen kunne ikke gemmes'));
					}
					res.redirect('/admin/produkter');
				});
			});
			
		})
	});

	app.patch('/admin/produkter', [roleCheck.admins, roleCheck.superadmins], (req, res, next) => {
		db.query('UPDATE products SET name = ?, description = ?, fk_category = ? WHERE id = ?', [req.fields.name, req.fields.description, req.fields.categoryUpdate, req.fields.id], (err, result) => {
			if (err) return next(`${err} at db.query (${__filename}:47:9)`);
			res.status(204);
			res.end();
		})
	});

	app.patch('/admin/produkter/image/:id', [roleCheck.admins, roleCheck.superadmins], (req, res, next) => {
		if (!req.files || !req.files.photo) {
			return next(`File not found (${__filename}:55:9)`);
		}
		const file = req.files.photo;
		const renamedFilename = `${Date.now()}_${file.name}`;
		fs.readFile(file.path, (err, data) => {
			if (err) return next(`${err} at fs.readFile (${__filename}:60:9)`);
			fs.writeFile(`./public/media/${renamedFilename}`, data, err => {
				db.query('SELECT image FROM products WHERE id = ?', [req.params.id], (err, results) => {
					if (err) return next(`${err} at db.query (${__filename}:63:17)`);
						db.query('UPDATE products SET image = ? WHERE id = ?', [renamedFilename, req.params.id], (err, result) => {
							if (err) return next(`${err} at db.query (${__filename}:65:25)`);
							res.status(200);
							res.json({
							photo: renamedFilename
							});
						});
				
				});
			});
		});
	});

	app.delete('/admin/produkter/:id', [roleCheck.admins, roleCheck.superadmins], (req, res, next) => {
		db.query(`DELETE FROM products WHERE id = ?`, [req.params.id], (err, results) => {
			if (err) return next(`${err} at db.query (${__filename}:79:9)`);
			res.status(200);
			res.end();
		})
	});
}