/**
 * Tema.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {

    id : { type: 'integer', autoIncrement: true, primaryKey:true},

    descripcion : { type: 'string', size: 140, required: true },

    imagen : { type: 'longtext' },

    tipoTema: {model: 'tipotema', required: true},

    mensajes: {
      collection: 'mensaje',
      via: 'tema'
    },

    usuario: {model: 'usuario', required: true}
  }
};

