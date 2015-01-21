.class abstract Lcom/ibm/icu/text/CharsetRecog_Unicode;
.super Lcom/ibm/icu/text/CharsetRecognizer;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;,
        Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecognizer;-><init>()V

    .line 142
    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
.end method
