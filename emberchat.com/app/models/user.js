import DS from 'ember-data';

export default DS.Model.extend({
  firstName: DS.attr('string'),
  email: DS.attr('string'),
  createdAt: DS.attr('date'),
  updatedAt: DS.attr('date')
});
