CREATE DATABASE Faculdade;
USE Faculdade;
CREATE TABLE Professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE Aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    curso VARCHAR(50) NOT NULL,
    data_matricula DATE NOT NULL
);
CREATE TABLE Disciplina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT DEFAULT 60,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professor(id) ON DELETE SET NULL
);
INSERT INTO Professor (nome, titulacao, data_inicio, email)
VALUES 
('Carlos Silva', 'Doutor', '2015-02-15', 'carlos.silva@faculdade.edu'),
('Ana Souza', 'Mestre', '2018-07-10', 'ana.souza@faculdade.edu');
INSERT INTO Aluno (nome, matricula, curso, data_matricula)
VALUES 
('João Pereira', '202301001', 'Engenharia', '2023-01-20'),
('Maria Oliveira', '202301002', 'Administração', '2023-01-20');
INSERT INTO Disciplina (nome, carga_horaria, professor_id)
VALUES 
('Cálculo I', 80, 1),
('Gestão de Projetos', 60, 2);