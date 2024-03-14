DELIMITER //

CREATE PROCEDURE LevantamentoDiario()
BEGIN
    -- Cria uma tabela temporária para armazenar o resultado
    CREATE TEMPORARY TABLE temp_levantamento_diario (
        data DATE,
        quantidade_total INT
    );

    -- Insere os dados agrupados na tabela temporária
    INSERT INTO temp_levantamento_diario (data, quantidade_total)
    SELECT
        data_compra,
        SUM(quantidade_produtos) as quantidade_total
    FROM
        vendas
    GROUP BY
        data_compra;

    -- Seleciona os resultados da tabela temporária
    SELECT * FROM temp_levantamento_diario;

    -- Remove a tabela temporária ao final da execução
    DROP TEMPORARY TABLE IF EXISTS temp_levantamento_diario;
END //

DELIMITER ;

