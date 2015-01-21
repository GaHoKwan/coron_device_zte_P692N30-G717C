.class Lcom/nuance/dragon/toolkit/language/a;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

.field public static final AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final CHINESE_CANTONESE:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final CHINESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final DANISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final DUTCH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final FINNISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final GERMAN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final GREEK:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final ITALIAN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final JAPANESE:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final KOREAN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final NORWEGIAN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final POLISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final RUSSIAN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final SWEDISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final TAIWANESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final TURKISH:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final UKRANIAN:Lcom/nuance/dragon/toolkit/language/Language;

.field public static final UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "fra-FRA"

    const-string v5, "European French"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->JAPANESE:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->JAPANESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->JAPANESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "jpn-JPN"

    const-string v5, "Japanese"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->JAPANESE:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->GERMAN:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->GERMAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->GERMAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "deu-DEU"

    const-string v5, "German"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->GERMAN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "spa-ESP"

    const-string v5, "European Spanish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->NORWEGIAN:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->NORWEGIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->NORWEGIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "nor-NOR"

    const-string v5, "Norwegian"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->NORWEGIAN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->SWEDISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->SWEDISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->SWEDISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "swe-SWE"

    const-string v5, "Swedish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->SWEDISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "eng-AUS"

    const-string v5, "Australian English"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->POLISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->POLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->POLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "pol-POL"

    const-string v5, "Polish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->POLISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "por-BRA"

    const-string v5, "Brazilian Portuguese"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "por-PRT"

    const-string v5, "European Portuguese"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->MANDARIN_ENGLISH_SIMPLIFIED:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "cmn-CHN"

    const-string v5, "Chinese Mandarin"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->CHINESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->FINNISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->FINNISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->FINNISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "fin-FIN"

    const-string v5, "Finnish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->FINNISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->DANISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->DANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->DANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "dan-DNK"

    const-string v5, "Danish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->DANISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->DUTCH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->DUTCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->DUTCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "nld-NLD"

    const-string v5, "Dutch"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->DUTCH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->MANDARIN_ENGLISH_TRADITIONAL:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "cmn-TWN"

    const-string v5, "Taiwanese Mandarin"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->TAIWANESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->UKRAINIAN:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->UKRAINIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "ukr-UKR"

    const-string v5, "Ukranian"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->UKRANIAN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->MEXICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "spa-XLA"

    const-string v5, "Latin American Spanish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->KOREAN:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->KOREAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->KOREAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "kor-KOR"

    const-string v5, "Korean"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->KOREAN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->ITALIAN:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->ITALIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->ITALIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "ita-ITA"

    const-string v5, "Italian"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->ITALIAN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "fra-CAN"

    const-string v5, "Canadian French"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "eng-USA"

    const-string v5, "United States English"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->GREEK:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->GREEK:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->GREEK:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "ell-GRC"

    const-string v5, "Greek"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->GREEK:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->RUSSIAN:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->RUSSIAN:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->RUSSIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "rus-RUS"

    const-string v5, "Russian"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->RUSSIAN:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->CANTONESE_ENGLISH_TRADITIONAL:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "yue-CHN"

    const-string v5, "Chinese Cantonese"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->CHINESE_CANTONESE:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "eng-GBR"

    const-string v5, "British English"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    new-instance v0, Lcom/nuance/dragon/toolkit/language/Language;

    sget-object v1, Lcom/nuance/dragon/toolkit/elvis/ElvisRecognizer$Languages;->TURKISH:Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;

    sget-object v2, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Languages;->TURKISH:Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;

    sget-object v3, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$Languages;->TURKISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v4, "tur-TUR"

    const-string v5, "Turkish"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/language/Language;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisLanguage;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerLanguage;Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->TURKISH:Lcom/nuance/dragon/toolkit/language/Language;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/language/Language;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->JAPANESE:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->GERMAN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->NORWEGIAN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->SWEDISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->POLISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->CHINESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->FINNISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->DANISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->DUTCH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->TAIWANESE_MANDARIN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->UKRANIAN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->LATIN_AMERICAN_SPANISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->KOREAN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->ITALIAN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->GREEK:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->RUSSIAN:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->CHINESE_CANTONESE:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nuance/dragon/toolkit/language/a;->TURKISH:Lcom/nuance/dragon/toolkit/language/Language;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/language/a;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/language/Language;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
