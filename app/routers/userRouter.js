const userRouter = express.Router();

userRouter.get('/', isLogged(), userController.get);
userRouter.patch('/', isLogged(), userController.path);
userRouter.delete('/', isLogged(), userController.delete);
