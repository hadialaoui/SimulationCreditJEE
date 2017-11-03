package sid.cours.metier;

public class CreditMetier {
public double calculeMensualite(double montant,int duree, double taux){
	double t=taux/100;
	double t1=montant*t/12;
	double t2=1-Math.pow(1+t/12,-1*duree);
	return t1/t2;
}
}
