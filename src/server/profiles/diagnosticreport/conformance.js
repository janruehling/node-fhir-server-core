const { generateSearchParamsForConformance } = require('../../utils/conformance.utils');
const { DSTU2 } = require('../../../constants');
const { routes } = require('./diagnosticreport.config');

/**
 * @name exports
 * @summary Conformance statement
 */
module.exports = {
	profile: 'diagnosticreport',
	resource: (version, count) => {
		let searchParams = generateSearchParamsForConformance(routes, version);
		// Return our conformance statement
		return {
			extension: [{
				url: 'http://hl7api.sourceforge.net/hapi-fhir/res/extdefs.html#resourceCount',
				// This will be resolved dynamically by the service methods
				valueDecimal: count
			}],
			type: DSTU2.RESOURCE_TYPES.DIAGNOSTICREPORT,
			profile: {
				reference: 'http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport.html'
			},
			interaction: [{
				code: 'read'
			}, {
				code: 'search'
			}],
			searchParam: searchParams
		};
	}
};