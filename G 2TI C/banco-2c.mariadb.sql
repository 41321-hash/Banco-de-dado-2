CREATE TABLE cursos (
    id             INT PRIMARY KEY AUTO_INCREMENT,
    titulo         VARCHAR(150) NOT NULL,
    descricao      TEXT,
    instrutor_id   INT NOT NULL,
    categoria_id   INT NOT NULL,
    preco          DECIMAL(8,2) NOT NULL,
    nivel          varchar(40) NOT NULL,
    carga_horaria  INT not null,
    publicado      TINYINT(1) DEFAULT 0,
    criado_em      DATE NOT NULL,
    FOREIGN KEY (instrutor_id)  REFERENCES instrutores(id),
    FOREIGN KEY (categoria_id)  REFERENCES categorias(id)
);


CREATE TABLE instrutores (
    id          INT PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(100) NOT NULL,
    email       VARCHAR(120) UNIQUE NOT NULL,
    especialidade VARCHAR(80),
    nota_media  DECIMAL(3,2),
    ativo       TINYINT(1) DEFAULT 1,
    criado_em   DATE NOT NULL
);

INSERT INTO instrutores (nome, email, especialidade, nota_media, ativo, criado_em) VALUES
('Carla Mendes',    'carla@techlearn.com',  'Banco de Dados',        4.85, 1, '2021-03-10'),
('Rafael Torres',   'rafael@techlearn.com', 'Desenvolvimento Web',   4.60, 1, '2021-05-22'),
('Aline Fonseca',   'aline@techlearn.com',  'Data Science',          4.90, 1, '2021-07-01'),
('Bruno Salave',    'bruno@techlearn.com',  'DevOps',                4.30, 1, '2022-01-15'),
('Tatiane Rocha',   'tatiane@techlearn.com','Mobile',                4.70, 1, '2022-04-08'),
('Marcos Oliveira', 'marcos@techlearn.com', 'Segurança da Informação',4.20, 0, '2020-11-30');


INSERT INTO cursos (titulo, descricao, instrutor_id, categoria_id, preco, nivel, carga_horaria, publicado, criado_em) VALUES
('SQL do Zero ao Avançado',       'Aprenda SQL completo com projetos reais.',         1, 1, 97.90,  'iniciante',     40, 1, '2021-04-01'),
('MySQL para Desenvolvedores',    'Otimização e modelagem avançada em MySQL.',        1, 1, 147.00, 'avancado',      30, 1, '2021-09-15'),
('HTML, CSS e JavaScript',        'Front-end moderno do absoluto zero.',              2, 2, 79.90,  'iniciante',     60, 1, '2021-06-10'),
('React na Prática',              'Componentes, hooks e projetos completos.',         2, 2, 129.00, 'intermediario', 35, 1, '2022-02-20'),
('Python para Data Science',      'Pandas, NumPy, visualização e ML básico.',         3, 3, 197.00, 'intermediario', 50, 1, '2021-08-05'),
('Machine Learning com Python',   'Algoritmos supervisionados e não-supervisionados.',3, 3, 249.00, 'avancado',      45, 1, '2022-03-12'),
('Docker e Kubernetes',           'Containers do zero ao cluster em produção.',       4, 4, 159.00, 'intermediario', 28, 1, '2022-05-01'),
('CI/CD com GitHub Actions',      'Pipelines automáticos para projetos modernos.',    4, 4, 89.00,  'intermediario', 15, 0, '2023-01-10'),
('Flutter Completo',              'Apps Android e iOS com um único código.',          5, 5, 179.00, 'iniciante',     55, 1, '2022-06-18'),
('Pentest para Iniciantes',       'Fundamentos de ethical hacking.',                  6, 6, 119.00, 'iniciante',     20, 0, '2021-12-01');
