/* global moment:true */

import Ember from 'ember';

export default Ember.Helper.helper(function(date, format) {
  return moment(date).format(format);
});
