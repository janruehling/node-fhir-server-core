const controller = require('./controllers/patient.controller');

const scopes = [
  'user/*.*',
  'user/Patient.*',
  'user/Patient.read',
  'user/*.read',
  'patient/*.*',
  'patient/Patient.*',
  'patient/Patient.read',
  'patient/*.read'
];

let routes = [
	{
		type: 'get',
		path: '/stu3/patient',
		corsOptions: {
			methods: ['GET']
		},
		args: [
		{
			name: '_content',
			type: 'string'
		},
		{
			name: '_id',
			type: 'token'
		},
		{
			name: '_lastUpdated',
			type: 'date'
		},
		{
			name: '_profile',
			type: 'uri'
		},
		{
			name: '_query',
			type: 'token'
		},
		{
			name: '_security',
			type: 'token'
		},
		{
			name: '_tag',
			type: 'token'
		},
		{
			name: 'active',
			type: 'token'
		},
		{
			name: 'address',
			type: 'string'
		},
		{
			name: 'address-city',
			type: 'string'
		},
		{
			name: 'address-country',
			type: 'string'
		},
		{
			name: 'address-postalcode',
			type: 'string'
		},
		{
			name: 'address-state',
			type: 'string'
		},
		{
			name: 'address-use',
			type: 'token'
		},
		{
			name: 'animal-breed',
			type: 'token'
		},
		{
			name: 'animal-species',
			type: 'token'
		},
		{
			name: 'birthdate',
			type: 'date'
		},
		{
			name: 'death-date',
			type: 'date'
		},
		{
			name: 'deceased',
			type: 'token'
		},
		{
			name: 'email',
			type: 'token'
		},
		{
			name: 'family',
			type: 'string'
		},
		{
			name: 'gender',
			type: 'token'
		},
		{
			name: 'general-practitioner',
			type: 'reference'
		},
		{
			name: 'given',
			type: 'string'
		},
		{
			name: 'identifier',
			type: 'token'
		},
		{
			name: 'language',
			type: 'token'
		},
		{
			name: 'link',
			type: 'reference'
		},
		{
			name: 'name',
			type: 'string'
		},
		{
			name: 'organization',
			type: 'reference'
		},
		{
			name: 'phone',
			type: 'token'
		},
		{
			name: 'phonetic',
			type: 'string'
		},
		{
			name: 'telecom',
			type: 'token'
		}],
		scopes: scopes,
		controller: controller.getPatient
	},
	{
		type: 'post',
		path: '/stu3/patient/_search',
		corsOptions: {
			methods: ['POST']
		},
		args: [{
			name: '_content',
			type: 'string'
		},
		{
			name: '_id',
			type: 'token'
		},
		{
			name: '_lastUpdated',
			type: 'date'
		},
		{
			name: '_profile',
			type: 'uri'
		},
		{
			name: '_query',
			type: 'token'
		},
		{
			name: '_security',
			type: 'token'
		},
		{
			name: '_tag',
			type: 'token'
		},
		{
			name: 'active',
			type: 'token'
		},
		{
			name: 'address',
			type: 'string'
		},
		{
			name: 'address-city',
			type: 'string'
		},
		{
			name: 'address-country',
			type: 'string'
		},
		{
			name: 'address-postalcode',
			type: 'string'
		},
		{
			name: 'address-state',
			type: 'string'
		},
		{
			name: 'address-use',
			type: 'token'
		},
		{
			name: 'animal-breed',
			type: 'token'
		},
		{
			name: 'animal-species',
			type: 'token'
		},
		{
			name: 'birthdate',
			type: 'date'
		},
		{
			name: 'death-date',
			type: 'date'
		},
		{
			name: 'deceased',
			type: 'token'
		},
		{
			name: 'email',
			type: 'token'
		},
		{
			name: 'family',
			type: 'string'
		},
		{
			name: 'gender',
			type: 'token'
		},
		{
			name: 'general-practitioner',
			type: 'reference'
		},
		{
			name: 'given',
			type: 'string'
		},
		{
			name: 'identifier',
			type: 'token'
		},
		{
			name: 'language',
			type: 'token'
		},
		{
			name: 'link',
			type: 'reference'
		},
		{
			name: 'name',
			type: 'string'
		},
		{
			name: 'organization',
			type: 'reference'
		},
		{
			name: 'phone',
			type: 'token'
		},
		{
			name: 'phonetic',
			type: 'string'
		},
		{
			name: 'telecom',
			type: 'token'
		}],
		scopes: scopes,
		controller: controller.getPatient
	},
	/**
	 * read
	 */
	{
		type: 'get',
		path: '/stu3/patient/:id',
		corsOptions: {
			methods: ['GET']
		},
		args: [{
			name: 'id',
			type: 'string',
			required: true
		},
		{
			name: '_format',
			type: 'string'
		}],
		scopes: scopes,
		controller: controller.getPatientById
	},
	/**
	 * vread
	 */
	{
		type: 'get',
		path: '/stu3/patient/:id/_history/:vid',
		corsOptions: {
			methods: ['GET']
		},
		args: [{
			name: 'id',
			type: 'string',
			required: true
		},
		{
			name: 'vid',
			type: 'string',
			required: true
		},
		{
			name: '_format',
			type: 'string'
		}],
		scopes: scopes,
		controller: controller.getPatientById
	},
	/**
	 * update
	 */
	{
		type: 'put',
		path: '/stu3/patient/:id',
		corsOptions: {
			methods: ['PUT']
		},
		args: [{
			name: 'id',
			type: 'string',
			required: true
		},
		{
			name: '_format',
			type: 'string'
		}],
		scopes: scopes,
		controller: controller.update
	},
	/**
	 * patch
	 */
	{
		type: 'patch',
		path: '/stu3/patient/:id',
		corsOptions: {
			methods: ['PATCH']
		},
		args: [{
			name: 'id',
			type: 'string',
			required: true
		},
		{
			name: '_format',
			type: 'string'
		}],
		scopes: scopes,
		controller: controller.patch
	},
	/**
	 * delete
	 */
	{
		type: 'delete',
		path: '/stu3/patient/:id',
		corsOptions: {
			methods: ['DELETE']
		},
		args: [{
			name: 'id',
			type: 'string',
			required: true
		},
		{
			name: '_format',
			type: 'string'
		}],
		scopes: scopes,
		controller: controller.delete
	},
	/**
	 * create
	 */
	{
		type: 'post',
		path: '/stu3/patient',
		corsOptions: {
			methods: ['POST']
		},
		args: [{
			name: 'id',
			type: 'string',
			required: true
		},
		{
			name: '_format',
			type: 'string'
		}],
		scopes: scopes,
		controller: controller.create
	}
];

let codes = {
	gender: ['male', 'female', 'other', 'unknown']
};

/**
 * @name exports
 * @summary Patient config
 */
module.exports = {
	routes,
	codes
};
