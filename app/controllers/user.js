const User = require('../models/user.js');
const sequelize = require('./utils/sequelize');

module.exports.get = async function (req, res) {
  const { id } = req.token;
  const user = User.findByPK(id);
  res.status(user ? 200 : 401).json({ user });
  /*
  await sequelize.query(
    'SELECT * FROM projects WHERE status = :status',
    {
      replacements: { status: 'active' },
      type: QueryTypes.SELECT
    }
  );
  */
};

module.exports.delete = async function (req, res) {
  const { id } = req.token;
  await User.findByPK(id).destroy();
  res.status(200).json({});
};

module.exports.patch = async function (req, res) {
  const { id } = req.token;
  await User.findByPK(id).update(req.body).save();
  res.status(200).json({});
};
