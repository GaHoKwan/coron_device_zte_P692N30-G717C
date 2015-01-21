.class Lcom/nuance/dragon/toolkit/vocon/a;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final CANTONESE_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final DANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final DUTCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final FINNISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final GERMAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final GREEK:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final ITALIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final JAPANESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final KOREAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final MEXICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final NORWEGIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final POLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final RUSSIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final SWEDISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final TURKISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final UKRAINIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final UNSPECIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

.field public static final US_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "frf"

    const-string v2, "European French"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "frc"

    const-string v2, "Canadian French"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "fif"

    const-string v2, "Finnish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->FINNISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "eng"

    const-string v2, "British English"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "ena"

    const-string v2, "Australian English"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "enu"

    const-string v2, "United States English"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "jpj"

    const-string v2, "Japanese"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->JAPANESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "kok"

    const-string v2, "Korean"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->KOREAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "spe"

    const-string v2, "European Spanish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "spm"

    const-string v2, "Spanish Mexico"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->MEXICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "spu"

    const-string v2, "US Spanish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->US_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "sws"

    const-string v2, "Swedish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->SWEDISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "rur"

    const-string v2, "Russian"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->RUSSIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "ptp"

    const-string v2, "European Portuguese"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "ptb"

    const-string v2, "Brazilian Portuguese"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "plp"

    const-string v2, "Polish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->POLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "ged"

    const-string v2, "German"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->GERMAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "dun"

    const-string v2, "Dutch"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->DUTCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "cac"

    const-string v2, "Cantonese Simplified"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->CANTONESE_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "cah"

    const-string v2, "Cantonese Traditional"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "mnt"

    const-string v2, "Mandarin Traditional"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "mnc"

    const-string v2, "Mandarin Simplified"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "uku"

    const-string v2, "Ukrainian"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->UKRAINIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "dad"

    const-string v2, "Danish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->DANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "non"

    const-string v2, "Norwegian"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->NORWEGIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "iti"

    const-string v2, "Italian"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->ITALIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "grg"

    const-string v2, "Greek"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->GREEK:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "trt"

    const-string v2, "Turkish"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->TURKISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    new-instance v0, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const-string v1, "xxx"

    const-string v2, "Unspecified"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->UNSPECIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->CANTONESE_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->EUROPEAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->FINNISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->BRITISH_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->AUSTRALIAN_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->JAPANESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->SWEDISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->RUSSIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->EUROPEAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->POLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->GERMAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->DUTCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->MANDARIN_TRADITIONAL:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->CANADIAN_FRENCH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->US_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->UNITED_STATES_ENGLISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->EUROPEAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->MEXICAN_SPANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->BRAZILIAN_PORTUGUESE:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->UKRAINIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->CANTONESE_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->DANISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->NORWEGIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->ITALIAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->MANDARIN_SIMPLIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->GREEK:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->KOREAN:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->TURKISH:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/nuance/dragon/toolkit/vocon/a;->UNSPECIFIED:Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/dragon/toolkit/vocon/a;->ALL_LANGUAGES:[Lcom/nuance/dragon/toolkit/vocon/VoconLanguage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const-string v0, "acmod(\\d+)_~size_kb~_~language~_([a-z]+)_([a-z]+)_f(\\d+)(.*)\\.dat"

    const-string v1, "~language~"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "~size_kb~"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "clc_~language~_~domain~(.*)\\.dat"

    const-string v1, "~language~"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "~domain~"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
