<?php

namespace App\Controller;

use App\Entity\Utilisateurs;
use App\Form\InscriptionType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class SecurityController extends AbstractController
{
    /**
     * @Route("/administreur", name="newAdministreur")
     */
    public function index(Request $request, EntityManagerInterface $om,UserPasswordEncoderInterface $encoder)
    {
        $utilisateur=new Utilisateurs();
        $form=$this->createForm(InscriptionType::class, $utilisateur);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            $passwordCrypte=$encoder->encodePassword($utilisateur, $utilisateur->getPassword());
            $utilisateur->setPassword($passwordCrypte);
            $utilisateur->setRoles("ROLE_USER");
            $om->persist($utilisateur);
            $om->flush();
            return $this->redirectToRoute('inscription');
        }
        return $this->render('administrateur/newAdministrateur.html.twig', [            
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("/login", name="login")
     */
    public function login()
    {
         return $this->render('administrateur/login.html.twig');
    }

     /**
     * @Route("/logout", name="logout")
     */
    public function logout()
    {
       
    }





}
