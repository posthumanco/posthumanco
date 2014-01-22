# for more details see: http://emberjs.com/guides/models/defining-models/

Posthuman.Post = DS.Model.extend
  title: DS.attr 'string'
  image: DS.attr 'string'
  body: DS.attr 'string'
  updated_at: DS.attr 'string'
  author: DS.belongsTo 'Posthuman.Author', key: 'author_id'
