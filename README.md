# Formularz Oceny RODO - Dokumentacja

## Struktura projektu

Projekt został zorganizowany w strukturę modułową, co ułatwia pracę nad poszczególnymi sekcjami strony. Poniżej przedstawiono główne elementy struktury:

### Struktura katalogów

```
www-app-rodo-form/
├── components/
│   ├── css/           # Pliki CSS podzielone na moduły
│   ├── html/          # Komponenty HTML
│   └── js/            # Skrypty JavaScript (opcjonalnie)
├── images/            # Obrazy i grafiki
│   └── slideshow/     # Obrazy do slideshowa
├── css/               # Dodatkowe pliki CSS (jeśli istnieją)
├── img/               # Dodatkowe obrazy (jeśli istnieją)
├── index.html         # Główny plik HTML importujący komponenty
├── warunki-korzystania.html  # Strona z warunkami korzystania
├── Dockerfile         # Konfiguracja kontenera Docker
└── nginx.conf         # Konfiguracja serwera Nginx
```

### Komponenty CSS

Pliki CSS zostały podzielone na moduły według funkcjonalności:

1. `variables.css` - Zmienne CSS (kolory, cienie, gradienty, itp.)
2. `base.css` - Podstawowe style (reset, typografia, kontenery, przyciski)
3. `navigation.css` - Style nawigacji
4. `hero.css` - Style sekcji hero ze slideshow
5. `features.css` - Style sekcji z funkcjami
6. `about.css` - Style sekcji "O nas"
7. `app-features.css` - Style funkcji aplikacji
8. `modules.css` - Style modułów aplikacji
9. `module-detail.css` - Style szczegółów modułów
10. `contact.css` - Style sekcji kontaktowej
11. `cta.css` - Style sekcji CTA (Call to Action)
12. `testimonials.css` - Style opinii klientów
13. `trusted-by.css` - Style sekcji "Zaufali nam"
14. `privacy.css` - Style sekcji polityki prywatności
15. `footer.css` - Style stopki
16. `responsive.css` - Style responsywne

### Komponenty HTML

Pliki HTML zostały podzielone na komponenty według sekcji strony:

1. `header.html` - Nagłówek strony z nawigacją
2. `hero.html` - Sekcja hero ze slideshow
3. `features.html` - Sekcja z funkcjami
4. `testimonials.html` - Sekcja z opiniami klientów
5. `about.html` - Sekcja "O nas"
6. `modules.html` - Sekcja z modułami aplikacji
7. `contact.html` - Sekcja kontaktowa
8. `cta.html` - Sekcja CTA (Call to Action)
9. `footer.html` - Stopka strony

## Jak pracować z projektem

### Edycja komponentów

1. Aby edytować konkretną sekcję strony, znajdź odpowiedni plik HTML w katalogu `components/html/` i wprowadź zmiany.
2. Aby edytować style konkretnej sekcji, znajdź odpowiedni plik CSS w katalogu `components/css/` i wprowadź zmiany.

### Dodawanie nowych komponentów

1. Utwórz nowy plik HTML w katalogu `components/html/` dla nowej sekcji.
2. Utwórz nowy plik CSS w katalogu `components/css/` dla stylów nowej sekcji.
3. Dodaj link do nowego pliku CSS w `index.html`.
4. Dodaj kontener i kod ładujący dla nowego komponentu HTML w `index.html`.

### Budowanie i wdrażanie

Projekt jest skonfigurowany do działania w kontenerze Docker:

1. Zbuduj obraz Docker: `docker build -t rodo-form .`
2. Uruchom kontener: `docker run -p 8080:80 rodo-form`
3. Strona będzie dostępna pod adresem: `http://localhost:8080`

## Slideshow w sekcji hero

Slideshow w sekcji hero jest zaimplementowany za pomocą animacji CSS. Obrazy są przechowywane w katalogu `images/slideshow/` i są automatycznie przełączane co kilka sekund. Aby dodać lub zmienić obrazy w slideshow:

1. Dodaj nowe obrazy do katalogu `images/slideshow/`
2. Zaktualizuj animację `slideshow` w pliku `components/css/hero.css`

## Uwagi

- Wszystkie ścieżki do obrazów w komponentach HTML powinny być względne do głównego katalogu projektu (np. `images/example.jpg`).
- Ścieżki do obrazów w plikach CSS powinny być względne do lokalizacji pliku CSS (np. `../../images/example.jpg`).
