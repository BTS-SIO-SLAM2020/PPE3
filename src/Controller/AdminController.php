<?php

namespace App\Controller;

use App\Entity\Candidature;
use App\Entity\RechercheCandidat;
use App\Form\CandidatureType;
use App\Form\RechercheCandidatType;
use App\Repository\CandidatureRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminController extends AbstractController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(CandidatureRepository $candidatureRepository, PaginatorInterface $paginatorInterface, Request $request)
    {
        $rechercheCandidat= new RechercheCandidat();
        $form=$this->createForm(RechercheCandidatType::class, $rechercheCandidat);
        $form->handleRequest($request);

        $candidatures=$paginatorInterface->paginate(
            $candidatureRepository->findAllWithPagination($rechercheCandidat), /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            6/*limit per page*/);
            return $this->render('candidature/listeCandidature.html.twig', [
            'candidatures' => $candidatures,
            "form"=>$form->createView(),
            "admin"=>true

        ]);
    }

     /**
     *  @Route("/", name="inscription")
     * @Route("/admin/candidat/{id}", name="modificationInscription", methods="GET|POST")
     */
    public function modification(Candidature $candidat=null, Request $request, EntityManagerInterface $om)
    {   
        $creation=false;
        if(!$candidat){
            $candidat=new Candidature();
            $creation=true;
        }
        $form=$this->createForm(CandidatureType::class, $candidat);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            if(!$candidat) {
            $candidat->setCreatedAt( new \DateTime("now"));
            }
            $om->persist($candidat);
            $om->flush();
            $this->addFlash('success',"Inscription enregistrée");
            if($creation){
            return $this->redirectToRoute("inscription");
            }
            else{
                return $this->redirectToRoute("admin");
            }
        }

        return $this->render('admin/modificationCandidat.html.twig', [
            "candidat" => $candidat,
            "form"=>$form->createView()]);
            


    }

    /**
     * @Route("/admin/{id}", name="supCandidat",methods="SUP")
     */
    public function suppression(Candidature $candidat=null, Request $request, EntityManagerInterface $om)
    {   
        if($this->isCsrfTokenValid('SUP'.$candidat->getId(),$request->get("_token"))){
            $om->remove($candidat);
            $om->flush();
            return $this->redirectToRoute("admin");
        }
    }    
}
