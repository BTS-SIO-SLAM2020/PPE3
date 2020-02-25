<?php

namespace App\Controller;

use App\Entity\FormationPropose;
use App\Form\FormationProposeType;
use App\Repository\FormationProposeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminFormationController extends AbstractController
{
    /**
     * @Route("/admin/formations", name="adminFormation")
     */
    public function adminFormation(FormationProposeRepository $repo)
    {
        $formations=$repo->findAll();
        return $this->render('admin/listeFormations.html.twig', ['formations'=>$formations]);
    }

    /**
     * @Route("/admin/formations/create", name="ajoutFormation")
     * @Route("/admin/formations/{id}", name="modifFormation", methods="POST|GET")
     */
    public function ajoutEtModif(FormationPropose $formation=null, Request $request, EntityManagerInterface $om)
    {
        if(!$formation){
            $formation=new FormationPropose();
        }
        
        $form=$this->createForm(FormationProposeType::class,$formation );
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $om->persist($formation);
            $om->flush();
            $this->addFlash('success', "l'action a bien été réalisée");
            return $this->redirectToRoute("adminFormation");
            
        }
        return $this->render('admin/modifFormation.html.twig', ['formation'=>$formation, "form"=>$form->createView() ]);
    }

    /**
     * @Route("/admin/formations/{id}", name="supFormation", methods="SUP")
     */
    public function suppression(FormationPropose $formation=null, Request $request, EntityManagerInterface $om) {

        if($this->isCsrfTokenValid("SUP".$formation->getId(), $request->get('_token'))){
            $om->remove($formation);
            $om->flush();
            $this->addFlash('success', "l'action a bien été réalisée");
            return $this->redirectToRoute("adminFormation");
        }
        return $this->redirectToRoute("adminFormation");
       
    }
   
}
