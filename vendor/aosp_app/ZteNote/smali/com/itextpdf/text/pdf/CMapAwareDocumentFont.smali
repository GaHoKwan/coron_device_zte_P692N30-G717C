.class public Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;
.super Lcom/itextpdf/text/pdf/DocumentFont;
.source "CMapAwareDocumentFont.java"


# instance fields
.field private byteCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

.field private cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

.field private cidbyte2uni:[C

.field private fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private spaceWidth:I

.field private toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

.field private uni2cid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 1
    .parameter "refFont"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/DocumentFont;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 98
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 99
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->initFont()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "font"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/DocumentFont;-><init>(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 88
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 89
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->initFont()V

    .line 90
    return-void
.end method

.method private computeAverageWidth()I
    .locals 4

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, count:I
    const/4 v2, 0x0

    .line 198
    .local v2, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/itextpdf/text/pdf/DocumentFont;->widths:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    if-eqz v0, :cond_2

    div-int v3, v2, v0

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private decodeSingleCID([BII)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v3, 0x1

    .line 227
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    if-eqz v1, :cond_3

    .line 228
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 229
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "invalid.index.1"

    add-int v3, p2, p3

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->lookup([BII)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 241
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 233
    .restart local v0       #s:Ljava/lang/String;
    :cond_1
    if-ne p3, v3, :cond_2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    if-nez v1, :cond_3

    .line 234
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    if-ne p3, v3, :cond_5

    .line 238
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    if-nez v1, :cond_4

    .line 239
    const-string v0, ""

    goto :goto_0

    .line 241
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 244
    :cond_5
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Multi-byte glyphs not implemented yet"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initFont()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->processToUnicode()V

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->processUni2Byte()V

    .line 108
    const/16 v1, 0x20

    invoke-super {p0, v1}, Lcom/itextpdf/text/pdf/DocumentFont;->getWidth(I)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    .line 109
    iget v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->computeAverageWidth()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cjkEncoding:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cjkEncoding:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->getCachedCMapByteCid(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->byteCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

    .line 114
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->uniMap:Ljava/lang/String;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->getCachedCMapCidUni(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private processToUnicode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 126
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->fontDic:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->TOUNICODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 127
    .local v2, toUni:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v4, v2, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v4, :cond_0

    .line 129
    :try_start_0
    check-cast v2, Lcom/itextpdf/text/pdf/PRStream;

    .end local v2           #toUni:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v3

    .line 130
    .local v3, touni:[B
    new-instance v1, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;-><init>([B)V

    .line 131
    .local v1, lb:Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;
    new-instance v4, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    .line 132
    const-string v4, ""

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    invoke-static {v4, v5, v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V

    .line 133
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->createReverseMapping()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->uni2cid:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #lb:Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocationFromByte;
    .end local v3           #touni:[B
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    iput-object v6, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    .line 136
    iput-object v6, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->uni2cid:Ljava/util/Map;

    goto :goto_0
.end method

.method private processUni2Byte()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x100

    .line 150
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->getUni2Byte()Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v7

    .line 151
    .local v7, uni2byte:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v2

    .line 152
    .local v2, e:[I
    array-length v8, v2

    if-nez v8, :cond_1

    .line 185
    :cond_0
    return-void

    .line 155
    :cond_1
    new-array v8, v11, [C

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    .line 156
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    if-nez v8, :cond_3

    .line 157
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_5

    .line 158
    aget v8, v2, v4

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v6

    .line 163
    .local v6, n:I
    if-ge v6, v11, :cond_2

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget-char v8, v8, v6

    if-nez v8, :cond_2

    .line 164
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget v9, v2, v4

    int-to-char v9, v9

    aput-char v9, v8, v6

    .line 157
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v4           #k:I
    .end local v6           #n:I
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;->createDirectMapping()Ljava/util/Map;

    move-result-object v1

    .line 169
    .local v1, dm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 170
    .local v5, kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v11, :cond_4

    .line 171
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-char v8, v8

    aput-char v8, v9, v10

    goto :goto_1

    .line 175
    .end local v1           #dm:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #kv:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->getDiffmap()Lcom/itextpdf/text/pdf/IntHashtable;

    move-result-object v0

    .line 176
    .local v0, diffmap:Lcom/itextpdf/text/pdf/IntHashtable;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/IntHashtable;->toOrderedKeys()[I

    move-result-object v2

    .line 179
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_2
    array-length v8, v2

    if-ge v4, v8, :cond_0

    .line 180
    aget v8, v2, v4

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v6

    .line 181
    .restart local v6       #n:I
    if-ge v6, v11, :cond_6

    .line 182
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidbyte2uni:[C

    aget v9, v2, v4

    int-to-char v9, v9

    aput-char v9, v8, v6

    .line 179
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public decode([BII)Ljava/lang/String;
    .locals 9
    .parameter "cidbytes"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v5, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->toUnicodeCmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapToUnicode;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->byteCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

    if-eqz v7, :cond_1

    .line 258
    new-instance v6, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;

    invoke-direct {v6, p1, p2, p3}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;-><init>([BII)V

    .line 259
    .local v6, seq:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->byteCid:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

    invoke-virtual {v7, v6}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;->decodeSequence(Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, cid:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 261
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->cidUni:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;->lookup(I)I

    move-result v0

    .line 262
    .local v0, c:I
    if-lez v0, :cond_0

    .line 263
    invoke-static {v0}, Lcom/itextpdf/text/Utilities;->convertFromUtf32(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v0           #c:I
    .end local v1           #cid:Ljava/lang/String;
    .end local v3           #k:I
    .end local v6           #seq:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapSequence;
    :cond_1
    move v2, p2

    .local v2, i:I
    :goto_1
    add-int v7, p2, p3

    if-ge v2, v7, :cond_4

    .line 268
    const/4 v7, 0x1

    invoke-direct {p0, p1, v2, v7}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decodeSingleCID([BII)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, rslt:Ljava/lang/String;
    if-nez v4, :cond_2

    add-int v7, p2, p3

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_2

    .line 270
    const/4 v7, 0x2

    invoke-direct {p0, p1, v2, v7}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decodeSingleCID([BII)Ljava/lang/String;

    move-result-object v4

    .line 271
    add-int/lit8 v2, v2, 0x1

    .line 273
    :cond_2
    if-eqz v4, :cond_3

    .line 274
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    .end local v2           #i:I
    .end local v4           #rslt:Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public encode([BII)Ljava/lang/String;
    .locals 1
    .parameter "bytes"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 289
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->decode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "char1"

    .prologue
    .line 214
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 215
    iget v0, p0, Lcom/itextpdf/text/pdf/CMapAwareDocumentFont;->spaceWidth:I

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/DocumentFont;->getWidth(I)I

    move-result v0

    goto :goto_0
.end method
