/* eslint-disable no-undef */
const categoryRouter = express.Router();

categoryRouter.get('/', categoryController.categoryPage);

module.exports = categoryRouter;
