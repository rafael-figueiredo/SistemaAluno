package br.edu.unicid.bean;

import java.util.Date;

public class Aluno {

	// padr�o JavaBean ou POJO � Classe com getters/setters, mais m�todos
	// construtores

	private int caAluno;
	private String nomeAluno;
	private String emailAluno;
	private Date dtaNasc;
	private int idadeAluno;
	private String endAluno;

	public Aluno(int caAluno, String nomeAluno, String emailAluno, Date dtaNasc, String endAluno, int idadeAluno) {
		this.caAluno = caAluno;
		this.nomeAluno = nomeAluno;
		this.emailAluno = emailAluno;
		this.dtaNasc = dtaNasc;
		this.endAluno = endAluno;
		this.idadeAluno = idadeAluno;
	}

	public Aluno() {
	}

	public int getCaAluno() {
		return caAluno;
	}

	public void setCaAluno(int caAluno) {
		this.caAluno = caAluno;
	}

	public String getNomeAluno() {
		return nomeAluno;
	}

	public void setNomeAluno(String nomeAluno) {
		this.nomeAluno = nomeAluno;
	}

	public String getEmailAluno() {
		return emailAluno;
	}

	public void setEmailAluno(String emailAluno) {
		this.emailAluno = emailAluno;
	}

	public Date getDtaNasc() {
		return dtaNasc;
	}

	public void setDtaNasc(Date dtaNasc) {
		this.dtaNasc = dtaNasc;
	}

	public int getIdadeAluno() {
		return idadeAluno;
	}

	public void setIdadeAluno(int idadeAluno) {
		this.idadeAluno = idadeAluno;
	}

	public String getEndAluno() {
		return endAluno;
	}

	public void setEndAluno(String endAluno) {
		this.endAluno = endAluno;
	}

}
