-- alias as default lowercase
SELECT  id          AS Kode,
        price       AS Karga,
        description AS Keskripsi
FROM products;

-- more than word must be use double quotes and non-lowercase
SELECT  id          AS "Kode Barang",
        price       AS "Harga Barang",
        description AS "Deskripsi Barang"
FROM products;
