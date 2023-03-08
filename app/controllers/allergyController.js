const searchDataMapper = require('../dataMapper/searchDataMapper');

const allergyController = {
// retourne toutes les allergies
  getAll: async (req, res) => {
    const result = await searchDataMapper.selectFirstsAllergies();
    if (result) {
      res.send('ALLERGIE(S) SELECTIONNEE(S)');
    }
  },
  // retourner les allergies de l'utilisateur connecté
  getFromUser: async (req, res) => {
    const { userId } = req.token;
    const result = await searchDataMapper.selectAllergiesFromUser(userId);
    res.json({ results: result.rows });
  },
  // ajouter une allergie de l'utilisateur
  postForUser: async (req, res) => {
    const { allergyId } = req.body;
    const { userId } = req.token;
    // console.log(allergy);
    const result = await searchDataMapper.insertUserAllergy(allergyId, userId);
    if (result) {
      res.json('success');
    }
  },
  // supprimer une allergie de l'utilisateur
  deleteOneAllergy: async (req, res) => {
    const { allergyId } = req.body;
    const { userId } = req.token;
    const result = await searchDataMapper.delete(allergyId, userId);
    if (result.rowCount) {
      res.json('delete: success');
    } else {
      res.json('Id user or Id allergy does not exist')
    }
  },
};

module.exports = allergyController;
