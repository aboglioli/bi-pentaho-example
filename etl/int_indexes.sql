CREATE INDEX princ ON base(id);
CREATE INDEX princ ON codigo(id);
CREATE INDEX princ ON desenlace(id);
CREATE INDEX princ ON domicilio(id);
CREATE INDEX princ ON institucion(id);
CREATE INDEX princ ON localidad(id);
CREATE INDEX princ ON motivollamado(codigo);
CREATE INDEX princ ON movil(id);

CREATE INDEX princ ON idsZona(id);
CREATE INDEX princ ON idsCodigo(id);
CREATE INDEX princ ON idsMovil(id);
CREATE INDEX princ ON idsBase(id);
CREATE INDEX princ ON idsInstitucion(id);
CREATE INDEX princ ON idsDesenlace(id);

CREATE INDEX princ ON despacho(id, recepcion_id, movil_id, Base_id, desenlace_id, institucionderiva_id);
CREATE INDEX princ ON recepcion(id);

-- ALTER TABLE base ADD INDEX (id);
-- ALTER TABLE codigo ADD INDEX (id);
-- ALTER TABLE desenlace ADD INDEX (id);
-- ALTER TABLE domicilio ADD INDEX (id);
-- ALTER TABLE institucion ADD INDEX (id);
-- ALTER TABLE localidad ADD INDEX (id);
-- ALTER TABLE motivollamado ADD INDEX (codigo);
-- ALTER TABLE movil ADD INDEX (id);
-- ALTER TABLE recepcion ADD INDEX (id);
--
-- ALTER TABLE idsZona ADD INDEX (id);
-- ALTER TABLE idsCodigo ADD INDEX (id);
-- ALTER TABLE idsMovil ADD INDEX (id);
-- ALTER TABLE idsBase ADD INDEX (id);
-- ALTER TABLE idsInstitucion ADD INDEX (id);
-- ALTER TABLE idsDesenlace ADD INDEX (id);
--
-- ALTER TABLE despacho ADD INDEX (id, recepcion_id, movil_id, Base_id, desenlace_id, institucionderiva_id);
-- ALTER TABLE recepcion ADD INDEX (id);
