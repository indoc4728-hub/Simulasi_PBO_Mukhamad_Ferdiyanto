<?php

require_once "Pendaftaran.php";

class PendaftaranKedinasan extends Pendaftaran
{
    protected $skIkatanDinas;
    protected $instansiSponsor;

    public function __construct($data)
    {
        parent::__construct($data);

        $this->skIkatanDinas = $data['sk_ikatan_dinas'];
        $this->instansiSponsor = $data['instansi_sponsor'];
    }

    public function getDaftarKedinasan($db)
    {
        $query = "SELECT * FROM tabel_pendaftaran WHERE jalur_pendaftaran='Kedinasan'";
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