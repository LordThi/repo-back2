const { brand } = require('../routers/api');

const brandController = {
    async oneBrandPage(req, res) {

        const brandId = req.param.id;

        try {

            const brand = await brand.findByPk(brandId, {
                include: [
                  'id',
               'name',
              {
                association: 'category',
                include: ['product','brand']
              }  
            ],              
         });

         if(brand) {
            res.render('brand', { brand });
         } else {
            res.satus(404).render('404');
         }

        } catch (error) {
            console.log(error);

            res.status(500).render('500');
        }
    }
};

module.export = brandController;
