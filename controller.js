'use strict';

var response = require('./res');
var connection = require('./connection');

exports.index = function (req, res) {
    response.ok("Rest running successfully", res)
};

//get all mahasiswa
exports.getMahasiswa = function (req, res) {
    connection.query('SELECT * FROM mahasiswa', function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res);
        }
    });
};

//get mahasiswa by ID
exports.getMahasiswaByID = function (req, res) {
    let id = req.params.id;

    connection.query('SELECT * FROM mahasiswa WHERE id_mahasiswa = ?',
        [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok(rows, res);
            }
        });
}

//add mahasiswa

exports.addMahasiswa = function (req, res) {
    var npm = req.body.npm;
    var nama = req.body.nama;
    var jurusan = req.body.jurusan;

    connection.query('INSERT INTO mahasiswa (npm, nama, jurusan) VALUES (?, ?, ?)',
        [npm, nama, jurusan],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Data mahasiswa successfully added", res);
            }
        });
};