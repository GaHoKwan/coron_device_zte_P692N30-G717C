.class public Lcom/itextpdf/text/pdf/PdfFunction;
.super Ljava/lang/Object;
.source "PdfFunction.java"


# instance fields
.field protected dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method protected constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfFunction;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 64
    return-void
.end method

.method public static type0(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[III[F[F[B)Lcom/itextpdf/text/pdf/PdfFunction;
    .locals 5
    .parameter "writer"
    .parameter "domain"
    .parameter "range"
    .parameter "size"
    .parameter "bitsPerSample"
    .parameter "order"
    .parameter "encode"
    .parameter "decode"
    .parameter "stream"

    .prologue
    .line 80
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFunction;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFunction;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 81
    .local v0, func:Lcom/itextpdf/text/pdf/PdfFunction;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v1, p8}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 82
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    check-cast v1, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 83
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FUNCTIONTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 84
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DOMAIN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 85
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RANGE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 86
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 87
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BITSPERSAMPLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 88
    const/4 v1, 0x1

    if-eq p5, v1, :cond_0

    .line 89
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 90
    :cond_0
    if-eqz p6, :cond_1

    .line 91
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ENCODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 92
    :cond_1
    if-eqz p7, :cond_2

    .line 93
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p7}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 94
    :cond_2
    return-object v0
.end method

.method public static type2(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[F[FF)Lcom/itextpdf/text/pdf/PdfFunction;
    .locals 5
    .parameter "writer"
    .parameter "domain"
    .parameter "range"
    .parameter "c0"
    .parameter "c1"
    .parameter "n"

    .prologue
    .line 98
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFunction;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFunction;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 99
    .local v0, func:Lcom/itextpdf/text/pdf/PdfFunction;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 100
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FUNCTIONTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 101
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DOMAIN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 102
    if-eqz p2, :cond_0

    .line 103
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RANGE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 104
    :cond_0
    if-eqz p3, :cond_1

    .line 105
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->C0:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 106
    :cond_1
    if-eqz p4, :cond_2

    .line 107
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->C1:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3, p4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 108
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 109
    return-object v0
.end method

.method public static type3(Lcom/itextpdf/text/pdf/PdfWriter;[F[F[Lcom/itextpdf/text/pdf/PdfFunction;[F[F)Lcom/itextpdf/text/pdf/PdfFunction;
    .locals 7
    .parameter "writer"
    .parameter "domain"
    .parameter "range"
    .parameter "functions"
    .parameter "bounds"
    .parameter "encode"

    .prologue
    .line 113
    new-instance v1, Lcom/itextpdf/text/pdf/PdfFunction;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/PdfFunction;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 114
    .local v1, func:Lcom/itextpdf/text/pdf/PdfFunction;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 115
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FUNCTIONTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DOMAIN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->RANGE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 119
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 120
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 121
    aget-object v3, p3, v2

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfFunction;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FUNCTIONS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 123
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->BOUNDS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, p4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 124
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ENCODE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, p5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 125
    return-object v1
.end method

.method public static type4(Lcom/itextpdf/text/pdf/PdfWriter;[F[FLjava/lang/String;)Lcom/itextpdf/text/pdf/PdfFunction;
    .locals 7
    .parameter "writer"
    .parameter "domain"
    .parameter "range"
    .parameter "postscript"

    .prologue
    .line 129
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [B

    .line 130
    .local v0, b:[B
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 131
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfFunction;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/PdfFunction;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 133
    .local v1, func:Lcom/itextpdf/text/pdf/PdfFunction;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    iput-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 134
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    check-cast v3, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 135
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FUNCTIONTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 136
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DOMAIN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 137
    iget-object v3, v1, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->RANGE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 138
    return-object v1
.end method


# virtual methods
.method getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfFunction;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfFunction;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfFunction;->dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfFunction;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfFunction;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
