'use strict'

module.exports = function (app) {
    var json = require('./controller');

    app.route('/')
        .get(json.index);

    app.route('/mahasiswa')
        .get(json.getMahasiswa);

    app.route('/mahasiswa/:id')
        .get(json.getMahasiswaByID);

    app.route('/create')
        .post(json.addMahasiswa);

    app.route('/update/:id')
        .put(json.editMahasiswa);

    app.route('/delete/:id')
        .delete(json.deleteMahasiswa);

    app.route('/matakuliah')
        .get(json.getMataKuliah);
}