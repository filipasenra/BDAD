# BDAD
Project for the BDAD curricular unit.

## Grades:
**First Delivery** (25%): 18.4 | **Second Delivery** (25%): 17.8 | **Third Delivery** (50%): 18.8

**Overall grade**: 18.5

## Project Infos
* Date: 2nd Year, 2st Semester, 2018/2019
* Course: Base de Dados (BDAD) | Data Base
* Course Link: https://sigarra.up.pt/feup/pt/ucurr_geral.ficha_uc_view?pv_ocorrencia_id=419997

## Problems found on each delivery 
### First delivery
1. Se um Hospital pode ter vários Armazéns, o que contradiz a
descrição, é expectável que um medicamento possa existir em vários
armazéns. O símbolo de composição de Armazém para Medicamento não faz
sentido neste caso e a associação entre Armazem e Medicamento deveria
ser *-*.
2. Faltam algumas regras de negócio adicionais. Por exemplo,
data_inicio <= data_final em estadia.

### Second delivery
1. All the problems from the first delivery (the professor forgot to let us know of them)
2. PK- Chave primária de estadia não está bem. Podem criar um id próprio. Alternativamente podia ser {cama, dataInicio, codEnfermaria}
3. R- Prescrição não estando errado, não está de acordo com o diagrama de classes
4. R- NumeroDisponivel não estando errado, não está de acordo com o diagrama de classes
5. FK- O atributo codigo em intervenção deveria ser não só chave primária como também chave exteerna para consulta.
6. Há dependencias funcionais por identificar. Por exemplo, nif é uma chave candidata em Pessoa. Até o definiram como UNIQUE ...
7. criar.sql: A chave primária de estadia nem está de acordo com o modelo relacional nem está correta porque um doente pode ser internado duas vezes na mesma cama desde que em datas diferentes
8. criar.sql: na tabela pessoa faltam os atributos genero e telefone que constam do modelo relacional
9. criar.sql: na tabela tratamento a chave primária é diferente da definida no modelo relacional
10. povoar.sql: Podiam ter posto dados de, pelo menos, dois hospitais

## Disclaimer
This repository corresponds to school projects from the respective COURSE. The code on this repo is intended for educational purposes. I do not take any responsibility, liability or whateverity over any code faults, inconsistency or anything else. If you intend on copying most or parts of the code for your school projects, keep in mind that this repo is public, and that your professor might search the web for similar project solutions or whatnot and choose to fail you for copying.

(Credits to Rui Alves (xRuiAlves , https://github.com/xRuiAlves/) for the README layout) -->Take a look at his GitHub (it helped me a lot!)
