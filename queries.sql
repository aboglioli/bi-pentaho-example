-- Por Localidad
SELECT
  zona.localidad
, SUM(inc.cantidad) AS cantidad
FROM factIncidente AS inc
INNER JOIN dimZona zona ON inc.id_zona = zona.id_zona
GROUP BY zona.localidad
ORDER BY `cantidad`  DESC LIMIT 0,10

-- Por Código
SELECT
  codigo.codigo
, SUM(inc.cantidad) AS cantidad
FROM factIncidente AS inc
INNER JOIN dimCodigo codigo ON inc.id_codigo = codigo.id_codigo
GROUP BY codigo
ORDER BY cantidad  DESC LIMIT 0,10

-- Por Código y Localidad
SELECT
  codigo.descripcion
, SUM(inc.cantidad) AS cantidad
FROM factIncidente AS inc
INNER JOIN dimCodigo codigo ON inc.id_codigo = codigo.id_codigo
INNER JOIN dimZona zona ON inc.id_zona = zona.id_zona
WHERE zona.localidad LIKE ${ParamZona}
GROUP BY descripcion
ORDER BY cantidad  DESC LIMIT 0,10
