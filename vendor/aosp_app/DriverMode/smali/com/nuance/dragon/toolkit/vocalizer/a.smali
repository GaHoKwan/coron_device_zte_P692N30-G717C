.class Lcom/nuance/dragon/toolkit/vocalizer/a;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final ARABIC:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final ARGENTINIAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final BASQUE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final BELGIAN_DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final CANADIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final COLOMBIAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final CZECH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final DANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final FINNISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final GAELIC:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final GERMAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final GREEK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final HEBREW:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final HINDI:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final HUNGARIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final IRISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final ITALIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final JAPANESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final KOREAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final NEW_ZEALAND_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final NORWEGIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final POLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final ROMANIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final RUSSIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final SLOVAK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final SOUTH_AFRICAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final SWEDISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final THAI:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final TURKISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

.field public static final UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "dad"

    const-string v2, "Danish"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "magnus"

    aput-object v4, v3, v6

    const-string v4, "sara"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Magnus"

    aput-object v5, v4, v6

    const-string v5, "Sara"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->DANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "non"

    const-string v2, "Norwegian"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "henrik"

    aput-object v4, v3, v6

    const-string v4, "nora"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Henrik"

    aput-object v5, v4, v6

    const-string v5, "Nora"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->NORWEGIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "jpj"

    const-string v2, "Japanese"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "kyoko"

    aput-object v4, v3, v6

    const-string v4, "otoya"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Kyoko"

    aput-object v5, v4, v6

    const-string v5, "Otoya"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->JAPANESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "arw"

    const-string v2, "Arabic"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tarik"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Tarik"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->ARABIC:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "mnt"

    const-string v2, "Mandarin Traditional"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "mei-jia"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Mei-jia"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "cah"

    const-string v2, "Cantonese Traditional"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "sin-ji"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sin-ji"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "huh"

    const-string v2, "Hungarian"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "mariska"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Mariska"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->HUNGARIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ens"

    const-string v2, "South African English"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "fiona"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Fiona"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->SOUTH_AFRICAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "plp"

    const-string v2, "Polish"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ewa"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Ewa"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->POLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ptb"

    const-string v2, "Brazilian Portuguese"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "felipe"

    aput-object v4, v3, v6

    const-string v4, "luciana"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Felipe"

    aput-object v5, v4, v6

    const-string v5, "Luciana"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "spc"

    const-string v2, "Colombian Spanish"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "carlos"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Carlos"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->COLOMBIAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "spm"

    const-string v2, "Latin American Spanish"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "juan"

    aput-object v4, v3, v6

    const-string v4, "paulina"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Juan"

    aput-object v5, v4, v6

    const-string v5, "Paulina"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ged"

    const-string v2, "German"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "anna"

    aput-object v4, v3, v6

    const-string v4, "yannick"

    aput-object v4, v3, v7

    const-string v4, "petra"

    aput-object v4, v3, v8

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Anna"

    aput-object v5, v4, v6

    const-string v5, "Yannick"

    aput-object v5, v4, v7

    const-string v5, "Petra"

    aput-object v5, v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->GERMAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "rur"

    const-string v2, "Russian"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "milena"

    aput-object v4, v3, v6

    const-string v4, "yuri"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Milena"

    aput-object v5, v4, v6

    const-string v5, "Yuri"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->RUSSIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "czc"

    const-string v2, "Czech"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "iveta"

    aput-object v4, v3, v6

    const-string v4, "zuzana"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Iveta"

    aput-object v5, v4, v6

    const-string v5, "Zuzana"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->CZECH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ror"

    const-string v2, "Romanian"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ioana"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Ioana"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->ROMANIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "mnc"

    const-string v2, "Mandarin Simplified"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tian-tian"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Tian-tian"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "spe"

    const-string v2, "European Spanish"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "jorge"

    aput-object v4, v3, v6

    const-string v4, "monica"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Jorge"

    aput-object v5, v4, v6

    const-string v5, "Monica"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "frf"

    const-string v2, "European French"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "audrey"

    aput-object v4, v3, v6

    const-string v4, "thomas"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Audrey"

    aput-object v5, v4, v6

    const-string v5, "Thomas"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "frc"

    const-string v2, "Canadian French"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "amelie"

    aput-object v4, v3, v6

    const-string v4, "nicolas"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Amelie"

    aput-object v5, v4, v6

    const-string v5, "Nicolas"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ena"

    const-string v2, "Australian English"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "karen"

    aput-object v4, v3, v6

    const-string v4, "lee"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Karen"

    aput-object v5, v4, v6

    const-string v5, "Lee"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "kok"

    const-string v2, "Korean"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "sora"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sora"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->KOREAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "sks"

    const-string v2, "Slovak"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "laura"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Laura"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->SLOVAK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ene"

    const-string v2, "Irish English"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "moira"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Moira"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->IRISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "dun"

    const-string v2, "Dutch"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "claire"

    aput-object v4, v3, v6

    const-string v4, "xander"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Claire"

    aput-object v5, v4, v6

    const-string v5, "Xander"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "eng"

    const-string v2, "British English"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "daniel"

    aput-object v4, v3, v6

    const-string v4, "serena"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Daniel"

    aput-object v5, v4, v6

    const-string v5, "Serena"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "dub"

    const-string v2, "Belgian Dutch"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ellen"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Ellen"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->BELGIAN_DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "iti"

    const-string v2, "Italian"

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "alice"

    aput-object v4, v3, v6

    const-string v4, "federica"

    aput-object v4, v3, v7

    const-string v4, "luca"

    aput-object v4, v3, v8

    const-string v4, "paola"

    aput-object v4, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Alice"

    aput-object v5, v4, v6

    const-string v5, "Federica"

    aput-object v5, v4, v7

    const-string v5, "Luca"

    aput-object v5, v4, v8

    const-string v5, "Paola"

    aput-object v5, v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->ITALIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "gle"

    const-string v2, "Gaelic"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "carmela"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Carmela"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->GAELIC:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "sws"

    const-string v2, "Swedish"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "alva"

    aput-object v4, v3, v6

    const-string v4, "oskar"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Alva"

    aput-object v5, v4, v6

    const-string v5, "Oskar"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->SWEDISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "grg"

    const-string v2, "Greek"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "melina"

    aput-object v4, v3, v6

    const-string v4, "nikos"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Melina"

    aput-object v5, v4, v6

    const-string v5, "Nikos"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->GREEK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "trt"

    const-string v2, "Turkish"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "cem"

    aput-object v4, v3, v6

    const-string v4, "yelda"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Cem"

    aput-object v5, v4, v6

    const-string v5, "Yelda"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->TURKISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "bae"

    const-string v2, "Basque"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "miren"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Miren"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->BASQUE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "fif"

    const-string v2, "Finnish"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "satu"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Satu"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->FINNISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "enu"

    const-string v2, "United States English"

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "allison"

    aput-object v4, v3, v6

    const-string v4, "ava"

    aput-object v4, v3, v7

    const-string v4, "samantha"

    aput-object v4, v3, v8

    const-string v4, "tom"

    aput-object v4, v3, v9

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "Allison"

    aput-object v5, v4, v6

    const-string v5, "Ava"

    aput-object v5, v4, v7

    const-string v5, "Samantha"

    aput-object v5, v4, v8

    const-string v5, "Tom"

    aput-object v5, v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "idi"

    const-string v2, "Hindi"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "damayanti"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Damayanti"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->HINDI:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "enz"

    const-string v2, "New Zealand English"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "tessa"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Tessa"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->NEW_ZEALAND_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "ptp"

    const-string v2, "European Portuguese"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "catarina"

    aput-object v4, v3, v6

    const-string v4, "joana"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Catarina"

    aput-object v5, v4, v6

    const-string v5, "Joana"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "spa"

    const-string v2, "Argentinian Spanish"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "diego"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Diego"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->ARGENTINIAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "hei"

    const-string v2, "Hebrew"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "carmit"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Carmit"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->HEBREW:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "cae"

    const-string v2, "Canadian English"

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "jordi"

    aput-object v4, v3, v6

    const-string v4, "montserrat"

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "Jordi"

    aput-object v5, v4, v6

    const-string v5, "Montserrat"

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->CANADIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const-string v1, "tht"

    const-string v2, "Thai"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "kanya"

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Kanya"

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->THAI:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/a;->DANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/a;->NORWEGIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/a;->JAPANESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/a;->ARABIC:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v1, v0, v9

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/a;->MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->HUNGARIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->SOUTH_AFRICAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->POLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->COLOMBIAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->GERMAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->RUSSIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->CZECH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->ROMANIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->KOREAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->SLOVAK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->IRISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->BELGIAN_DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->ITALIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->GAELIC:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->SWEDISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->GREEK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->TURKISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->BASQUE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->FINNISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->HINDI:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->NEW_ZEALAND_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->ARGENTINIAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->HEBREW:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->CANADIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/a;->THAI:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/vocalizer/a;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
