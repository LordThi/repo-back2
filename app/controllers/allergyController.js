const { allergy } = require('../routers/api');

const allergyController = {
    async oneAllergyPage(req, res) {

        const allergyId = req.param.id;

        try {

            const allergy = await allergy.findByPk(allergyId, {
                include: [
                  'id',
                  'name',
              {
                association: 'category',
                include: ['product','brand']
              }  
            ],              
         });

         if(allergy) {
            res.render('allergy', { allergy });
         } else {
            res.satus(404).render('404');
         }

        } catch (error) {
            console.log(error);

            res.status(500).render('500');
        }
    }
};

module.export = allergyController;
