ALTER TABLE receitas_all ADD COLUMN 'Valor receita float' FLOAT;
UPDATE receitas_all
SET 'Valor receita float' = cast(replace(receitas_all.'Valor receita', ',', '.') as FLOAT);
