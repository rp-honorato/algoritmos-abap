*&---------------------------------------------------------------------*
*& Report ZALGORITMOS_A71
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zalgoritmos_a71.

DATA:
  taxa_desconto TYPE p DECIMALS 2.

PARAMETERS:
  p_desc(30) TYPE c,
  p_qtd      TYPE i,
  p_marca    TYPE boolean AS CHECKBOX.

*IF E ELSE IF
IF p_qtd <= 0.
  MESSAGE 'Informe a quantidade' TYPE 'I'.
  RETURN.

ELSEIF p_qtd > 10.
  taxa_desconto = '0.15'.

ELSEIF p_qtd < 10 AND p_marca = 'X'.
  taxa_desconto = '0.10'.

ELSE.

  taxa_desconto = '0.05'.
ENDIF.

WRITE:
/ 'Descrição', 30 p_desc,
/ 'Quantidade', 30 p_qtd,
/ 'Marca Propria', 30 p_marca,
/ 'Taxa Desconto', 30 taxa_desconto.
