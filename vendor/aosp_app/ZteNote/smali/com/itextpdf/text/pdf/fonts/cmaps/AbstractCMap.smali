.class public abstract Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;
.super Ljava/lang/Object;
.source "AbstractCMap.java"


# instance fields
.field private cmapName:Ljava/lang/String;

.field private ordering:Ljava/lang/String;

.field private registry:Ljava/lang/String;

.field private supplement:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeStringToByte(Lcom/itextpdf/text/pdf/PdfString;)[B
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    .line 129
    .local v0, b:[B
    array-length v2, v0

    new-array v1, v2, [B

    .line 130
    .local v1, br:[B
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    return-object v1
.end method


# virtual methods
.method abstract addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V
.end method

.method addRange(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 12
    .parameter "from"
    .parameter "to"
    .parameter "code"

    .prologue
    const/4 v11, 0x1

    .line 98
    invoke-static {p1}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->decodeStringToByte(Lcom/itextpdf/text/pdf/PdfString;)[B

    move-result-object v0

    .line 99
    .local v0, a1:[B
    invoke-static {p2}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->decodeStringToByte(Lcom/itextpdf/text/pdf/PdfString;)[B

    move-result-object v1

    .line 100
    .local v1, a2:[B
    array-length v9, v0

    array-length v10, v1

    if-ne v9, v10, :cond_0

    array-length v9, v0

    if-nez v9, :cond_1

    .line 101
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Invalid map."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 102
    :cond_1
    const/4 v7, 0x0

    .line 103
    .local v7, sout:[B
    instance-of v9, p3, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v9, :cond_2

    move-object v9, p3

    .line 104
    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    invoke-static {v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->decodeStringToByte(Lcom/itextpdf/text/pdf/PdfString;)[B

    move-result-object v7

    .line 105
    :cond_2
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    and-int/lit16 v8, v9, 0xff

    .line 106
    .local v8, start:I
    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v1, v9

    and-int/lit16 v2, v9, 0xff

    .line 107
    .local v2, end:I
    move v3, v8

    .local v3, k:I
    :goto_0
    if-gt v3, v2, :cond_6

    .line 108
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    int-to-byte v10, v3

    aput-byte v10, v0, v9

    .line 109
    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v5, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    .line 110
    .local v5, s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v5, v11}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    .line 111
    instance-of v9, p3, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v9, :cond_4

    move-object v9, p3

    .line 112
    check-cast v9, Lcom/itextpdf/text/pdf/PdfArray;

    sub-int v10, v3, v8

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 107
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_4
    instance-of v9, p3, Lcom/itextpdf/text/pdf/PdfNumber;

    if-eqz v9, :cond_5

    move-object v9, p3

    .line 115
    check-cast v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v9

    add-int/2addr v9, v3

    sub-int v4, v9, v8

    .line 116
    .local v4, nn:I
    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v9, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v5, v9}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 118
    .end local v4           #nn:I
    :cond_5
    instance-of v9, p3, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v9, :cond_3

    .line 119
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    .line 120
    .local v6, s1:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v6, v11}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    .line 121
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    aget-byte v10, v7, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v7, v9

    .line 122
    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1

    .line 125
    .end local v5           #s:Lcom/itextpdf/text/pdf/PdfString;
    .end local v6           #s1:Lcom/itextpdf/text/pdf/PdfString;
    :cond_6
    return-void
.end method

.method public decodeStringToUnicode(Lcom/itextpdf/text/pdf/PdfString;)Ljava/lang/String;
    .locals 2
    .parameter "ps"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->isHexWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    const-string v1, "UnicodeBigUnmarked"

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->cmapName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->ordering:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->supplement:I

    return v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "cmapName"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->cmapName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method setOrdering(Ljava/lang/String;)V
    .locals 0
    .parameter "ordering"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->ordering:Ljava/lang/String;

    .line 77
    return-void
.end method

.method setRegistry(Ljava/lang/String;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->registry:Ljava/lang/String;

    .line 85
    return-void
.end method

.method setSupplement(I)V
    .locals 0
    .parameter "supplement"

    .prologue
    .line 92
    iput p1, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;->supplement:I

    .line 93
    return-void
.end method
