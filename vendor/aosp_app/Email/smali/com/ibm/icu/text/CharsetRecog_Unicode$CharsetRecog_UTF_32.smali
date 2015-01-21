.class abstract Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;
.super Lcom/ibm/icu/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_UTF_32"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getChar([BI)I
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 11
    .parameter "det"

    .prologue
    const/4 v8, 0x0

    .line 83
    iget-object v4, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 84
    .local v4, input:[B
    iget v9, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    div-int/lit8 v9, v9, 0x4

    mul-int/lit8 v5, v9, 0x4

    .line 85
    .local v5, limit:I
    const/4 v7, 0x0

    .line 86
    .local v7, numValid:I
    const/4 v6, 0x0

    .line 87
    .local v6, numInvalid:I
    const/4 v2, 0x0

    .line 88
    .local v2, hasBOM:Z
    const/4 v1, 0x0

    .line 90
    .local v1, confidence:I
    if-nez v5, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v8

    .line 93
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v9

    const v10, 0xfeff

    if-ne v9, v10, :cond_2

    .line 94
    const/4 v2, 0x1

    .line 97
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_5

    .line 98
    invoke-virtual {p0, v4, v3}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v0

    .line 100
    .local v0, ch:I
    if-ltz v0, :cond_3

    const v9, 0x10ffff

    if-ge v0, v9, :cond_3

    const v9, 0xd800

    if-lt v0, v9, :cond_4

    const v9, 0xdfff

    if-gt v0, v9, :cond_4

    .line 101
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 97
    :goto_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 103
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 110
    .end local v0           #ch:I
    :cond_5
    if-eqz v2, :cond_7

    if-nez v6, :cond_7

    .line 111
    const/16 v1, 0x64

    .line 123
    :cond_6
    :goto_3
    if-eqz v1, :cond_0

    new-instance v8, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v8, p1, p0, v1}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    goto :goto_0

    .line 112
    :cond_7
    if-eqz v2, :cond_8

    mul-int/lit8 v9, v6, 0xa

    if-le v7, v9, :cond_8

    .line 113
    const/16 v1, 0x50

    goto :goto_3

    .line 114
    :cond_8
    const/4 v9, 0x3

    if-le v7, v9, :cond_9

    if-nez v6, :cond_9

    .line 115
    const/16 v1, 0x64

    goto :goto_3

    .line 116
    :cond_9
    if-lez v7, :cond_a

    if-nez v6, :cond_a

    .line 117
    const/16 v1, 0x50

    goto :goto_3

    .line 118
    :cond_a
    mul-int/lit8 v9, v6, 0xa

    if-le v7, v9, :cond_6

    .line 120
    const/16 v1, 0x19

    goto :goto_3
.end method
