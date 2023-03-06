// Exemple de modèle avec la table User
const sequelize = require('../dataMapper/registerDataMapper');

module.exports = sequelize.define('User', {
  // Model attributes are defined here
  firstName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  lastName: {
    type: DataTypes.STRING,
    // allowNull defaults to true
  },
}, {
  // Other model options go here
});
