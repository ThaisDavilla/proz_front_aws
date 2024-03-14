CREATE OR REPLACE FUNCTION contar_clientes_cadastrados(data_alvo DATE)
RETURNS INTEGER AS $$
DECLARE
    total INTEGER;
BEGIN
    SELECT COUNT(*) INTO total
    FROM clientes
    WHERE DATE_TRUNC('day', data_cadastro) = DATE_TRUNC('day', data_alvo);

    RETURN total;
END;
$$ LANGUAGE plpgsql;


SELECT contar_clientes_cadastrados('2024-01-28') AS total_clientes;
