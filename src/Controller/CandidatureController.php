<?php

namespace App\Controller;

use App\Entity\Candidature;
use App\Repository\CandidatureRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class CandidatureController extends AbstractController
{
    /**
     * @Route("admin1/candidature", name="listeCandidatures")
     */
    public function index(CandidatureRepository $candidatureRepository, PaginatorInterface $paginatorInterface, Request $request)
    {
        
        $candidatures=$paginatorInterface->paginate(
            $candidatureRepository->findAllWithPagination(), /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            6/*limit per page*/);
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
