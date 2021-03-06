package fr.cesi.atlantismedia.entities;
// Generated 12 janv. 2020 19:04:39 by Hibernate Tools 5.4.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Statut generated by hbm2java
 */
public class Statut implements java.io.Serializable {

	private int idStatut;
	private String libelle;
	private Set oeuvres = new HashSet(0);

	public Statut() {
	}

	public Statut(int idStatut) {
		this.idStatut = idStatut;
	}

	public Statut(int idStatut, String libelle, Set oeuvres) {
		this.idStatut = idStatut;
		this.libelle = libelle;
		this.oeuvres = oeuvres;
	}

	public int getIdStatut() {
		return this.idStatut;
	}

	public void setIdStatut(int idStatut) {
		this.idStatut = idStatut;
	}

	public String getLibelle() {
		return this.libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Set getOeuvres() {
		return this.oeuvres;
	}

	public void setOeuvres(Set oeuvres) {
		this.oeuvres = oeuvres;
	}

}
