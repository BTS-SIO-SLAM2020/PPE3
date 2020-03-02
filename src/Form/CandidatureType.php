<?php

namespace App\Form;

use App\Entity\Candidature;
use App\Entity\FormationPropose;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CandidatureType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('civilite')
            ->add('Nom')
            ->add('prenom')
            ->add('dateNaissance')
            ->add('adresse')
            ->add('codePostal')
            ->add('ville')
            ->add('pays')
            ->add('email')
            ->add('telephone')
            ->add('niveauEtude')
            ->add('statutProfessionnel')
            ->add('message')
            ->add('formationPropose', EntityType::class,['class'=>FormationPropose::class,'choice_label'=>('id')])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Candidature::class,
        ]);
    }
}
