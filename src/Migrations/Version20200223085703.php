<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200223085703 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE candidature ADD nom VARCHAR(255) NOT NULL, ADD prenom VARCHAR(255) NOT NULL, ADD date_naissance DATE NOT NULL, ADD adresse LONGTEXT NOT NULL, ADD code_postal VARCHAR(5) NOT NULL, ADD ville VARCHAR(255) NOT NULL, ADD pays VARCHAR(255) NOT NULL, ADD email VARCHAR(255) NOT NULL, ADD telephone VARCHAR(255) NOT NULL, ADD niveau_etude VARCHAR(255) NOT NULL, ADD statut_professionnel VARCHAR(255) NOT NULL, ADD message LONGTEXT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE candidature DROP nom, DROP prenom, DROP date_naissance, DROP adresse, DROP code_postal, DROP ville, DROP pays, DROP email, DROP telephone, DROP niveau_etude, DROP statut_professionnel, DROP message');
    }
}
