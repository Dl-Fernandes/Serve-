CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    cargo VARCHAR(20) NOT NULL,
    genero CHAR(1) NOT NULL,
    nivel_acesso VARCHAR(30) NOT NULL,
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE postos (
    id SERIAL PRIMARY KEY,
    nome_posto VARCHAR(100) NOT NULL,
    exige_genero CHAR(1) NOT NULL,
    exige_cargo VARCHAR(20) NOT NULL
);

CREATE TABLE cultos (
    id SERIAL PRIMARY KEY,
    data_culto DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    tipo_culto VARCHAR(50) NOT NULL
);


CREATE TABLE indisponibilidades (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE escalas (
    id SERIAL PRIMARY KEY,
    culto_id INT NOT NULL,
    posto_id INT NOT NULL,
    usuario_id INT NOT NULL,
    CONSTRAINT fk_culto FOREIGN KEY (culto_id) REFERENCES cultos(id) ON DELETE CASCADE,
    CONSTRAINT fk_posto FOREIGN KEY (posto_id) REFERENCES postos(id) ON DELETE CASCADE,
    CONSTRAINT fk_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    CONSTRAINT uk_culto_usuario UNIQUE (culto_id, usuario_id),
    CONSTRAINT uk_culto_posto UNIQUE (culto_id, posto_id)
);