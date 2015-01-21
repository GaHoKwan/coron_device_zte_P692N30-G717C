.class Lcom/ibm/icu/text/CharsetRecog_UTF8;
.super Lcom/ibm/icu/text/CharsetRecognizer;
.source "CharsetRecog_UTF8.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "UTF-8"

    return-object v0
.end method

.method match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 11
    .parameter "det"

    .prologue
    const/4 v10, 0x3

    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, hasBOM:Z
    const/4 v6, 0x0

    .line 24
    .local v6, numValid:I
    const/4 v5, 0x0

    .line 25
    .local v5, numInvalid:I
    iget-object v4, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 27
    .local v4, input:[B
    const/4 v7, 0x0

    .line 30
    .local v7, trailBytes:I
    iget v8, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-lt v8, v10, :cond_0

    const/4 v8, 0x0

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xef

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_0

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbf

    if-ne v8, v9, :cond_0

    .line 32
    const/4 v2, 0x1

    .line 36
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-ge v3, v8, :cond_7

    .line 37
    aget-byte v0, v4, v3

    .line 38
    .local v0, b:I
    and-int/lit16 v8, v0, 0x80

    if-nez v8, :cond_2

    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_2
    and-int/lit16 v8, v0, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_4

    .line 44
    const/4 v7, 0x1

    .line 59
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    iget v8, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-ge v3, v8, :cond_1

    .line 63
    aget-byte v0, v4, v3

    .line 64
    and-int/lit16 v8, v0, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_a

    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    goto :goto_1

    .line 45
    :cond_4
    and-int/lit16 v8, v0, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_5

    .line 46
    const/4 v7, 0x2

    goto :goto_2

    .line 47
    :cond_5
    and-int/lit16 v8, v0, 0xf8

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_6

    .line 48
    const/4 v7, 0x3

    goto :goto_2

    .line 50
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 51
    const/4 v8, 0x5

    if-le v5, v8, :cond_9

    .line 78
    .end local v0           #b:I
    :cond_7
    const/4 v1, 0x0

    .line 79
    .local v1, confidence:I
    if-eqz v2, :cond_b

    if-nez v5, :cond_b

    .line 80
    const/16 v1, 0x64

    .line 94
    :cond_8
    :goto_3
    if-nez v1, :cond_10

    const/4 v8, 0x0

    :goto_4
    return-object v8

    .line 54
    .end local v1           #confidence:I
    .restart local v0       #b:I
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 68
    :cond_a
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_3

    .line 69
    add-int/lit8 v6, v6, 0x1

    .line 70
    goto :goto_1

    .line 81
    .end local v0           #b:I
    .restart local v1       #confidence:I
    :cond_b
    if-eqz v2, :cond_c

    mul-int/lit8 v8, v5, 0xa

    if-le v6, v8, :cond_c

    .line 82
    const/16 v1, 0x50

    goto :goto_3

    .line 83
    :cond_c
    if-le v6, v10, :cond_d

    if-nez v5, :cond_d

    .line 84
    const/16 v1, 0x64

    goto :goto_3

    .line 85
    :cond_d
    if-lez v6, :cond_e

    if-nez v5, :cond_e

    .line 86
    const/16 v1, 0x50

    goto :goto_3

    .line 87
    :cond_e
    if-nez v6, :cond_f

    if-nez v5, :cond_f

    .line 89
    const/16 v1, 0xa

    goto :goto_3

    .line 90
    :cond_f
    mul-int/lit8 v8, v5, 0xa

    if-le v6, v8, :cond_8

    .line 92
    const/16 v1, 0x19

    goto :goto_3

    .line 94
    :cond_10
    new-instance v8, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v8, p1, p0, v1}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    goto :goto_4
.end method
