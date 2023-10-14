const db = require('../models')
const Product = db.products 

exports.findAll = (req, res) => {
    Product.findAll()
    .then(data => {
        res.send(data)
    })
    .catch(err => {
        res.status(500).send({
            message: 'table not found'
        })
    })

}

exports.create = (req, res) => {
    console.log(req.body);

    if (!req.body.name || !req.body.photo) {
        res.status(400).send({
            message: 'name and photo are mandatory'
        })
        return
    }

    // const product = {
    //     name: req.body.name,
    //     photo: req.body.photo,
    //     price: req.body.price,
    //     description: req.body.description,
    //     type: req.body.type,
    // }

    Product.create(req.body)
   
    .then(data => {
        res.send(data)
    })
    .catch(err => {
        res.status(500).send({
            message: err.message || 'cannot insert into the db.(fh)'
        })
    })
}

exports.findByPk = (req, res) => {
    const id = req.params.id
    Product.findByPk(id)
    .then(data => {
        res.send(data)
    })
    .catch(err => {
        res.status(500).send({
            message: 'Could not find the data(err.805)'
        })
    })
}

exports.delete = (req, res) => {
    const id = req.params.id
    Product.destroy({
        where: {id: id}
    })
    .then(num => {
        if (num == 1) {
            res.send({
                message: 'deleted successfully'
            })
        } else {
            res.send({
                message: 'cannot delete'
            })
        }
    })
    .catch(err => {
        res.status(500).send({
            message: 'could not delete'
        })
    })
}

exports.update = (req, res) => {
    const id = req.params.id
    Product.update(req.body, {
        where: {id: id}
    })
    .then(num => {
        if (num == 1) {
            res.send({
                message: 'Product updated successfully'
            })
        } else {
            res.send({
                message: 'Cannot update product'
            })
        }
    })
    .catch(err => {
        res.status(500).send({
            message: 'could not delete'
        })
    })
}