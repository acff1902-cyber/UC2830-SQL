-- 1. Gestão de uma Escola (escola_Braga)

CREATE DATABASE IF NOT EXISTS escola_Braga;
USE escola_Braga;

-- 2. Criar Três tabelas (alunos, cursos e professores) estruturadas e definidas chaves primárias (PRIMARY KEY), auto-incremento e restrições

-- Tabela: alunos 
CREATE TABLE IF NOT EXISTS alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    nif CHAR(9) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15)
    );

-- Tabela: cursos
CREATE TABLE IF NOT EXISTS cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    codigo_curso VARCHAR(20) UNIQUE NOT NULL,
    duracao_horas INT NOT NULL,
    nivel VARCHAR(50) DEFAULT 'Nível 4'
);

-- Tabela: professores
CREATE TABLE IF NOT EXISTS professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    data_contratacao DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL
);
-- 3. Inserção de dados e preenchimento de (25 alunos, 20 cursos e 15 professores)

-- Inserção de 25 Alunos (dados)
INSERT INTO alunos (nome, email, nif, data_nascimento, telefone) VALUES
('Ana Silva', 'ana.silva@email.com', '123456789', '2002-05-14', '912345678'),
('Bernardo Costa', 'bernardo.costa@email.com', '234567890', '2001-11-20', '923456789'),
('Carla Oliveira', 'carla.oliveira@email.com', '345678901', '2003-02-10', '934567890'),
('Daniel Santos', 'daniel.santos@email.com', '456789012', '2000-08-05', '945678901'),
('Eduarda Pereira', 'eduarda.pereira@email.com', '567890123', '2002-12-30', '956789012'),
('Fernando Rocha', 'fernando.rocha@email.com', '678901234', '1999-04-18', '967890123'),
('Gabriela Martins', 'gabriela.martins@email.com', '789012345', '2004-01-22', '978901234'),
('Hugo Ribeiro', 'hugo.ribeiro@email.com', '890123456', '2001-09-12', '989012345'),
('Inês Ferreira', 'ines.ferreira@email.com', '901234567', '2003-07-07', '990123456'),
('João Pinto', 'joao.pinto@email.com', '112233445', '2002-03-15', '911223344'),
('Kátia Alves', 'katia.alves@email.com', '223344556', '2000-10-25', '922334455'),
('Luís Carvalho', 'luis.carvalho@email.com', '334455667', '2001-06-30', '933445566'),
('Mariana Gomes', 'mariana.gomes@email.com', '445566778', '2003-11-11', '944556677'),
('Nuno Marques', 'nuno.marques@email.com', '556677889', '2002-08-19', '955667788'),
('Olívia Mendes', 'olivia.mendes@email.com', '667788990', '2004-04-04', '966778899'),
('Paulo Sousa', 'paulo.sousa@email.com', '778899001', '1998-12-01', '977889900'),
('Rita Teixeira', 'rita.teixeira@email.com', '889900112', '2003-05-17', '988990011'),
('Sérgio Lopes', 'sergio.lopes@email.com', '990011223', '2001-01-29', '999001122'),
('Tânia Barbosa', 'tania.barbosa@email.com', '101112131', '2002-09-09', '910111213'),
('Urbano Neves', 'urbano.neves@email.com', '121314151', '2000-03-03', '912131415'),
('Vânia Rodrigues', 'vania.rodrigues@email.com', '141516171', '2003-10-14', '914151617'),
('Xavier Cardoso', 'xavier.cardoso@email.com', '161718191', '2001-07-21', '916171819'),
('Yara Fonseca', 'yara.fonseca@email.com', '181920212', '2004-02-28', '918192021'),
('Zé Maria Ramos', 'zemaria.ramos@email.com', '202122232', '1999-11-05', '920212223'),
('Beatriz Lima', 'beatriz.lima@email.com', '222324252', '2002-06-16', '922232425');

