.class public Lcom/itextpdf/text/factories/GreekAlphabetFactory;
.super Ljava/lang/Object;
.source "GreekAlphabetFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getLowerCaseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/itextpdf/text/factories/GreekAlphabetFactory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/text/factories/GreekAlphabetFactory;->getString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getString(IZ)Ljava/lang/String;
    .locals 7
    .parameter "index"
    .parameter "lowercase"

    .prologue
    .line 93
    const/4 v5, 0x1

    if-ge p0, v5, :cond_0

    const-string v5, ""

    .line 116
    :goto_0
    return-object v5

    .line 94
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, bytes:I
    const/4 v2, 0x0

    .line 98
    .local v2, start:I
    const/16 v3, 0x18

    .line 99
    .local v3, symbols:I
    :goto_1
    add-int v5, v3, v2

    if-lt p0, v5, :cond_1

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    add-int/2addr v2, v3

    .line 102
    mul-int/lit8 v3, v3, 0x18

    goto :goto_1

    .line 105
    :cond_1
    sub-int v1, p0, v2

    .line 106
    .local v1, c:I
    new-array v4, v0, [C

    .line 107
    .local v4, value:[C
    :goto_2
    if-lez v0, :cond_4

    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 109
    rem-int/lit8 v5, v1, 0x18

    int-to-char v5, v5

    aput-char v5, v4, v0

    .line 110
    aget-char v5, v4, v0

    const/16 v6, 0x10

    if-le v5, v6, :cond_2

    aget-char v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    aput-char v5, v4, v0

    .line 111
    :cond_2
    aget-char v6, v4, v0

    if-eqz p1, :cond_3

    const/16 v5, 0x3b1

    :goto_3
    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    .line 112
    aget-char v5, v4, v0

    invoke-static {v5}, Lcom/itextpdf/text/SpecialSymbol;->getCorrespondingSymbol(C)C

    move-result v5

    aput-char v5, v4, v0

    .line 113
    div-int/lit8 v1, v1, 0x18

    goto :goto_2

    .line 111
    :cond_3
    const/16 v5, 0x391

    goto :goto_3

    .line 116
    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final getUpperCaseString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/itextpdf/text/factories/GreekAlphabetFactory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
