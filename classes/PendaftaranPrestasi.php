<?php

require_once "Pendaftaran.php";

class PendaftaranPrestasi extends Pendaftaran
{
    protected $jenisPrestasi;
    protected $tingkatPrestasi;

    public function __construct($data)
    {
        parent::__construct($data);

        $this->jenisPrestasi = $data['jenis_prestasi'];
        $this->tingkatPrestasi = $data['tingkat_prestasi'];
    }

    public function getDaftarPrestasi($db)
    {
        $query = "SELECT * FROM tabel_pendaftaran WHERE jalur_pendaftaran='Prestasi'";
        return $db->query($query);
    }

    public function hitungTotalBiaya()
    {

    }

    public function tampilkanInfoJalur()
    {

    }
}

?>