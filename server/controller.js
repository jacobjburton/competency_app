module.exports = {
    getStudentClasses: (req, res, next) => {
        const db = req.app.get('db');
        console.log('getting here?')
        db.get_student_classes(req.params.id)
            .then(classes => res.status(200).send(classes))
            .catch((err) => res.status(500).send(err))
    }
}