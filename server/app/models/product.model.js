module.exports = (connex, Sequelize) => {
    const Produit = connex.define('produit', {
        nom: {
            type: Sequelize.STRING
        },
        description: {
            type: Sequelize.TEXT
        },
        prix: {
            type: Sequelize.REAL
        },
        photo: {
            type: Sequelize.STRING
        },
        categorie: {
            type: Sequelize.STRING
        },
        createdAt: {
            type: Sequelize.DATE,
            allowNull: false,
            defaultValue: Sequelize.literal('CURRENT_TIMESTAMP')
        },
        updatedAt: {
            type: Sequelize.DATE,
            allowNull: false,
            defaultValue: Sequelize.literal('CURRENT_TIMESTAMP')
        }
    });
    return Produit;
};
