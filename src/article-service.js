const ArticlesService = {
    getAll(knex){
        return knex.select('*').from('blogful_articles')
    },
    insertArticle(knex, newArticle){
        return knex.insert(newArticle).into('blogful_articles').returning('*').then(rows => {return rows[0]})
    },
    getById(knex,id){
        return knex.select('*').from('blogful_articles').where('id',id).first()
    },
    deleteById(knex,id){
        return knex('blogful_articles').where({id}).delete()
    },
    updateArticle(knex,id, updateArticle){
        return knex('blogful_articles').where({id}).update(updateArticle)
    }
}
module.exports =  ArticlesService