const { STU3 } = require('../../../constants');

/**
 * @name exports
 * @summary Patient conformance statement
 */

module.exports = {
	Profile: 'patient',
	Resource: (count) => ({
		extension: [{
			url: 'http://hl7api.sourceforge.net/hapi-fhir/res/extdefs.html#resourceCount',
			// This will be resolved dynamically by the service methods
			valueDecimal: count
		}],
		type: STU3.RESOURCE_TYPES.PATIENT,
		profile: {
			reference: 'http://hl7.org/fhir/Profile/Patient'
		},
		interaction: [{
			code: 'read'
		}, {
			code: 'vread'
		}, {
			code: 'search'
		}, {
			code: 'create'
		}, {
			code: 'update'
		}, {
			code: 'delete'
		}],
		searchParam: [
			{
				'name': 'active',
				'type': 'token',
				'documentation': 'Whether the patient record is active'
			},
			{
				'name': 'address',
				'type': 'string',
				'documentation': 'A server defined search that may match any of the string fields in the Address, including line, city, state, country, postalCode, and/or text'
			},
			{
				'name': 'address-city',
				'type': 'string',
				'documentation': 'A city specified in an address'
			},
			{
				'name': 'address-country',
				'type': 'string',
				'documentation': 'A country specified in an address'
			},
			{
				'name': 'address-postalcode',
				'type': 'string',
				'documentation': 'A postalCode specified in an address'
			},
			{
				'name': 'address-state',
				'type': 'string',
				'documentation': 'A state specified in an address'
			},
			{
				'name': 'address-use',
				'type': 'token',
				'documentation': 'A use code specified in an address'
			},
			{
				'name': 'animal-breed',
				'type': 'token',
				'documentation': 'The breed for animal patients'
			},
			{
				'name': 'animal-species',
				'type': 'token',
				'documentation': 'The species for animal patients'
			},
			{
				'name': 'birthdate',
				'type': 'date',
				'documentation': 'The patient\'s date of birth'
			},
			{
				'name': 'death-date',
				'type': 'date',
				'documentation': 'The date of death has been provided and satisfies this search value'
			},
			{
				'name': 'deceased',
				'type': 'token',
				'documentation': 'This patient has been marked as deceased, or as a death date entered'
			},
			{
				'name': 'email',
				'type': 'token',
				'documentation': 'A value in an email contact'
			},
			{
				'name': 'family',
				'type': 'string',
				'documentation': 'A portion of the family name of the patient'
			},
			{
				'name': 'gender',
				'type': 'token',
				'documentation': 'Gender of the patient'
			},
			{
				'name': 'general-practitioner',
				'type': 'reference',
				'documentation': 'Patient\'s nominated general practitioner, not the organization that manages the record'
			},
			{
				'name': 'given',
				'type': 'string',
				'documentation': 'A portion of the given name of the patient'
			},
			{
				'name': 'identifier',
				'type': 'token',
				'documentation': 'A patient identifier'
			},
			{
				'name': 'language',
				'type': 'token',
				'documentation': 'Language code (irrespective of use value)'
			},
			{
				'name': 'link',
				'type': 'reference',
				'documentation': 'All patients linked to the given patient'
			},
			{
				'name': 'name',
				'type': 'string',
				'documentation': 'A server defined search that may match any of the string fields in the HumanName, including family, give, prefix, suffix, suffix, and/or text'
			},
			{
				'name': 'organization',
				'type': 'reference',
				'documentation': 'The organization at which this person is a patient'
			},
			{
				'name': 'phone',
				'type': 'token',
				'documentation': 'A value in a phone contact'
			},
			{
				'name': 'phonetic',
				'type': 'string',
				'documentation': 'A portion of either family or given name using some kind of phonetic matching algorithm'
			},
			{
				'name': 'telecom',
				'type': 'token',
				'documentation': 'The value in any kind of telecom details of the patient'
			}
		]
	})
};
