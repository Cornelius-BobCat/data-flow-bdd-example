SELECT
    C.Nom AS Nom_Client,
    P.Nom AS Nom_Produit,
    P.Prix
FROM
    Clients C
INNER JOIN
    Commandes CM ON C.ID = CM.ID_Client
INNER JOIN
    Details_Commandes DC ON CM.ID = DC.ID_Commande
INNER JOIN
    Produits P ON DC.ID_Produit = P.ID
WHERE
    P.Prix > (
        SELECT AVG(Prix) FROM Produits
    )
ORDER BY
    C.Nom, P.Nom;
