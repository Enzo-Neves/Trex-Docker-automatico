# Trex-Docker-automatico
Configuração e instalação do docker com a imagem do t-rexv2.41 no sistema operacional CENTOS7


<h2> Instalação: </h2> 
<code>git clone https://github.com/Enzo-Neves/Trex-Docker-automatico.git </code>

<h2> Como usar? </h2>
<h3> Transformando em executaveis: </h3>
Para o uso do script deve se transformar ele em executavel em seu sistema operacional, para isso utilize
<code> chmod777 *.sh</code> 

<h3> Docker </h3>
Caso não tenha o docker instalado em seu sistema operacional <strong> CENTOS7 </strong>, existe um arquivo de instalação automatica do docker, basta executar em um console na pasta do repositorio <br>
<code>sudo ./instalar-docker-centos7.sh </code>
<br>
e o docker será instalado


<h3> configuração </h3>
Para a configuração de quantas interfaces são desejadas e subida do servidor scapy é  nescessario executar o script "configuração-docker.sh" da mesma forma que o de instalação 
<code> ./configuração-docker</code>

o script efetuará o pull na imagem do t-rex e perguntará quantas interfaces deseja ser iniciadas (com duas iniciais já garantidas) ou seja se pedir 12 interfaces ele te dara 14 (tenha isso em mente). Cuidado com typos espere a mensagem de interfaces aparecer antes digitar numericamente o numero de interfaces desejafas

<code> [-] INSIRA QUANTIDADES DE INTERFACES: </code> <br>
<code> [-] CUIDADOS COM TYPOS: </code> <br>
<code> 12 </code> <br>

<h3> Abrindo a imagem </h3>
O container do docker por default terá o nome de  trex_docker logo para acessar a imagem e utilizar seu t-rex configurado deverá ser utilizado um comando em um novo console 
<code> sudo docker exec -it trex_docker bash </code>
com isso você abrirá o container do docker e poderá utilizar o t-rex configurado pelo script
