const allergyDataMapper = require('../dataMapper/allergyDataMapper');

const allergyController = {
// retourne toutes les allergies
  getAll: async (req, res) => {
    const result = await allergyDataMapper.selectFirstsAllergies();
    if (result) {
      res.send('ALLERGIE(S) SELECTIONNEE(S)');
    }
  },
  // retourner les allergies de l'utilisateur connecté
  getFromUser: async (req, res) => {
    const { userId } = req.token;
    const result = await allergyDataMapper.selectAllergiesFromUser(userId);
    res.json({ results: result.rows });
  },
  // ajouter une allergie de l'utilisateur
  postForUser: async (req, res) => {
    const { allergyId } = req.body;
    const { userId } = req.token;
    // console.log(allergy);
    const result = await allergyDataMapper.insertUserAllergy(allergyId, userId);
    if (result) {
      res.json('success');
    }
  },
  // supprimer une allergie de l'utilisateur
  deleteByUser: async (req, res) => {
    const { allergyId } = req.body; // je récupère l'id de l'allergie de l'utilisateur
    const { userId } = req.token; // je récupère l'id de l'utilisateur
    const result = await allergyDataMapper.deleteUserAllergy(allergyId, userId);
    // je delete les infos via le datamapper
    if (result.rowCount) {
      res.json('delete: success');
    } else {
      res.json('Id user or Id allergy does not exist');
    }
  },
};

module.exports = allergyController;
