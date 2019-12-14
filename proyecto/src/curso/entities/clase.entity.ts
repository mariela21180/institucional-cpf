import Curso from "./curso.entity";
import Alumno from "src/persona/entities/alumno.entity";
import Material from "./material.entity";
import { Entity, PrimaryGeneratedColumn, ManyToMany, Column, JoinColumn, ManyToOne, OneToMany, JoinTable } from "typeorm";

@Entity('clase')
export default class Clase {
    @PrimaryGeneratedColumn()
    private idClase: number;
    
    //@Column('int')
    //idCurso: number;

    @JoinColumn({name: 'idCurso'})
    @ManyToOne(type => Curso, curso => curso.getIdCurso)
    private curso: Curso;

    @Column('date')
    private inicio: Date;

    @Column('date')
    private fin: Date;

    @ManyToMany(type => Alumno, asistencia => asistencia.getIdAlumno)
    @JoinTable({name: 'asistencia'})
    private asistencia: Alumno[]; 

    @OneToMany(type => Material, material => material.getIdMaterial)
    private material: Material[]; // HACERLO NULLABLE??
    

    public constructor (curso: Curso, inicio: Date, fin: Date, asistencia?: Alumno[], material?: Material[]) {
        this.curso = curso;
        this.inicio = inicio;
        this.fin = fin;
        if(asistencia) {
            this.asistencia = asistencia;
        } else {
            this.asistencia = null;
        }

        if(material) {
            this.material = material;
        } else {
            this.material = null;
        }
    }

    public getIdClase(): number {
        return this.idClase;
    }

    public setIdClase(idClase: number): void {
        this.idClase = idClase;
    }

    public getCurso(): Curso {
        return this.curso;
    }
    
    public getInicio(): Date {
        return this.inicio;
    }

    public setInicio(fecha: Date): void {
        this.inicio = fecha;
    }

    public getFin(): Date {
        return this.fin;
    }

    public setFin(fecha: Date): void {
        this.fin = fecha;
    }

    public getAsistencia(): Alumno[] {
        return this.asistencia;
    }

    public setAsistencia(asistencia: Alumno[]): void {
        this.asistencia = asistencia;
    }

    public getMaterial(): Material[] {
        return this.material;
    }

    public setMaterial(material: Material[]): void {
        this.material = material;
    }

}