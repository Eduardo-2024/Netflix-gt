CREATE TABLE encabezado_pelicula (
    pelicula_seq INT AUTO_INCREMENT NOT NULL,
    enc_titulo_pelicula VARCHAR(50),
    enc_ao_lanzamiento INT,
    enc_sipnosis VARCHAR(80),
    enc_genero VARCHAR(50),
    PRIMARY KEY (pelicula_seq)
);

CREATE TABLE detalle_pelicula (
    id_pelicula INT NOT NULL,
    enc_pelicula INT,
    al_idioma VARCHAR(50),
    al_subtitulos VARCHAR(50),
    al_duracion INT,
    al_fecha_lanzamiento DATE,
    pelicula_seq INT NOT NULL,
    PRIMARY KEY (id_pelicula)
);

ALTER TABLE detalle_pelicula 
ADD CONSTRAINT encabezado_pelicula_detalle_pelicula_fk
FOREIGN KEY (pelicula_seq)
REFERENCES encabezado_pelicula (pelicula_seq)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
