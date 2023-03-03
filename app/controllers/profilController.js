const registerDataMapper = require('../dataMappers/registerDataMapper');

const profilController = {
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
  updateUser: async (req, res) => {
    const infoUserToUpdate = req.body;

    const result = await registerDataMapper.update(infoUserToUpdate);

    if (!result.isError) {
      res.json('modification(s) enregistrée(s)');
    } else {
      res.json(result.message);
    }
  },
  deleteUser: async (req, res) => {
    const fakeId = 15;

    const result = await registerDataMapper.delete(fakeId);

    if (result) {
      res.json('Utilisateur a bien supprimé');
    }
  },
};

module.exports = profilController;
