---Lista 10---

--Q1--
data ItemDeLocadora = CD | DVD | VIDEO
    deriving(Eq, Show)

data CD = Artista Titulo Reservado
    deriving(Eq, Show)

type Artista = String
type Titulo = String
type Reservado = Bool

data DVD = Titulo Autor Duracao Reservado
    deriving(Eq, Show)

type Autor = String
type Duracao = Float

data VIDEO = Autor Duracao Reservado
    deriving(Eq, Show)

--Q2--
data Socio = Nome ID Endereco Telefone
    deriving(Eq, Show)

type Nome = String
type ID = String
type Endereco = String
type Telefone = String

data AcervoDisponivel = ItemDeLocadora
    deriving(Eq, Show)