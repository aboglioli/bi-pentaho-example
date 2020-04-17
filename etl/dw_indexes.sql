ALTER TABLE `dimHora` CHANGE `id_hora` `id_hora` VARCHAR(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL;

CREATE INDEX princ ON dimBase(id_base);
CREATE INDEX princ ON dimCodigo(id_codigo);
CREATE INDEX princ ON dimDesenlace(id_desenlace);
CREATE INDEX princ ON dimHora(id_hora);
CREATE INDEX princ ON dimInstitucion(id_institucion);
CREATE INDEX princ ON dimMovil(id_movil);
CREATE INDEX princ ON dimTiempo(id_fecha);
CREATE INDEX princ ON dimZona(id_zona);

CREATE INDEX princ ON factDespacho(id_fecha, id_hora, id_zona, id_codigo, id_movil, id_base, id_institucion, id_desenlace);
CREATE INDEX princ ON factIncidente(id_fecha, id_hora, id_zona, id_codigo);

-- ALTER TABLE dimBase ADD INDEX (id_base);
-- ALTER TABLE dimCodigo ADD INDEX (id_codigo);
-- ALTER TABLE dimDesenlace ADD INDEX (id_desenlace);
-- ALTER TABLE dimHora ADD INDEX (id_hora);
-- ALTER TABLE dimInstitucion ADD INDEX (id_institucion);
-- ALTER TABLE dimMovil ADD INDEX (id_movil);
-- ALTER TABLE dimTiempo ADD INDEX (id_fecha);
-- ALTER TABLE dimZona ADD INDEX (id_zona);
--
-- ALTER TABLE factDespacho ADD INDEX (id_fecha, id_hora, id_zona, id_codigo, id_movil, id_base, id_institucion, id_desenlace);
-- ALTER TABLE factIncidente ADD INDEX (id_fecha, id_hora, id_zona, id_codigo);
