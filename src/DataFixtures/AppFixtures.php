<?php

namespace App\DataFixtures;

use App\Entity\Candidature;
use Faker\Factory;
use App\Entity\FormationPropose;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $f1=new FormationPropose();
        $f1->setdiplome("BTS")
            ->setSpecialite("SIO SLAM");
        $manager->persist($f1);

        
        $f2=new FormationPropose();
        $f2->setdiplome("BTS")
            ->setSpecialite("SIO SISR");
        $manager->persist($f2);

        
        $f3=new FormationPropose();
        $f3->setdiplome("BTS")
            ->setSpecialite("ASSURANCE");
        $manager->persist($f3);


        
        $f4=new FormationPropose();
        $f4->setdiplome("BTS")
            ->setSpecialite("MUC");
        $manager->persist($f4);

        $formations=[$f1,$f2,$f3,$f4];
        $faker = \Faker\Factory::create('fr_FR');       

        foreach($formations as $formation){
            $rand=rand(10,15);
            for($i=1;$i<=$rand;$i++){
               $candidat=new Candidature();
               $candidat->setCivilite($faker->randomElement($array = array ('Mr','Mme')))
                        ->setNom($faker->lastName())
                        ->setPrenom($faker->firstName())
                        ->setAdresse($faker->streetAddress())
                        ->setCodePostal($faker->regexify("[0-9]{5}"))
                        ->setVille($faker->city())
                        ->setPays('FRANCE')
                        ->setCreatedAt($faker->dateTimeBetween($startDate = '-1 years', $endDate = 'now', $timezone = null))
                        ->setDateNaissance($faker->dateTimeBetween($startDate = '-50 years', $endDate = '-18 years', $timezone = null))
                        ->setEmail($faker->email())
                        ->setTelephone($faker->e164PhoneNumber())
                        ->setNiveauEtude($faker->randomElement($array = array ('BAC','BAC+2','BAC+3','BAC+4','BAC+5')))
                        ->setStatutProfessionnel($faker->randomElement($array = array ('CDI','CDD','INTERIM','Demandeur d\'emploi')))
                        ->setMessage($faker->text($maxNbChars = 80))
                        ->setFormationPropose($formation);

                $manager->persist($candidat);
                        

            }
        }
     
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
