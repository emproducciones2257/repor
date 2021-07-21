package blanqueoAriel.Model;


public class Expediente {
    
    private long idExp;
    private String nroExp;
    private String cara;
    private String fuero;
    private String nroJuzgado;
    private String feUlUpdate;

    public Expediente(long idExp, String nroExp, String cara, String fuero, String nroJuzgado, String feUlUpdate) {
        this.idExp = idExp;
        this.nroExp = nroExp;
        this.cara = cara;
        this.fuero = fuero;
        this.nroJuzgado = nroJuzgado;
        this.feUlUpdate = feUlUpdate;
    }

    public Expediente(String nroExp, String cara, String fuero, String nroJuzgado, String feUlUpdate) {
        this.nroExp = nroExp;
        this.cara = cara;
        this.fuero = fuero;
        this.nroJuzgado = nroJuzgado;
        this.feUlUpdate = feUlUpdate;
    }

    public Expediente() {
    }

    public long getIdExp() {
        return idExp;
    }

    public void setIdExp(long idExp) {
        this.idExp = idExp;
    }

    public String getNroExp() {
        return nroExp;
    }

    public void setNroExp(String nroExp) {
        this.nroExp = nroExp;
    }

    public String getCara() {
        return cara;
    }

    public void setCara(String cara) {
        this.cara = cara;
    }

    public String getFuero() {
        return fuero;
    }

    public void setFuero(String fuero) {
        this.fuero = fuero;
    }

    public String getNroJuzgado() {
        return nroJuzgado;
    }

    public void setNroJuzgado(String nroJuzgado) {
        this.nroJuzgado = nroJuzgado;
    }

    public String getFeUlUpdate() {
        return feUlUpdate;
    }

    public void setFeUlUpdate(String feUlUpdate) {
        this.feUlUpdate = feUlUpdate;
    }

    @Override
    public String toString() {
        return "Expediente{" + "idExp=" + idExp + ", nroExp=" + nroExp + ", cara=" + cara + ", fuero=" + fuero + ", nroJuzgado=" + nroJuzgado + ", feUlUpdate=" + feUlUpdate + '}';
    }
}
