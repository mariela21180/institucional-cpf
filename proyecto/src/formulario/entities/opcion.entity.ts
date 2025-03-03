import { Entity, PrimaryGeneratedColumn, JoinColumn, ManyToOne, Column } from "typeorm";
import Pregunta from "./pregunta.entity";

@Entity('opcion')
export default class Opcion {
    @PrimaryGeneratedColumn()
    private idOpcion: number;
    
    @Column("varchar")
    private texto: string;

    @Column("bit", { nullable: true })
    private isOk: boolean;

    @Column("float", { nullable: true })
    private calificacion: number;

    @JoinColumn({name: 'idPregunta', referencedColumnName: 'idPregunta'})
    @ManyToOne(type => Pregunta, pregunta => pregunta.getIdPregunta, { nullable: false})
    idPregunta: number;

    constructor(texto: string, isOk?: boolean, calificacion?: number) {
        this.texto = texto;
        if (isOk) {
            this.isOk = isOk;
        } else {
            this.isOk = false; // Si la pregunta no es para un Examen, isOk es null, y hay que evitar hacer todos los cálculos de la "respuesta correcta"
        }
        
        // Por defecto es "1". 
        // En caso de repuesta a preguntas de texto, se puede setear a 0; 0,5 ó 1 segun sea mal, regular o bien respectivamente la calificacion del docente
        if (calificacion) {
            this.calificacion = calificacion;
        } else {
            this.calificacion = 1; 
            // Si la respuesta no es para un Examen, hay que evitar hacer todos los cálculos de la nota total
        }
    }

    public getIdOpcion(): number {
        return this.idOpcion;
    }
    public setIdOpcion(idOpcion: number): void {
        this.idOpcion = idOpcion;
    }
    
    public getTexto(): string {
        return this.texto;
    }
    public setTexto(texto: string): void {
        this.texto = texto;
    }

    public getIsOk(): boolean {
        return this.isOk;
    }
    public setIsOk(isOk: boolean): void  {
        this.isOk = isOk;
    }

    public getCalificacion(): number {
        return this.calificacion;
    }
    public setCalificacion(calificacion: number): void  {
        this.calificacion = calificacion;
    }

}