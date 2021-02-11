'use strict';

var response = require('./res');
var connection = require('./connection');
const conn = require('./connection');

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

//edit mahasiswa
exports.editMahasiswa = function (req, res) {
    let id = req.params.id;
    var npm = req.body.npm;
    var nama = req.body.nama;
    var jurusan = req.body.jurusan;

    connection.query('UPDATE mahasiswa SET npm=?, nama=?, jurusan=? WHERE id_mahasiswa=?',
        [npm, nama, jurusan, id],
        function (error, rows, field) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Data Data mahasiswa successfully changed", res);
            }
        });
};

//delete mahasiswa
exports.deleteMahasiswa = function (req, res) {
    let id = req.params.id;
    connection.query('DELETE FROM mahasiswa WHERE id_mahasiswa=?',
        [id],
        function (error, rows, field) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Data Data mahasiswa successfully deleted", res);
            }
        });
};

//get matakuliah by group name
exports.getMataKuliah = function (req, res){
    conn.query('SELECT mahasiswa.id_mahasiswa, mahasiswa.npm, mahasiswa.nama, mahasiswa.jurusan, matakuliah.matakuliah, matakuliah.sks FROM krs JOIN matakuliah JOIN mahasiswa WHERE krs.id_matakuliah = matakuliah.id_matakuliah AND krs.id_mahasiswa = mahasiswa.id_mahasiswa ORDER BY mahasiswa.id_mahasiswa',
        function(error, rows, field){
            if(error){
                console.log(error);
            } else{
                response.okNested(rows, res);
            }
        }
    );
}