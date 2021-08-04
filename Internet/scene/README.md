# rpc
Envia uma mensagem para todos conectados na rede (incluindo quem enviou a mensagem).  
Se usa o caminho dos nodes para saber qual método chamar, por isso é importante que em todos jogadores existam todos os nós com os mesmos nomes. Exemplo:  

- Game
  - Players
    - 1
    - 8483928
    - 9273472
    - 7362829

Se o player 7362829 fizer uma chamada rpc ao método `dodge()`, todos os outras conexões vão tentar chamar esse método no caminho `Game/Players/7362829`.  

# remote func
- Essa função pode ser chamada via rpc
- Essa função ignora chamada rpc local

# master func
- Essa função pode ser chamada via rpc
- Essa função ignora chamada se o node não for o mestre dele mesmo

# puppet func
- Essa função pode ser chamada via rpc
- Essa função ignora chamada se o node for o mestre dele mesmo

# sync
Adicionando o sufixo `sync` a qualquer um dos `remote`, `master` ou `puppet` fará com que a função leia RPC vindas dela mesma.  
