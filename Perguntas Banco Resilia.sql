use banco_resilia;
select * 
from entrega;

alter table entrega drop column turma_id;
alter table entrega add column turma_id varchar(10);

show columns from entrega;

-- SABER QUEM SÃO OS ALUNOS QUE ENTREGARAM O PROJETO MD1 E CONCEITO PRONTO OU MAIS QUE PRONTO
SELECT 
    *
FROM
    entrega
WHERE
    modulo_projeto = 'MD1'
        AND conceito = 'Mais que pronto'
        OR conceito = 'pronto'
        AND modulo_projeto = 'MD1';
   
   -- QUANTOS ALUNOS TEM EM CADA TURMA
   select
   count(turma_id) as Qtde_estudantes,
   turma_id
   FROM
   entrega
group by 
turma_id  ;


-- QUANTOS PROJETOS NO TOTAL QUASE LA OU NÃO ESTÁ PRONTO
 select
   count(conceito) as quantidade,
   conceito
   FROM
   entrega

where
conceito = 'Quase La' or conceito = 'Não está pronto' 
group by 
conceito ;

-- QUANTAS TURMAS CONCEITO MAIS QUE PRONTO
select 
count(estudante_id),
turma_id, conceito
from entrega

where
conceito like 'Mais que pronto'

group by
turma_id


 
 

    
    
    
