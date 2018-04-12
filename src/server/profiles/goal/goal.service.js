/* eslint-disable no-unused-vars */
module.exports.getCount = (req, logger, context) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'getCount\'';
	logger.info(message);
	// reject(new Error(message));
	resolve(12);
});

module.exports.getGoal = (req, logger, context) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'getGoal\'';
	logger.info(message);
	reject(new Error(message));
});

module.exports.getGoalById = (req, logger, context) => new Promise((resolve, reject) => {
	let message = 'Calling mock service. Did you forget to implement \'getGoalById\'';
	logger.info(message);
	reject(new Error(message));
});
