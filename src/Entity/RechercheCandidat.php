<?php

namespace App\Entity;
use Symfony\Component\Validator\Constraints as Assert;

class RechercheCandidat{

    /**
     * @Assert\LessThanOrEqual(propertyPath="maxInscription", message="doit être plus petit que la date maxi inscription")
     */
    private $minInscription;

    /**
     * @Assert\GreaterThanOrEqual(propertyPath="minInscription", message="doit être plus grand que la date mini inscription")
     */
    private $maxInscription;

    public function getMinInscription(){
        return $this->minInscription;
    }

    public function getMaxInscription(){
        return $this->maxInscription;
    }

    public function setMinInscription($date ){
        $this->minInscription=$date;
        return $this;
    }

    public function setMaxInscription($date ){
        $this->maxInscription=$date;
        return $this;
    }



}