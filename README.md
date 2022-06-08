# Boas vindas ao repositório do projeto MySQL One For All!

No projeto ***One For All***, coloquei em prática os conhecimentos de **Normalização de Tabelas** e **criação de _Schemas_ (banco de dados) no SQL**.

---

## Desenvolvimento

Para o desenvolvimento do projeto, foi normalizada uma tabela na terceira forma normal e desenvolvido `queries` que acessa as informações desta tabela utilizando `SQL`.

Para cada desafio, foi criado um arquivo SQL com sua solução nele.

O objetivo do projeto foi:
1. Normalizar uma tabela, criar o schema no banco de dados local e populá-lo;
2. Realizar os desafios no banco já normalizado e populado.

Abaixo podemos observar a tabela não normalizada, semelhante ao que poderia ser uma versão simplificada do banco de dados do Spotify.

![tabela nao normalizada](/assets/Non_Normalized_Table.png)

**Aviso:** Todos os dados da tabela são fictícios e foram gerados aleatoriamente através de ferramentas com o intuito de deixar o projeto mais real. Quaisquer similaridades com informações reais são meras coincidências.

**Normalização das tabelas para a 3ª Forma Normal**

Antes de tudo, foi criado um esboço da normalização utilizando a ferramenta `Excalidraw`.

![esboço excalidraw](/assets/Normalizacao_Esboco_Excalidraw.png)

O banco de dados seguiu as seguintes regras de negócio:

* Informações sobre quais planos estão disponíveis e seus detalhes;
  * Cada pessoa usuária pode possuir apenas um plano.

* Informações sobre todas as pessoas artistas;
  * Uma pessoa artista pode ter vários álbuns;
  * Uma pessoa artista pode ser seguida por várias pessoas usuárias.

* Informações sobre todos os álbuns de cada artista;
  * Para fins deste projeto, considere que cada álbum possui apenas uma pessoa artista como principal;
  * Cada álbum possui várias canções.

* Informações sobre todas as canções de cada álbum;
  * Para fins deste projeto, considere que cada canção está contida em apenas um álbum.

* Informações sobre todas as pessoas usuárias, seus planos, seu histórico de reprodução e pessoas artistas seguidas.
  * Uma pessoa usuária pode possuir apenas um plano;
  * Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (para simplificar, considere que o objetivo do histórico é saber **quais** canções já foram reproduzidas e **não quantas vezes** foram reproduzidas);
  * Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.

---

## Desafios do projeto

Depois de normalizar as tabelas, foi criado e populado o banco de dados no workbench local para poder fazer as queries dos desafios abaixo.

### Desafio 1

* Crie um banco com o nome de **`SpotifyClone`**.
* Providencie as queries necessárias para criar tabelas normalizadas que atendam aos requisitos descritos na seção anterior;
* Providencie as queries necessárias para popular as tabelas de acordo com os dados listados na seção anterior;
* Crie um arquivo de configurações `desafio1.json`, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio. 

### Desafio 2

Crie uma `QUERY` que exiba três colunas:
1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".
2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".
3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

### Desafio 3

Crie uma `QUERY` que deverá ter apenas três colunas:
1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.
2. A segunda coluna deve possuir o alias "**qtde_musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.
3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.
Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

### Desafio 4

Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas no ano de **2021** se baseando na data mais recente no histórico de reprodução.
1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.
2. A segunda coluna deve ter o alias "**condicao_usuario**" e exibir se a pessoa usuária está ativa ou inativa.
O resultado deve estar ordenado em ordem alfabética.

### Desafio 5

Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:
1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.
2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.
Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

### Desafio 6

Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `QUERY` que deve exibir quatro dados:
1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.
2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.
3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.
4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.
Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

### Desafio 7

Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, com a quantidade de seguidores que ela possui, de acordo com os detalhes a seguir. Para tal, crie uma `QUERY` com as seguintes colunas:
1. A primeira coluna deve exibir o nome da pessoa artista, com o alias "**artista**".
2. A segunda coluna deve exibir o nome do álbum, com o alias "**album**".
3. A terceira coluna deve exibir a quantidade de pessoas seguidoras que aquela pessoa artista possui e deve possuir o alias "**seguidores**".
Seus resultados devem estar ordenados de forma decrescente, baseando-se no número de pessoas seguidoras. Em caso de empate no número de pessoas, ordene os resultados pelo nome da pessoa artista em ordem alfabética e caso há artistas com o mesmo nome, ordene os resultados pelo nome do álbum alfabeticamente.

### Desafio 8

Mostre uma relação dos álbuns produzidos por um artista específico, neste caso `"Walter Phoenix"`.
Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:
1. O nome da pessoa artista, com o alias "**artista**".
2. O nome do álbum, com o alias "**album**".
Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

### Desafio 9

Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico do usuário `"Bill"` e a consulta deve retornar a seguinte coluna:
* O valor da quantidade, com o alias "**quantidade_musicas_no_historico**".

### Desafio 10

Crie uma `QUERY` que exiba o nome e a quantidade de vezes que cada canção foi tocada por pessoas usuárias do plano gratuito ou pessoal de acordo com os detalhes a seguir:
* A primeira coluna deve exibir o nome da canção, com o alias "**nome**";
* A segunda coluna deve exibir a quantidade de pessoas que já escutaram aquela canção, com o alias "**reproducoes**";
* Seus resultados devem estar agrupados pelo nome da canção e ordenados em ordem alfabética.

### BÔNUS - Desafio 11

Crie uma `QUERY` que altere o nome de algumas músicas e as ordene em ordem alfabética com as colunas abaixo se baseando nos seguintes critérios:
1. O nome da música em seu estado normal com o alias **nome_musica**
2. O nome da música atualizado com o alias **novo_nome**

**Critérios**
- Trocar a palavra **"Streets"** no final do nome de uma música por **"Code Review"**
- Trocar a palavra **"Her Own"** no final do nome de uma música por **"Trybe"**
- Trocar a palavra **"Inner Fire"** no final do nome de uma música por **"Project"**
- Trocar a palavra **"Silly"** no final do nome de uma música por **"Nice"**
- Trocar a palavra **"Circus"** no final do nome de uma música por **"Pull Request"**
