<?php

namespace App\Repository;

use Doctrine\ORM\Query;
use App\Entity\Candidature;
use App\Entity\RechercheCandidat;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;

/**
 * @method Candidature|null find($id, $lockMode = null, $lockVersion = null)
 * @method Candidature|null findOneBy(array $criteria, array $orderBy = null)
 * @method Candidature[]    findAll()
 * @method Candidature[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CandidatureRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Candidature::class);
    }

    public function findAllWithPagination(RechercheCandidat $rechercheCandidat): Query{
        $req=$this->createQueryBuilder('v');
        if($rechercheCandidat->getMinInscription()){
            $req=$req->andWhere('v.createdAt >:min')->setParameter(':min', $rechercheCandidat->getMinInscription());
        }
        return $req->getQuery();
        if($rechercheCandidat->getMaxInscription()){
            $req=$req->andWhere('v.createdAt <:max')->setParameter(':max', $rechercheCandidat->getMaxInscription());
        }
        return $req->getQuery();
    }

    // /**
    //  * @return Candidature[] Returns an array of Candidature objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Candidature
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
