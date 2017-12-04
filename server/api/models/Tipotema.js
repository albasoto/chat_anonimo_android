/**
 * Tipotema.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {

    id : { type: 'integer', autoIncrement: true, primaryKey:true},

    nombre : { type: 'string', size: 30, unique: true, required: true },

    temas: {collection: 'tema',via: 'tipoTema'}
  }
};

