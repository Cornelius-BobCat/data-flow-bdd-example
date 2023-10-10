-- Insertion de données clients
INSERT INTO Clients (ID, Nom, Email, Adresse)
VALUES
    (1, 'Client 1', 'client1@email.com', 'Adresse 1'),
    (2, 'Client 2', 'client2@email.com', 'Adresse 2'),
    (3, 'Client 3', 'client3@email.com', 'Adresse 3'),
    (4, 'Client 4', 'client4@email.com', 'Adresse 4'),
    (5, 'Client 5', 'client5@email.com', 'Adresse 5');

-- Insertion de données produits
INSERT INTO Produits (ID, Nom, Prix)
VALUES
    (1, 'Produit A', 10.99),
    (2, 'Produit B', 5.99),
    (3, 'Produit C', 7.49),
    (4, 'Produit D', 12.99),
    (5, 'Produit E', 8.49);

-- Insertion de données commandes
INSERT INTO Commandes (ID, ID_Client, Date_Commande)
VALUES
    (1, 1, '2023-01-15'),
    (2, 2, '2023-02-20'),
    (3, 3, '2023-03-25'),
    (4, 4, '2023-04-10'),
    (5, 5, '2023-05-05');

-- Insertion de données détails de commandes
INSERT INTO Details_Commandes (ID_Commande, ID_Produit, Quantité)
VALUES
    (1, 1, 3),
    (1, 2, 2),
    (2, 2, 4),
    (2, 3, 1),
    (3, 3, 5),
    (3, 1, 2),
    (4, 4, 3),
    (4, 5, 2),
    (5, 5, 4),
    (5, 1, 1);
