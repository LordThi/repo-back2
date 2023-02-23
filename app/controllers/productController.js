const { product } = require('../routers/api');

const productController = {
    async oneProductPage(req, res) {

        const productId = req.param.id;

        try {

            const product = await product.findByPk(productId, {
                include: [
                  'id',
               'name',
              {
                association: 'category',
                include: ['allergy','brand']
              }  
            ],              
         });

         if(product) {
            res.render('product', { product });
         } else {
            res.satus(404).render('404');
         }

        } catch (error) {
            console.log(error);

            res.status(500).render('500');
        }
    }
};

module.export = productController;
