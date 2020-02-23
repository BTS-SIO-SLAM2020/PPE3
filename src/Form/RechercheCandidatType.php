<?php

namespace App\Form;

use App\Entity\RechercheCandidat;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class RechercheCandidatType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('minInscription', DateType::class, ["required"=>false, 
                "label"=>"date début"])
            ->add('maxInscription', DateType::class, ["required"=>false, 
            "label"=>"date fin"])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => RechercheCandidat::class,
        ]);
    }
}
