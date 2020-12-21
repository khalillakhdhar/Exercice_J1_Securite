package controls;

public class Controls {
private String n,p,e,m,rm;

public Controls(String n, String p, String e, String m, String rm) {
	this.n = n;
	this.p = p;
	this.e = e;
	this.m = m;
	this.rm = rm;
}

public String getN() {
	return n;
}

public void setN(String n) {
	this.n = n;
}

public String getP() {
	return p;
}

public void setP(String p) {
	this.p = p;
}

public String getE() {
	return e;
}

public void setE(String e) {
	this.e = e;
}

public String getM() {
	return m;
}

public void setM(String m) {
	this.m = m;
}

public String getRm() {
	return rm;
}

public void setRm(String rm) {
	this.rm = rm;
}

public Controls() {
	super();
}

public boolean conforme()
{
	
return this.getM().equals(this.rm);
}
public String contenu()
{
if(this.getM().contains(this.n))
{
	return "le mot de passe ne peut pas contenir votre nom";
}
if(this.getM().contains(this.p))
{
	return "le mot de passe ne peut pas contenir votre prenom";
}
else 
	return "correcte";

	

}
}
