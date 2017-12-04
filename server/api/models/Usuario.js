/**
 * Usuario.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {

    id : { type: 'integer', autoIncrement: true, primaryKey:true},

    username : { type: 'string', size: 10, unique:true, required:true },

    password : { type: 'string', size: 20, required:true },

    temas: {
      collection: 'tema',
      via: 'usuario'
    },

    mensajes: {
      collection: 'mensaje',
      via: 'usuario'
    }

    
  }
};

