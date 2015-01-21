.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;
.super Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;
.source "CMapToUnicode.java"


# instance fields
.field private doubleByteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private singleByteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->singleByteMappings:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->doubleByteMappings:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private convertToInt(Ljava/lang/String;)I
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v3, "UTF-16BE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    .local v0, b:[B
    const/4 v2, 0x0

    .line 132
    .local v2, value:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 133
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 134
    shl-int/lit8 v2, v2, 0x8

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 137
    return v2
.end method

.method private createStringFromBytes([B)Ljava/lang/String;
    .locals 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, retval:Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/String;

    .end local v0           #retval:Ljava/lang/String;
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 168
    .restart local v0       #retval:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/String;

    .end local v0           #retval:Ljava/lang/String;
    const-string v1, "UTF-16BE"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v0       #retval:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method addChar(Lcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 7
    .parameter "mark"
    .parameter "code"

    .prologue
    const/4 v5, 0x1

    .line 143
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    .line 144
    .local v3, src:[B
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->createStringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, dest:Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v5, :cond_0

    .line 146
    iget-object v4, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->singleByteMappings:Ljava/util/Map;

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    return-void

    .line 147
    :cond_0
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 148
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    and-int/lit16 v2, v4, 0xff

    .line 149
    .local v2, intSrc:I
    shl-int/lit8 v2, v2, 0x8

    .line 150
    const/4 v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 151
    iget-object v4, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->doubleByteMappings:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0           #dest:Ljava/lang/String;
    .end local v2           #intSrc:I
    .end local v3           #src:[B
    :catch_0
    move-exception v1

    .line 157
    .local v1, ex:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 153
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #dest:Ljava/lang/String;
    .restart local v3       #src:[B
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "mapping.code.should.be.1.or.two.bytes.and.not.1"

    array-length v6, v3

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public createDirectMapping()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->singleByteMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->convertToInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->doubleByteMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->convertToInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 126
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method public createReverseMapping()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->singleByteMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->convertToInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->doubleByteMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->convertToInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 115
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method public hasOneByteMappings()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->singleByteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTwoByteMappings()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->doubleByteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookup([BII)Ljava/lang/String;
    .locals 4
    .parameter "code"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, key:Ljava/lang/Integer;
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    .line 93
    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 94
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->singleByteMappings:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 104
    .restart local v2       #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 95
    :cond_1
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 96
    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    .line 97
    .local v0, intKey:I
    shl-int/lit8 v0, v0, 0x8

    .line 98
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v0, v3

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->doubleByteMappings:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0
.end method
