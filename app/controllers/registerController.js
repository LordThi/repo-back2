const registerDataMapper = require('../dataMapper/registerDataMapper');

const registerController = {
  registerUser: async (req, res) => {
    const newUser = req.body;

    // reste à hasher le mdp

    const result = await registerDataMapper.register(newUser);

    if (result) {
      res.json('Utilisateur bien enregistré');
    } else {
      res.json('Cet email existe déjà');
    }
  },
};

module.exports = registerController;
