module.exports = function (req, res, next) {
  try {
    next();
  } catch (error) {
    req.status(401).json({ error });
  }
};
