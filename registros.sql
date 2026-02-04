
-- se infiere que la base de datos estara vacia 

INSERT INTO Roles_usuario (nombre, descripcion, estado_registro, fecha_creacion_registro, fecha_modificacion_registro)
VALUES ('ADMIN', 'Administrador del sistema', 1, SYSDATE, SYSDATE);

INSERT INTO Roles_usuario (nombre, descripcion, estado_registro, fecha_creacion_registro, fecha_modificacion_registro)
VALUES ('EMPRESA', 'Usuario empresa', 1, SYSDATE, SYSDATE);

INSERT INTO Roles_usuario (nombre, descripcion, estado_registro, fecha_creacion_registro, fecha_modificacion_registro)
VALUES ('POSTULANTE', 'Usuario postulante', 1, SYSDATE, SYSDATE);

INSERT INTO Usuarios (
    id_rol, nombre, apellido_paterno, apellido_materno, fecha_nacimiento,
    usu, pass, estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    1, 'Juan', 'Perez', 'Lopez', DATE '1990-01-10',
    'admin1', 'pass_admin', 1, SYSDATE, SYSDATE
);

INSERT INTO Usuarios (
    id_rol, nombre, apellido_paterno, apellido_materno, fecha_nacimiento,
    usu, pass, estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    2, 'Maria', 'Gomez', 'Diaz', DATE '1992-05-20',
    'empresa1', 'pass_empresa', 1, SYSDATE, SYSDATE
);

INSERT INTO Usuarios (
    id_rol, nombre, apellido_paterno, apellido_materno, fecha_nacimiento,
    usu, pass, estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    3, 'Luis', 'Ramirez', 'Torres', DATE '1995-08-15',
    'postulante1', 'pass_postulante', 1, SYSDATE, SYSDATE
);

INSERT INTO Tipos_documento (nombre, descripcion, estado_registro, fecha_creacion_registro, fecha_modificacion_registro)
VALUES ('DNI', 'Documento Nacional de Identidad', 1, SYSDATE, SYSDATE);

INSERT INTO Tipos_documento (nombre, descripcion, estado_registro, fecha_creacion_registro, fecha_modificacion_registro)
VALUES ('RUC', 'Registro Único de Contribuyentes', 1, SYSDATE, SYSDATE);

INSERT INTO Tipos_documento (nombre, descripcion, estado_registro, fecha_creacion_registro, fecha_modificacion_registro)
VALUES ('PASAPORTE', 'Documento de viaje internacional', 1, SYSDATE, SYSDATE);

INSERT INTO Documentos (
    id_tipo, id_usuario, ruta, estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    1, 1, '/docs/dni_admin.pdf', 1, SYSDATE, SYSDATE
);

INSERT INTO Documentos (
    id_tipo, id_usuario, ruta, estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    2, 2, '/docs/ruc_empresa.pdf', 1, SYSDATE, SYSDATE
);

INSERT INTO Documentos (
    id_tipo, id_usuario, ruta, estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    3, 3, '/docs/pasaporte_postulante.pdf', 1, SYSDATE, SYSDATE
);

INSERT INTO Empresas (
    id_usuario, nombre_comercial, razon_social, fecha_fundacion,
    estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    1, 'TechSoft', 'TechSoft SAC', DATE '2010-03-01',
    1, SYSDATE, SYSDATE
);

INSERT INTO Empresas (
    id_usuario, nombre_comercial, razon_social, fecha_fundacion,
    estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    2, 'InnovaCorp', 'InnovaCorp SAC', DATE '2015-07-15',
    1, SYSDATE, SYSDATE
);

INSERT INTO Empresas (
    id_usuario, nombre_comercial, razon_social, fecha_fundacion,
    estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    3, 'DataPlus', 'DataPlus SAC', DATE '2018-11-20',
    1, SYSDATE, SYSDATE
);

INSERT INTO Tipos_jornada VALUES (DEFAULT, 'Tiempo completo', 'Jornada completa', 1, SYSDATE, SYSDATE);
INSERT INTO Tipos_jornada VALUES (DEFAULT, 'Medio tiempo', 'Jornada parcial', 1, SYSDATE, SYSDATE);
INSERT INTO Tipos_jornada VALUES (DEFAULT, 'Por horas', 'Trabajo por horas', 1, SYSDATE, SYSDATE);

INSERT INTO Tipos_modalidad VALUES (DEFAULT, 'Presencial', 'Trabajo presencial', 1, SYSDATE, SYSDATE);
INSERT INTO Tipos_modalidad VALUES (DEFAULT, 'Remoto', 'Trabajo remoto', 1, SYSDATE, SYSDATE);
INSERT INTO Tipos_modalidad VALUES (DEFAULT, 'Híbrido', 'Trabajo mixto', 1, SYSDATE, SYSDATE);

INSERT INTO Convocatorias (
    id_tipo_jornada, id_tipo_modalidad, id_empresa, titulo, descripcion,
    estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    1, 1, 1, 'Desarrollador Java', 'Convocatoria para Java Senior',
    1, SYSDATE, SYSDATE
);

INSERT INTO Convocatorias VALUES (
    DEFAULT, 2, 2, 2, 'Analista de Datos', 'Analista BI',
    1, SYSDATE, SYSDATE
);

INSERT INTO Convocatorias VALUES (
    DEFAULT, 3, 3, 3, 'Soporte TI', 'Soporte técnico',
    1, SYSDATE, SYSDATE
);

INSERT INTO Estados_postulacion VALUES (DEFAULT, 'Registrado', 'Postulación registrada', 1, SYSDATE, SYSDATE);
INSERT INTO Estados_postulacion VALUES (DEFAULT, 'En evaluación', 'En proceso', 1, SYSDATE, SYSDATE);
INSERT INTO Estados_postulacion VALUES (DEFAULT, 'Finalizado', 'Proceso cerrado', 1, SYSDATE, SYSDATE);

INSERT INTO Resoluciones_postulacion VALUES (DEFAULT, 'Aprobado', 'Postulación aprobada', 1, SYSDATE, SYSDATE);
INSERT INTO Resoluciones_postulacion VALUES (DEFAULT, 'Rechazado', 'Postulación rechazada', 1, SYSDATE, SYSDATE);
INSERT INTO Resoluciones_postulacion VALUES (DEFAULT, 'Pendiente', 'Pendiente de decisión', 1, SYSDATE, SYSDATE);

INSERT INTO Postulaciones (
    id_convocatoria, id_usuario, id_estado, id_resolucion,
    estado_registro, fecha_creacion_registro, fecha_modificacion_registro
) VALUES (
    1, 3, 1, 3, 1, SYSDATE, SYSDATE
);

INSERT INTO Postulaciones VALUES (
    DEFAULT, 2, 2, 2, 2, 1, SYSDATE, SYSDATE
);

INSERT INTO Postulaciones VALUES (
    DEFAULT, 3, 3, 3, 1, 1, SYSDATE, SYSDATE
);
