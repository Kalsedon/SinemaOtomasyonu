/**
 *
 * @author Serhat
 */
public class Filmler {
    private int id;
    private String isim;
    private String tur;
    private float imdb;
    private String seans;
    private String dil;
    private String vizyonagiris;
    
    public Filmler(int id, String isim, String tur, float imdb, String seans, String dil, String vizyonagiris) {
        this.id = id;
        this.isim = isim;
        this.tur = tur;
        this.imdb = imdb;
        this.seans = seans;
        this.dil = dil;
        this.vizyonagiris = vizyonagiris;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIsim() {
        return isim;
    }

    public void setIsim(String isim) {
        this.isim = isim;
    }

    public String getTur() {
        return tur;
    }

    public void setTur(String tur) {
        this.tur = tur;
    }

    public float getImdb() {
        return imdb;
    }

    public void setImdb(float imdb) {
        this.imdb = imdb;
    }

    public String getSeans() {
        return seans;
    }

    public void setSeans(String seans) {
        this.seans = seans;
    }

    public String getDil() {
        return dil;
    }

    public void setDil(String dil) {
        this.dil = dil;
    }

    public String getVizyonagiris() {
        return vizyonagiris;
    }

    public void setVizyonagiris(String vizyonagiris) {
        this.vizyonagiris = vizyonagiris;
    }
}
