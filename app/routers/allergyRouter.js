const allergyRouter = express.Router();

allergyRouter.get('/', allergyRouter.allergyPage);

module.exports = allergyRouter;
