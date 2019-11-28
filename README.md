# ifes-otimizacao-lab5
## LABORATÓRIO 5: PROBLEMA DE MINIMIZAÇÃO SEM RESTRIÇÕES
## MÉTODOS DE OTIMIZAÇÃO: MATEMÁTICOS E HEURÍSTICOS

O laboratório consiste na utilização do solver fminunc, presente no Optimization Toolbox do Matlab. Esta função calcula mínimos locais de funções com múltiplas variáveis, sem restrições e não-lineares, a partir de um ponto inicial informado. É possível utilizar os algoritmos quasi-newton ou trust-region, neste trabalho, o primeiro foi utilizado. Utilizando quasi-newton, é possível variar os métodos de escolha de direção de busca com os seguintes algoritmos: bfgs, dfp e steepdesc, foi feita uma comparação do comportamento de cada um deles para todas as funções objetivo. 

Como a execução das tarefas era repetitiva, foi criada uma função auxiliar que recebe como parâmetros uma função objetivo e um ponto inicial e executa o solver fminunc utilizando quasi-newton e variando os métodos de busca. O código da função está disponível no Anexo I.

Para a execução das tarefas, foi utilizado o Matlab R2018b, versão 9.5.0 em ambiente Windows.
