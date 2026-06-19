<?php

require_once "Pendaftaran.php";

class PendaftaranReguler extends Pendaftaran
{
    protected $pilihanProdi;
    protected $lokasiKampus;

    public function __construct($data)
    {
        parent::__construct($data);

        $this->pilihanProdi = $data['pilihan_prodi'];
        $this->lokasiKampus = $data['lokasi_kampus'];
    }

    public function getDaftarReguler($db)
    {
        $query = "SELECT * FROM tabel_pendaftaran WHERE jalur_pendaftaran='Reguler'";
        return $db->query($query);
    }

    public function hitungTotalBiaya()
    {
        return $this->biayaPendaftaranDasar;
    }

    public function tampilkanInfoJalur()
    {
        return "Pilihan Prodi : " . $this->pilihanProdi .
               "<br>Lokasi Kampus : " . $this->lokasiKampus;
    }
}

?>