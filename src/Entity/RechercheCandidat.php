<?php

namespace App\Entity;

use Symfony\Component\Form\Extension\Core\Type\DateType;

class RechercheCandidat{
    private $minInscription;
    private $maxInscription;

    public function getMinInscription(){
        return $this->minInscription;
    }

    public function getMaxInscription(){
        return $this->maxInscription;
    }

    public function setMinInscription(DateType $date ){
        $this->minInscription=$date;
        return $this;
    }

    public function setMaxInscription(DateType $date ){
        $this->maxInscription=$date;
        return $this;
    }



}