# remote func
- Essa função será executada se receber uma chamada RPC para ela.  

# master func
- Essa função será executada se receber uma chamada RPC para ela **e** o node da função for mestre dele mesmo.  
- Nodes não enviam chamada RPC para nodes o quais não é o mestre.  

# puppet func
- Essa função será executada se receber uma chamada RPC para ela **e** o node da função não for mestre dele mesmo.  

# sync
Adicionando o sufixo `sync` a qualquer um dos `remote`, `master` ou `puppet` fará com que a função leia RPC vindas dela mesma.  
