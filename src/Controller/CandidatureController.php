<?php

namespace App\Controller;

use App\Entity\Candidature;
use App\Repository\CandidatureRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class CandidatureController extends AbstractController
{
    /**
     * @Route("admin1/candidature", name="listeCandidatures")
     */
    public function index(CandidatureRepository $candidatureRepository)
    {
        $candidatures=$candidatureRepository->findAll();
        return $this->render('candidature/listeCandidature.html.twig', [
            'candidatures' => $candidatures
        ]);
    }

     /**
     * @Route("admin1/candidat/{id}", name="candidat")
     */
    public function AfficherCandidat( Candidature $candidat)
    {
        
        return $this->render('candidature/afficherCandidat.html.twig',["candidat" =>$candidat]);
    }
   
}
