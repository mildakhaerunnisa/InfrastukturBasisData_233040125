SELECT [jurusan], COUNT (*) AS jumlah_total_mahasiswa
FROM [dbo].[mahasiswa]
GROUP BY [jurusan]