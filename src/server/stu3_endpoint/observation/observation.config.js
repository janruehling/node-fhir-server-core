const controller = require('./controllers/observation.controller');

const scopes = [
  'user/*.*',
  'user/Observation.*',
  'user/Observation.read',
  'user/*.read',
  'patient/*.*',
  'patient/Observation.*',
  'patient/Observation.read',
  'patient/*.read'
];


let routes = [
  {
    type: 'get',
		path: '/stu3/observation',
		corsOptions: {
			methods: ['GET']
		},
    args: [{
      name: 'patient',
			type: 'string',
			required: true
    }, {
      name: 'category',
      type: 'token'
    }, {
      name: 'code',
      type: 'token'
    }, {
      name: 'date',
      type: 'string'
    }, {
			name: '_format',
			type: 'string'
		}, {
      name: 'based-on',
      type: 'string'
    }, {
      name: 'code-value-concept',
      type: 'string'
    }, {
      name: 'code-value-date',
      type: 'string'
    }, {
      name: 'code-value-quantity',
      type: 'string'
    }, {
      name: 'code-value-string',
      type: 'string'
    }, {
      name: 'combo-code',
      type: 'token'
    }, {
      name: 'combo-code-value-concept',
      type: 'string'
    }, {
      name: 'combo-code-value-quantity',
      type: 'string'
    }, {
      name: 'combo-data-absent-reason',
      type: 'token'
    }, {
      name: 'combo-value-concept',
      type: 'token'
    }, {
      name: 'combo-value-quantity',
      type: 'string'
    }, {
      name: 'component-code',
      type: 'token'
    }, {
      name: 'component-code-value-concept',
      type: 'string'
    }, {
      name: 'component-code-value-quantity',
      type: 'string'
    }, {
      name: 'component-data-absent-reason',
      type: 'token'
    }, {
      name: 'component-value-concept',
      type: 'token'
    }, {
      name: 'component-value-quantity',
      type: 'string'
    }, {
      name: 'context',
      type: 'string'
    }, {
      name: 'data-absent-reason',
      type: 'token'
    }, {
      name: 'device',
      type: 'string'
    }, {
      name: 'encounter',
      type: 'string'
    }, {
      name: 'identifier',
      type: 'string'
    }, {
      name: 'method',
      type: 'token'
    }, {
      name: 'performer',
      type: 'string'
    }, {
      name: 'related',
      type: 'string'
    }, {
      name: 'related-target',
      type: 'string'
    }, {
      name: 'related-type',
      type: 'token'
    }, {
      name: 'specimen',
      type: 'string'
    }, {
      name: 'status',
      type: 'token'
    }, {
      name: 'subject',
      type: 'string'
    }, {
      name: 'value-concept',
      type: 'token'
    }, {
      name: 'value-date',
      type: 'string'
    }, {
      name: 'value-quantity',
      type:'string'
    }, {
      name: 'value-string',
      type: 'string'
    }],
    scopes: scopes,
    controller: controller.getObservations
	},
	{
    type: 'post',
		path: '/stu3/observation/_search',
		corsOptions: {
			methods: ['POST']
		},
    args: [{
      name: 'patient',
			type: 'string',
			required: true
    }, {
      name: 'category',
      type: 'token'
    }, {
      name: 'code',
      type: 'token'
    }, {
      name: 'date',
      type: 'string'
    }, {
			name: '_format',
			type: 'string'
		}, {
      name: 'based-on',
      type: 'string'
    }, {
      name: 'code-value-concept',
      type: 'string'
    }, {
      name: 'code-value-date',
      type: 'string'
    }, {
      name: 'code-value-quantity',
      type: 'string'
    }, {
      name: 'code-value-string',
      type: 'string'
    }, {
      name: 'combo-code',
      type: 'token'
    }, {
      name: 'combo-code-value-concept',
      type: 'string'
    }, {
      name: 'combo-code-value-quantity',
      type: 'string'
    }, {
      name: 'combo-data-absent-reason',
      type: 'token'
    }, {
      name: 'combo-value-concept',
      type: 'token'
    }, {
      name: 'combo-value-quantity',
      type: 'string'
    }, {
      name: 'component-code',
      type: 'token'
    }, {
      name: 'component-code-value-concept',
      type: 'string'
    }, {
      name: 'component-code-value-quantity',
      type: 'string'
    }, {
      name: 'component-data-absent-reason',
      type: 'token'
    }, {
      name: 'component-value-concept',
      type: 'token'
    }, {
      name: 'component-value-quantity',
      type: 'string'
    }, {
      name: 'context',
      type: 'string'
    }, {
      name: 'data-absent-reason',
      type: 'token'
    }, {
      name: 'device',
      type: 'string'
    }, {
      name: 'encounter',
      type: 'string'
    }, {
      name: 'identifier',
      type: 'string'
    }, {
      name: 'method',
      type: 'token'
    }, {
      name: 'performer',
      type: 'string'
    }, {
      name: 'related',
      type: 'string'
    }, {
      name: 'related-target',
      type: 'string'
    }, {
      name: 'related-type',
      type: 'token'
    }, {
      name: 'specimen',
      type: 'string'
    }, {
      name: 'status',
      type: 'token'
    }, {
      name: 'subject',
      type: 'string'
    }, {
      name: 'value-concept',
      type: 'token'
    }, {
      name: 'value-date',
      type: 'string'
    }, {
      name: 'value-quantity',
      type:'string'
    }, {
      name: 'value-string',
      type: 'string'
    }],
    scopes: scopes,
    controller: controller.getObservations
  },
  {
    type: 'get',
		path: '/stu3/observation/:id',
		corsOptions: {
			methods: ['GET']
		},
    args: [{
      name: 'id',
      type: 'number',
      required: true
    }],
    scopes: scopes,
    controller: controller.getObservationById
  }
];



/**
 * @name exports
 * @summary Observations config
 */
module.exports = {
	routes
};
