<?php

namespace App\Repository;

use App\Entity\FormationPropose;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method FormationPropose|null find($id, $lockMode = null, $lockVersion = null)
 * @method FormationPropose|null findOneBy(array $criteria, array $orderBy = null)
 * @method FormationPropose[]    findAll()
 * @method FormationPropose[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FormationProposeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, FormationPropose::class);
    }

    // /**
    //  * @return FormationPropose[] Returns an array of FormationPropose objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('f.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?FormationPropose
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
