create database if not exists institucional_cfl;
use `institucional_cfl`;
-- alter user 'root'@'localhost' identified with mysql_native_password by 'asd123';

insert into domicilio(idDomicilio, calle, altura) values (1, "Alberdi", 763);
insert into domicilio(idDomicilio, calle, altura) values (2, "25 de Mayo", 963);
insert into domicilio(idDomicilio, calle, altura) values (3, "Canada", 123);

insert into telefono(idTelefono, codArea, nro) values (1, 0249, 154633817);
insert into telefono(idTelefono, codArea, nro) values (2, 0249, 4420983);
insert into telefono(idTelefono, codArea, nro) values (3, 0249, 154997785);

insert into persona(idPersona, nombre, apellido, dni, eMail, idTelefono, idDomicilio) values (1, "Mariela", "Gonzalez", 28200912, "mariela@gmail.com", 1, 1);
insert into persona(idPersona, nombre, apellido, dni, eMail, idTelefono, idDomicilio) values (2, "Juan", "Salerno", 2000000, "juan@gmail.com", 2, 2);
insert into persona(idPersona, nombre, apellido, dni, eMail, idTelefono, idDomicilio) values (3, "Nahum", "Larzabal", 2000001, "nahum@gmail.com", 3, 3);

insert into docente(idDocente, nivelEstudioAlcanzado, titulo) values (1, "Universitario Incompleto", "Lisenciado en Administración");
insert into docente(idDocente, nivelEstudioAlcanzado, titulo) values (2, "Universitario Completo", "Contador Publico");

insert into alumno(idAlumno, nivelEstudioAlcanzado, adeudaDocumentacion) values (1, "Universitario Incompleto", false);
insert into alumno(idAlumno, nivelEstudioAlcanzado, adeudaDocumentacion) values (2, "Universitario Completo", false);
insert into alumno(idAlumno, nivelEstudioAlcanzado, adeudaDocumentacion) values (3, "Terciario Incompleto", true);

insert into usuario(idUsuario, usuario, password, nivelAcceso) values (1, "admin", "47dfbc37d2577197c6db50e5e52693a27dee2f3725671e2bb917f9b38fd44795", 1);

insert into curso(idCurso, nombre, descripcion, cupoMaximoAlumnos, asistenciaMinima, cargaHorariaTotal, fechaInicio, fechaFin, idDocente) values (1, "Programador Full-Stack", "-", 30, 80, 180.5, "2019-01-02", "2019-12-02", 1);
insert into curso(idCurso, nombre, descripcion, cupoMaximoAlumnos, asistenciaMinima, cargaHorariaTotal, fechaInicio, fechaFin, idDocente) values (2, "Android", "-", 30, 70, 180.5, "2019-01-02", "2019-12-02", 2);

insert into clase(idClase, idCurso, inicio, fin) values (1, 1, "2019-01-02 19:00:00", "2019-01-02 22:30:00");
insert into clase(idClase, idCurso, inicio, fin) values (2, 1, "2019-01-04 19:00:00", "2019-01-04 22:30:00");
insert into clase(idClase, idCurso, inicio, fin) values (3, 2, "2019-01-05 19:00:00", "2019-01-05 22:30:00");

insert into material(idMaterial, habilitado, idClase) values (1, 1, 1);

insert into tema(idTema, tema, idMaterial) values (1, "Base de Datos", 1);

insert into archivo(idArchivo, ruta, idMaterial) values (1, "/assets/imagen.jpg", 1);

insert into horario(idHorario, dia, horaInicio, horaFin, idCurso) values (1, "Lunes", "19hs", "22:30hs", 1);

insert into asistencia(idClase, idAlumno) values (1, 1);
insert into asistencia(idClase, idAlumno) values (1, 2);
insert into asistencia(idClase, idAlumno) values (1, 3);
insert into asistencia(idClase, idAlumno) values (2, 1);

insert into formulario(idFormulario, esEditable, nombre, descripcion) values (1, 1, "Examen 1", "MySQL");

insert into examen(idExamen, puntajeTotal, estaRespondido, estaCorregido, idCurso) values (1, 5.8, 1, 1, 1);

insert into tipo_pregunta(idTipoPregunta, texto) values (1, "Texto");

insert into pregunta(idPregunta, esEditable, consigna, estaRespondida, puntaje, idTipoPregunta, idFormulario) values (1, 1, "¿Como me llamo?", 1, 2.5, 1, 1);

insert into opcion(idOpcion, texto, isOk, calificacion, idPregunta) values (1, "Mariela", 1, 2.5, 1);

insert into alumno_curso(idAlumno, idCurso) values (1,1);
insert into alumno_curso(idAlumno, idCurso) values (1,2);
insert into alumno_curso(idAlumno, idCurso) values (2,2);



