const db = require("../models");
const Product = db.products;

exports.findAll = (req, res) => {
  Product.findAll()
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message: "table not found",
      });
    });
};

exports.create = (req, res) => {
  console.log(req.body);

  if (!req.body.nom || !req.body.photo) {
    res.status(400).send({
      message: "name and photo are mandatory",
    });
    return;
  }

  Product.create(req.body)

    .then((data) => {
      console.log("create", data);
      res.send(data);
    })
    .catch((err) => {
      console.log("err", err.message);

      res.status(500).send({
        message: err.message || "Impossible d'insérer dans la base de donnée",
      });
    });
};

exports.findByPk = (req, res) => {
  const id = req.params.id;
  Product.findByPk(id)
    .then((data) => {
      res.send(data);
    })
    .catch((err) => {
      res.status(500).send({
        message: "Impossible de trouver la donnée(err.805)",
      });
    });
};

exports.delete = (req, res) => {
  const id = req.params.id;
  Product.destroy({
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.send({
          message: "Effacé avec succès",
        });
      } else {
        res.send({
          message: "Erreur (Delete)",
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Erreur (Delete) (e232)",
      });
    });
};

exports.update = (req, res) => {
  const id = req.params.id;
  Product.update(req.body, {
    where: { id: id },
  })
    .then((num) => {
      if (num == 1) {
        res.send({
          message: "Product mis à jour avec succès",
        });
      } else {
        res.send({
          message: "Erreur (update product)",
        });
      }
    })
    .catch((err) => {
      res.status(500).send({
        message: "Erreur (update product) (e232)",
      });
    });
};
