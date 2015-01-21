.class abstract Lcom/ibm/icu/text/CharsetRecog_sbcs;
.super Lcom/ibm/icu/text/CharsetRecognizer;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramsPlusLang;,
        Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecognizer;-><init>()V

    .line 1163
    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;[I[B)I
    .locals 1
    .parameter "det"
    .parameter "ngrams"
    .parameter "byteMap"

    .prologue
    .line 161
    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/CharsetRecog_sbcs;->match(Lcom/ibm/icu/text/CharsetDetector;[I[BB)I

    move-result v0

    return v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;[I[BB)I
    .locals 2
    .parameter "det"
    .parameter "ngrams"
    .parameter "byteMap"
    .parameter "spaceChar"

    .prologue
    .line 166
    new-instance v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;

    invoke-direct {v0, p2, p3}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    .line 167
    .local v0, parser:Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;
    invoke-virtual {v0, p1, p4}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Lcom/ibm/icu/text/CharsetDetector;B)I

    move-result v1

    return v1
.end method
