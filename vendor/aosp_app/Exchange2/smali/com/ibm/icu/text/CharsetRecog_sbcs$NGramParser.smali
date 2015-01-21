.class Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final N_GRAM_MASK:I = 0xffffff


# instance fields
.field private byteIndex:I

.field private byteMap:[B

.field private hitCount:I

.field private ngram:I

.field private ngramCount:I

.field private ngramList:[I

.field private spaceChar:B


# direct methods
.method public constructor <init>([I[B)V
    .locals 1
    .parameter "theNgramList"
    .parameter "theByteMap"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    .line 30
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 42
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    .line 43
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    .line 45
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 47
    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 48
    return-void
.end method

.method private addByte(I)V
    .locals 2
    .parameter "b"

    .prologue
    .line 104
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 105
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    .line 106
    return-void
.end method

.method private lookup(I)V
    .locals 1
    .parameter "thisNgram"

    .prologue
    .line 94
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    invoke-static {v0, p1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 97
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    .line 100
    :cond_0
    return-void
.end method

.method private nextByte(Lcom/ibm/icu/text/CharsetDetector;)I
    .locals 3
    .parameter "det"

    .prologue
    .line 110
    iget v0, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iget v1, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    if-lt v0, v1, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method private static search([II)I
    .locals 2
    .parameter "table"
    .parameter "value"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, index:I
    const/16 v1, 0x20

    aget v1, p0, v1

    if-gt v1, p1, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x20

    .line 61
    :cond_0
    add-int/lit8 v1, v0, 0x10

    aget v1, p0, v1

    if-gt v1, p1, :cond_1

    .line 62
    add-int/lit8 v0, v0, 0x10

    .line 65
    :cond_1
    add-int/lit8 v1, v0, 0x8

    aget v1, p0, v1

    if-gt v1, p1, :cond_2

    .line 66
    add-int/lit8 v0, v0, 0x8

    .line 69
    :cond_2
    add-int/lit8 v1, v0, 0x4

    aget v1, p0, v1

    if-gt v1, p1, :cond_3

    .line 70
    add-int/lit8 v0, v0, 0x4

    .line 73
    :cond_3
    add-int/lit8 v1, v0, 0x2

    aget v1, p0, v1

    if-gt v1, p1, :cond_4

    .line 74
    add-int/lit8 v0, v0, 0x2

    .line 77
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-gt v1, p1, :cond_5

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 81
    :cond_5
    aget v1, p0, v0

    if-le v1, p1, :cond_6

    .line 82
    add-int/lit8 v0, v0, -0x1

    .line 85
    :cond_6
    if-ltz v0, :cond_7

    aget v1, p0, v0

    if-eq v1, p1, :cond_8

    .line 86
    :cond_7
    const/4 v0, -0x1

    .line 89
    .end local v0           #index:I
    :cond_8
    return v0
.end method


# virtual methods
.method public parse(Lcom/ibm/icu/text/CharsetDetector;)I
    .locals 1
    .parameter "det"

    .prologue
    .line 119
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Lcom/ibm/icu/text/CharsetDetector;B)I

    move-result v0

    return v0
.end method

.method public parse(Lcom/ibm/icu/text/CharsetDetector;B)I
    .locals 9
    .parameter "det"
    .parameter "spaceCh"

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, ignoreSpace:Z
    iput-byte p2, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    .line 127
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->nextByte(Lcom/ibm/icu/text/CharsetDetector;)I

    move-result v0

    .local v0, b:I
    if-ltz v0, :cond_4

    .line 128
    iget-object v5, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    aget-byte v2, v5, v0

    .line 131
    .local v2, mb:B
    if-eqz v2, :cond_0

    .line 132
    iget-byte v5, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v5, :cond_1

    if-nez v1, :cond_2

    .line 133
    :cond_1
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 136
    :cond_2
    iget-byte v5, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v5, :cond_3

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 141
    .end local v2           #mb:B
    :cond_4
    iget-byte v5, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 143
    iget v5, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    int-to-double v5, v5

    iget v7, p0, Lcom/ibm/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    int-to-double v7, v7

    div-double v3, v5, v7

    .line 151
    .local v3, rawPercent:D
    const-wide v5, 0x3fd51eb851eb851fL

    cmpl-double v5, v3, v5

    if-lez v5, :cond_5

    .line 152
    const/16 v5, 0x62

    .line 155
    :goto_2
    return v5

    :cond_5
    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v5, v3

    double-to-int v5, v5

    goto :goto_2
.end method
