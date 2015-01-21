.class Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;
.super Lcom/ibm/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_LE"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 6
    .parameter "det"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 57
    iget-object v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 59
    .local v1, input:[B
    array-length v3, v1

    if-lt v3, v5, :cond_0

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_0

    .line 62
    array-length v3, v1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    aget-byte v3, v1, v5

    if-nez v3, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v1, v3

    if-nez v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-object v2

    .line 66
    :cond_1
    const/16 v0, 0x64

    .line 67
    .local v0, confidence:I
    new-instance v2, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v2, p1, p0, v0}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    goto :goto_0
.end method
