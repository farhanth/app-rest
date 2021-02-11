'use strict';

exports.ok = function (values, res) {
    var data = {
        "status": 200,
        "values": values
    }

    res.json(data);
    res.end();
}

//response for nested json
exports.okNested = function (values, res) {
    //akumulasi
    const hasil = values.reduce((akumulasi, item) => {
        //tentukan key group
        if(akumulasi[item.nama]){
            //buat variabel group (nama mahasiswa)
            const group = akumulasi[item.nama];
            //jika isi array adalah matakuliah
            if(Array.isArray(group.matakuliah)){
                //tambah value nya ke group matakuliah
                group.matakuliah.push(item.matakuliah);
            } else {
                group.matakuliah = [group.matakuliah, item.matakuliah];
            }
        } else {
            akumulasi[item.nama] = item;
        }
        return akumulasi;
    }, {});
    
    var data = {
        "status": 200,
        "values": hasil
    }

    res.json(data);
    res.end();
}