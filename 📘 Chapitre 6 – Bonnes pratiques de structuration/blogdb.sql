CREATE DATABASE blogdb;
USE blogdb;

CREATE TABLE utilisateur (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE article (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titre VARCHAR(150) NOT NULL,
  contenu TEXT NOT NULL,
  date_pub DATETIME,
  id_utilisateur INT NOT NULL,
  FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id)
);

CREATE TABLE commentaire (
  id INT AUTO_INCREMENT PRIMARY KEY,
  contenu TEXT NOT NULL,
  date_commentaire DATETIME,
  id_article INT NOT NULL,
  id_utilisateur INT NOT NULL,
  FOREIGN KEY (id_article) REFERENCES article(id),
  FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id)
);

CREATE INDEX idx_email ON utilisateur(email);
