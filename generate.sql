-- Création de la table Clients
CREATE TABLE Clients (
    ID INT PRIMARY KEY,
    Nom VARCHAR(255),
    Email VARCHAR(255),
    Adresse VARCHAR(255)
);

-- Création de la table Produits
CREATE TABLE Produits (
    ID INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prix DECIMAL(10, 2)
);

-- Création de la table Commandes
CREATE TABLE Commandes (
    ID INT PRIMARY KEY,
    ID_Client INT,
    Date_Commande DATE,
    FOREIGN KEY (ID_Client) REFERENCES Clients(ID)
);

-- Création de la table Détails_Commandes
CREATE TABLE Details_Commandes (
    ID_Commande INT,
    ID_Produit INT,
    Quantité INT,
    FOREIGN KEY (ID_Commande) REFERENCES Commandes(ID),
    FOREIGN KEY (ID_Produit) REFERENCES Produits(ID)
);
