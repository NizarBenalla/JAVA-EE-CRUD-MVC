package students;

import java.util.ArrayList;

public class GestionEtudiants {
	static ArrayList<Etudiant> listeEtudiants = new ArrayList<>();

	public GestionEtudiants() {
	}

	public static void add(String cin, String nom, String prenom, String niveau, int age) {
		listeEtudiants.add(new Etudiant(cin, nom, prenom, niveau, age));
	}

	public static ArrayList<Etudiant> getListEtudiants() {
		return listeEtudiants;
	}

	public static void modify(int index, Etudiant etudiant) {
		listeEtudiants.set(index, etudiant);
	}

	public static void drop(String parameter) {
		listeEtudiants.removeIf(t -> t.getCin().equals(parameter));
	}

}
