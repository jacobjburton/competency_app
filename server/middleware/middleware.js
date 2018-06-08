module.exports = (req, res, next) => {
    console.log("HERE BE REQUEST LEVEL MIDDLEWARE");
    next();
}