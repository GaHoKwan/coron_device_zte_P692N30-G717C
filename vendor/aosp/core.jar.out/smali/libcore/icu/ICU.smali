.class public final Llibcore/icu/ICU;
.super Ljava/lang/Object;
.source "ICU.java"


# static fields
.field public static final U_BUFFER_OVERFLOW_ERROR:I = 0xf

.field public static final U_ILLEGAL_CHAR_FOUND:I = 0xc

.field public static final U_INVALID_CHAR_FOUND:I = 0xa

.field public static final U_TRUNCATED_CHAR_FOUND:I = 0xb

.field public static final U_ZERO_ERROR:I

.field private static availableLocalesCache:[Ljava/util/Locale;

.field private static isoCountries:[Ljava/lang/String;

.field private static isoLanguages:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U_FAILURE(I)Z
    .locals 1
    .parameter "error"

    .prologue
    .line 155
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getAvailableBreakIteratorLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Llibcore/icu/ICU;->getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableBreakIteratorLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCalendarLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCalendarLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableCollatorLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCollatorLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableCollatorLocalesNative()[Ljava/lang/String;
.end method

.method public static native getAvailableCurrencyCodes()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableDateFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableDecimalFormatSymbolsLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    .line 99
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->availableLocalesCache:[Ljava/util/Locale;

    invoke-virtual {v0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    return-object v0
.end method

.method private static native getAvailableLocalesNative()[Ljava/lang/String;
.end method

.method public static getAvailableNumberFormatLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Llibcore/icu/ICU;->getAvailableNumberFormatLocalesNative()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static native getAvailableNumberFormatLocalesNative()[Ljava/lang/String;
.end method

.method public static native getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCurrencyDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getCurrencyFractionDigits(Ljava/lang/String;)I
.end method

.method public static native getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDisplayCountryNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDisplayLanguageNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getDisplayVariantNative(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3CountryNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getISO3LanguageNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Llibcore/icu/ICU;->getISOCountriesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    .line 59
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoCountries:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOCountriesNative()[Ljava/lang/String;
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguagesNative()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    .line 46
    :cond_0
    sget-object v0, Llibcore/icu/ICU;->isoLanguages:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static native getISOLanguagesNative()[Ljava/lang/String;
.end method

.method public static native getIcuVersion()Ljava/lang/String;
.end method

.method public static native getScript(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getUnicodeVersion()Ljava/lang/String;
.end method

.method static native initLocaleDataImpl(Ljava/lang/String;Llibcore/icu/LocaleData;)Z
.end method

.method public static localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeName"

    .prologue
    const/16 v5, 0x5f

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 69
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    .local v0, first:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 71
    .local v1, second:I
    if-ne v0, v3, :cond_0

    .line 73
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-object v2

    .line 74
    :cond_0
    if-ne v1, v3, :cond_1

    .line 76
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static localesFromStrings([Ljava/lang/String;)[Ljava/util/Locale;
    .locals 6
    .parameter "localeNames"

    .prologue
    .line 87
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 88
    .local v4, set:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/util/Locale;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 89
    .local v3, localeName:Ljava/lang/String;
    invoke-static {v3}, Llibcore/icu/ICU;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v3           #localeName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/Locale;

    return-object v5
.end method

.method public static native toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
