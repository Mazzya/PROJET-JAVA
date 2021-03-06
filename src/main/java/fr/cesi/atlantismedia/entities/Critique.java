package fr.cesi.atlantismedia.entities;
// Generated 12 janv. 2020 19:04:39 by Hibernate Tools 5.4.7.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Critique generated by hbm2java
 */
public class Critique implements java.io.Serializable {

	private int idCritique;
	private String commentaire;
	private Integer note;
	private Set oeuvreCritiques = new HashSet(0);

	public Critique() {
	}

	public Critique(int idCritique) {
		this.idCritique = idCritique;
	}

	public Critique(int idCritique, String commentaire, Integer note, Set oeuvreCritiques) {
		this.idCritique = idCritique;
		this.commentaire = commentaire;
		this.note = note;
		this.oeuvreCritiques = oeuvreCritiques;
	}

	public int getIdCritique() {
		return this.idCritique;
	}

	public void setIdCritique(int idCritique) {
		this.idCritique = idCritique;
	}

	public String getCommentaire() {
		return this.commentaire;
	}

	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}

	public Integer getNote() {
		return this.note;
	}

	public void setNote(Integer note) {
		this.note = note;
	}

	public Set getOeuvreCritiques() {
		return this.oeuvreCritiques;
	}

	public void setOeuvreCritiques(Set oeuvreCritiques) {
		this.oeuvreCritiques = oeuvreCritiques;
	}

}
