package students;

public class Etudiant {
	private String cin, nom, prenom, niveau;
	private int age;

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Etudiant(String cin, String nom, String prenom, String niveau, int age) {
		super();
		this.cin = cin;
		this.nom = nom;
		this.prenom = prenom;
		this.niveau = niveau;
		this.age = age;
	}

	public String getCin() {
		return cin;
	}

	public void setCin(String cin) {
		this.cin = cin;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNiveau() {
		return niveau;
	}

	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}

}
