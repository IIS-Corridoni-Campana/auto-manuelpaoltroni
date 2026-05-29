CREATE TABLE Costruttore
(
  id INT NOT NULL,
  nome VARCHAR NOT NULL,
  nazione VARCHAR NOT NULL,
  citta VARCHAR NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Automobile
(
  id INT NOT NULL,
  modello VARCHAR NOT NULL,
  anno_modello DATE NOT NULL,
  nazione VARCHAR NOT NULL,
  cilindrata INT NOT NULL,
  alimentazione VARCHAR NOT NULL,
  targa CHAR NOT NULL,
  tipo_auto VARCHAR NOT NULL,
  disponibile INT NOT NULL,
  co_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (co_id) REFERENCES Costruttore(id)
);

CREATE TABLE Patente
(
  data_rilascio DATE NOT NULL,
  data_scadenza DATE NOT NULL,
  tipo VARCHAR NOT NULL,
  id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Cliente
(
  id INT NOT NULL,
  nome VARCHAR NOT NULL,
  cognome VARCHAR NOT NULL,
  data_nascita DATE NOT NULL,
  cod_fiscale CHAR NOT NULL,
  p_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (p_id) REFERENCES Patente(id)
);

CREATE TABLE noleggio
(
  id INT NOT NULL,
  data_inizio DATE NOT NULL,
  data_fine DATE NOT NULL,
  costo FLOAT NOT NULL,
  cl_id INT NOT NULL,
  a_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (cl_id) REFERENCES Cliente(id),
  FOREIGN KEY (a_id) REFERENCES Automobile(id)
);