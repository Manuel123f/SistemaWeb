package Beans;

public class UsuarioBeans {
    private String idU;
    private String nom;
    private String password;
    private String DNI;
    private int tel;
    private String dir;
    private String perfil;

    public UsuarioBeans(String idU, String nom, String password, String DNI, int tel, String dir, String perfil) {
        this.idU = idU;
        this.nom = nom;
        this.password = password;
        this.DNI = DNI;
        this.tel = tel;
        this.dir = dir;
        this.perfil = perfil;
    }

    public String getIdU() {
        return idU;
    }

    public void setIdU(String idU) {
        this.idU = idU;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
    
}
