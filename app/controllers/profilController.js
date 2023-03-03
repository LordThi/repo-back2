const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const registerDataMapper = require('../dataMapper/registerDataMapper');

const profilController = {
  loginUser: async (req, res) => {
    const { email, password } = req.body;
    // reste à hasher le mdp
    const saltRounds = 10;

    const salt = await bcrypt.genSalt(saltRounds);
    const hash = await bcrypt.hash(password, salt);

    const result = await registerDataMapper.login(email, hash);
    if (result) {
      // utilsateur a été trouvé
      const token = jwt.sign({ userId: result.userId }, process.env.JWT_SECRET);
      res.send(token);
    } else {
      // utilisateur n'a pas été trouvé
      res.status(401).json({ error: 'user or password is not found' });
    }
  },

  registerUser: async (req, res) => {
    const newUser = req.body;

    // reste à hasher le mdp
    const saltRounds = 10;

    const salt = await bcrypt.genSalt(saltRounds);
    newUser.password = await bcrypt.hash(newUser.password, salt);

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