-- Inserção de 20 Cursos (dados)
INSERT INTO cursos (nome_curso, codigo_curso, duracao_horas, nivel) VALUES
('Programação SQL e Bases de Dados', 'CS-SQL-01', 50, 'Nível 4'),
('Desenvolvimento Web Frontend', 'CS-WEB-01', 100, 'Nível 4'),
('Desenvolvimento Web Backend', 'CS-WEB-02', 120, 'Nível 5'),
('Introdução à Cibersegurança', 'CS-CYB-01', 60, 'Nível 4'),
('Administração de Redes', 'CS-NET-01', 80, 'Nível 4'),
('Análise de Dados com Python', 'CS-DAT-01', 90, 'Nível 5'),
('Design de Interfaces UI/UX', 'CS-DSG-01', 75, 'Nível 4'),
('Gestão de Sistemas CMS', 'CS-CMS-01', 40, 'Nível 3'),
('Marketing Digital', 'CS-MKT-01', 50, 'Nível 3'),
('Inteligência Artificial Aplicada', 'CS-AI-01', 150, 'Nível 5'),
('Engenharia de Software', 'CS-ENG-01', 200, 'Nível 5'),
('Computação em Nuvem (Cloud)', 'CS-CLD-01', 80, 'Nível 4'),
('Desenvolvimento de Apps Móveis', 'CS-MOB-01', 110, 'Nível 5'),
('Gestão de Projetos IT', 'CS-MNG-01', 60, 'Nível 4'),
('Suporte Técnico e Hardware', 'CS-SUP-01', 45, 'Nível 3'),
('Algoritmos e Estruturas de Dados', 'CS-ALG-01', 70, 'Nível 4'),
('DevOps e Integração Contínua', 'CS-DVP-01', 85, 'Nível 5'),
('Modelação 3D e Animação', 'CS-3D-01', 95, 'Nível 4'),
('Internet das Coisas (IoT)', 'CS-IOT-01', 65, 'Nível 4'),
('Sistemas Operativos Linux', 'CS-LNX-01', 55, 'Nível 4');

-- Inserção de 15 Professores (dados)
INSERT INTO professores (nome, email, especialidade, data_contratacao, salario) VALUES
('Reinaldo Borba Pires', 'reinaldo.pires@escola.pt', 'Bases de Dados e SQL', '2015-09-01', 2800.00),
('Carlos Alberto', 'carlos.alberto@escola.pt', 'Programação Web', '2017-01-15', 2400.50),
('Maria João Santos', 'maria.santos@escola.pt', 'Engenharia de Software', '2016-03-10', 2600.00),
('António Silva', 'antonio.silva@escola.pt', 'Redes e Cibersegurança', '2018-11-01', 2300.00),
('Sofia Monteiro', 'sofia.monteiro@escola.pt', 'Data Science e IA', '2019-09-15', 2700.00),
('Manuel Fernandes', 'manuel.fernandes@escola.pt', 'Sistemas Operativos', '2014-05-20', 2550.00),
('Teresa Coimbra', 'teresa.coimbra@escola.pt', 'Design UI/UX', '2020-02-01', 2100.00),
('Pedro Alvares', 'pedro.alvares@escola.pt', 'Gestão de Projetos', '2013-10-10', 2900.00),
('Helena Ramos', 'helena.ramos@escola.pt', 'Marketing Digital', '2021-09-01', 1950.00),
('Rui Castro', 'rui.castro@escola.pt', 'Desenvolvimento Mobile', '2018-04-12', 2450.00),
('Cátia Figueiredo', 'catia.figueiredo@escola.pt', 'Sistemas CMS', '2019-10-05', 2050.00),
('Diogo Magalhães', 'diogo.magalhaes@escola.pt', 'Cloud Computing', '2022-01-10', 2500.00),
('Patrícia Nunes', 'patricia.nunes@escola.pt', 'DevOps', '2020-06-15', 2650.00),
('Jorge Vicente', 'jorge.vicente@escola.pt', 'Hardware e Suporte', '2012-09-01', 2200.00),
('Laura Bispo', 'laura.bispo@escola.pt', 'IoT e Eletrónica', '2021-03-20', 2350.00);
