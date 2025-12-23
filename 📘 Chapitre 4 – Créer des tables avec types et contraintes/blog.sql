USE gestion_blog;

CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT NOT NULL,
    datepub DATE,
    id_utilisateur INT,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id)
);

CREATE TABLE commentaire (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL,
    auteur VARCHAR(100),
    date_commentaire DATE,
    id_article INT,
    FOREIGN KEY (id_article) REFERENCES article(id)
);

SHOW TABLES;
