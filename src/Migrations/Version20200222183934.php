<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200222183934 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE candidature DROP FOREIGN KEY FK_E33BD3B84B58B3B');
        $this->addSql('ALTER TABLE specialite_formation_propose DROP FOREIGN KEY FK_54B198074B58B3B');
        $this->addSql('ALTER TABLE candidature DROP FOREIGN KEY FK_E33BD3B82195E0F0');
        $this->addSql('ALTER TABLE specialite_formation_propose DROP FOREIGN KEY FK_54B198072195E0F0');
        $this->addSql('DROP TABLE formation_propose');
        $this->addSql('DROP TABLE specialite');
        $this->addSql('DROP TABLE specialite_formation_propose');
        $this->addSql('DROP INDEX IDX_E33BD3B84B58B3B ON candidature');
        $this->addSql('DROP INDEX IDX_E33BD3B82195E0F0 ON candidature');
        $this->addSql('ALTER TABLE candidature DROP formation_propose_id, DROP specialite_id, DROP nom, DROP prenom, DROP date_naissance, DROP adresse, DROP code_postal, DROP ville, DROP pays, DROP email, DROP telephone, DROP statut_professionnel, DROP niveau_etude');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE formation_propose (id INT AUTO_INCREMENT NOT NULL, libelle VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE specialite (id INT AUTO_INCREMENT NOT NULL, libelle VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE specialite_formation_propose (specialite_id INT NOT NULL, formation_propose_id INT NOT NULL, INDEX IDX_54B198074B58B3B (formation_propose_id), INDEX IDX_54B198072195E0F0 (specialite_id), PRIMARY KEY(specialite_id, formation_propose_id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE specialite_formation_propose ADD CONSTRAINT FK_54B198072195E0F0 FOREIGN KEY (specialite_id) REFERENCES specialite (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE specialite_formation_propose ADD CONSTRAINT FK_54B198074B58B3B FOREIGN KEY (formation_propose_id) REFERENCES formation_propose (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE candidature ADD formation_propose_id INT DEFAULT NULL, ADD specialite_id INT DEFAULT NULL, ADD nom VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD prenom VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD date_naissance DATE NOT NULL, ADD adresse LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD code_postal VARCHAR(5) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD ville VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD pays VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD email VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD telephone VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD statut_professionnel VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, ADD niveau_etude VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`');
        $this->addSql('ALTER TABLE candidature ADD CONSTRAINT FK_E33BD3B82195E0F0 FOREIGN KEY (specialite_id) REFERENCES specialite (id)');
        $this->addSql('ALTER TABLE candidature ADD CONSTRAINT FK_E33BD3B84B58B3B FOREIGN KEY (formation_propose_id) REFERENCES formation_propose (id)');
        $this->addSql('CREATE INDEX IDX_E33BD3B84B58B3B ON candidature (formation_propose_id)');
        $this->addSql('CREATE INDEX IDX_E33BD3B82195E0F0 ON candidature (specialite_id)');
    }
}
