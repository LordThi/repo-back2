const { category } = require('../routers/api');

const categoryController = {
    async onecategoryPage(req, res) {

        const categoryId = req.param.id;

        try {

            const category = await category.findByPk(categoryId, {
                include: [
                  'id',
               'name',
              {
                association: 'allergy',
                include: ['product','brand']
              }  
            ],              
         });

         if(category) {
            res.render('category', { category });
         } else {
            res.satus(404).render('404');
         }

        } catch (error) {
            console.log(error);

            res.status(500).render('500');
        }
    }
};

module.export = categoryController;
