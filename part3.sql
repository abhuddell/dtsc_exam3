
SELECT *
FROM Customer;

SELECT LastName, FirstName, Address
FROM Employee;

SELECT Track.Name, Album.Title
FROM Track
LEFT JOIN Album
on Track.AlbumId = Album.AlbumId;

SELECT t.Name, a.Title, ar.Name
FROM Track as t
LEFT JOIN Album as a
on t.AlbumId = a.AlbumId
LEFT JOIN Artist AS ar
ON a.ArtistID = ar.ArtistID
LEFT JOIN Genre AS Genre
ON t.GenreID = g.GenreID
WHERE g.Name = 'Punk';

SELECT Composer
FROM Track
WHERE AlbumID IN (SELECT AlbumID
                    FROM Album
                    WHERE ArtistID IN (SELECT ArtistID 
                                        FROM Artist
                                        WHERE Name = "Insane Clown Posse"));

(OR:)

SELECT Track.Composer
FROM Track
LEFT JOIN Album
ON Track.AlbumID = Album.AlbumID
LEFT JOIN Artist
ON Album.ArtistID = Artist.ArtistID
WHERE Artist.Name = "Insane Clown Posse";