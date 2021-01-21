/**
 *
 * @author Serhat
 */
public interface AdminFilmFonksiyonlari {
    public void filmGoruntule();
    public void filmGuncelle(String sira, String isim, String tur, String imdb, String seans, String dil, String vizyon);
    public void filmSil(String id);
    
}
