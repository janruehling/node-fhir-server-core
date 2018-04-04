module.exports.getCount = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'getCount\'';
	logger.info(message);
	reject(new Error(message));
});

module.exports.getPatient = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'getPatient\'';
	logger.info(message);
	reject(new Error(message));
});

module.exports.getPatientById = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'getPatientById\'';
	logger.info(message);
	reject(new Error(message));
});

module.exports.update = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'update\'';
	logger.info(message);
	reject(new Error(message));
});


module.exports.patch = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'patch\'';
	logger.info(message);
	reject(new Error(message));
});


module.exports.delete = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'delete\'';
	logger.info(message);
	reject(new Error(message));
});


module.exports.create = (req, logger) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'create\'';
	logger.info(message);
	reject(new Error(message));
});
