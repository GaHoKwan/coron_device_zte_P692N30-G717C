.class Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;
.super Lcom/itextpdf/text/pdf/TrueTypeFont;
.source "TrueTypeFontUnicode.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/text/pdf/TrueTypeFont;",
        "Ljava/util/Comparator",
        "<[I>;"
    }
.end annotation


# static fields
.field private static final rotbits:[B


# instance fields
.field vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->rotbits:[B

    return-void

    :array_0
    .array-data 0x1
        0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z[BZ)V
    .locals 9
    .parameter "ttFile"
    .parameter "enc"
    .parameter "emb"
    .parameter "ttfAfm"
    .parameter "forceRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;-><init>()V

    .line 67
    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->vertical:Z

    .line 81
    invoke-static {p1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, nameBase:Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getTTCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, ttcName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->style:Ljava/lang/String;

    .line 86
    :cond_0
    iput-object p2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    .line 87
    iput-boolean p3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->embedded:Z

    .line 88
    iput-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    .line 89
    const-string v3, ""

    iput-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->ttcIndex:Ljava/lang/String;

    .line 90
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->ttcIndex:Ljava/lang/String;

    .line 92
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontType:I

    .line 93
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ttf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".otf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ttc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    const-string v3, "Identity-H"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Identity-V"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_3
    if-eqz p3, :cond_9

    .line 94
    invoke-virtual {p0, p4, p5}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->process([BZ)V

    .line 95
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->os_2:Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;

    iget-short v3, v3, Lcom/itextpdf/text/pdf/TrueTypeFont$WindowsMetrics;->fsType:S

    if-ne v3, v5, :cond_4

    .line 96
    new-instance v3, Lcom/itextpdf/text/DocumentException;

    const-string v4, "1.cannot.be.embedded.due.to.licensing.restrictions"

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->style:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cmap31:Ljava/util/HashMap;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cmap10:Ljava/util/HashMap;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v3, :cond_7

    .line 99
    :cond_6
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->directTextToByte:Z

    .line 101
    :cond_7
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v3, :cond_8

    .line 102
    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    .line 103
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    .line 104
    .local v1, tempEncoding:Ljava/lang/String;
    const-string v3, ""

    iput-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->createEncoding()V

    .line 106
    iput-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    .line 107
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    .line 112
    .end local v1           #tempEncoding:Ljava/lang/String;
    :cond_8
    const-string v3, "V"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->vertical:Z

    .line 113
    return-void

    .line 111
    :cond_9
    new-instance v3, Lcom/itextpdf/text/DocumentException;

    const-string v4, "1.2.is.not.a.ttf.font.file"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->style:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getCIDFontType2(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;[Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 12
    .parameter "fontDescriptor"
    .parameter "subsetPrefix"
    .parameter "metrics"

    .prologue
    .line 240
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 242
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cff:Z

    if-eqz v8, :cond_1

    .line 243
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CIDFONTTYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 244
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 250
    :goto_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 251
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cff:Z

    if-nez v8, :cond_0

    .line 252
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CIDTOGIDMAP:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->IDENTITY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 253
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 254
    .local v1, cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->REGISTRY:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfString;

    const-string v10, "Adobe"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 255
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ORDERING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfString;

    const-string v10, "Identity"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 256
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUPPLEMENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 257
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CIDSYSTEMINFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 258
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->vertical:Z

    if-nez v8, :cond_6

    .line 259
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DW:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    const/16 v10, 0x3e8

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, "["

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v5, -0xa

    .line 262
    .local v5, lastNumber:I
    const/4 v3, 0x1

    .line 263
    .local v3, firstTime:Z
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v8, p3

    if-ge v4, v8, :cond_5

    .line 264
    aget-object v8, p3, v4

    check-cast v8, [I

    move-object v7, v8

    check-cast v7, [I

    .line 265
    .local v7, metric:[I
    const/4 v8, 0x1

    aget v8, v7, v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_2

    .line 263
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 247
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #firstTime:Z
    .end local v4           #k:I
    .end local v5           #lastNumber:I
    .end local v7           #metric:[I
    :cond_1
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CIDFONTTYPE2:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 248
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 267
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cdic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v3       #firstTime:Z
    .restart local v4       #k:I
    .restart local v5       #lastNumber:I
    .restart local v7       #metric:[I
    :cond_2
    const/4 v8, 0x0

    aget v6, v7, v8

    .line 268
    .local v6, m:I
    add-int/lit8 v8, v5, 0x1

    if-ne v6, v8, :cond_3

    .line 269
    const/16 v8, 0x20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    :goto_3
    move v5, v6

    goto :goto_2

    .line 272
    :cond_3
    if-nez v3, :cond_4

    .line 273
    const/16 v8, 0x5d

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    :cond_4
    const/4 v3, 0x0

    .line 276
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x5b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 280
    .end local v6           #m:I
    .end local v7           #metric:[I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 281
    const-string v8, "]]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 285
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #firstTime:Z
    .end local v4           #k:I
    .end local v5           #lastNumber:I
    :cond_6
    return-object v2
.end method

.method private getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 5
    .parameter "descendant"
    .parameter "subsetPrefix"
    .parameter "toUnicode"

    .prologue
    .line 295
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 297
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE0:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 299
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cff:Z

    if-eqz v1, :cond_1

    .line 300
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 305
    :goto_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 306
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DESCENDANTFONTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 307
    if-eqz p3, :cond_0

    .line 308
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TOUNICODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 309
    :cond_0
    return-object v0

    .line 303
    :cond_1
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method private getToUnicode([Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 10
    .parameter "metrics"

    .prologue
    const/4 v8, 0x0

    .line 174
    array-length v7, p1

    if-nez v7, :cond_0

    move-object v6, v8

    .line 212
    :goto_0
    return-object v6

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v7, "/CIDInit /ProcSet findresource begin\n12 dict begin\nbegincmap\n/CIDSystemInfo\n<< /Registry (TTX+0)\n/Ordering (T42UV)\n/Supplement 0\n>> def\n/CMapName /TTX+0 def\n/CMapType 2 def\n1 begincodespacerange\n<0000><FFFF>\nendcodespacerange\n"

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 191
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    array-length v7, p1

    if-ge v2, v7, :cond_3

    .line 192
    if-nez v5, :cond_2

    .line 193
    if-eqz v2, :cond_1

    .line 194
    const-string v7, "endbfrange\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_1
    const/16 v7, 0x64

    array-length v9, p1

    sub-int/2addr v9, v2

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, " beginbfrange\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 200
    aget-object v7, p1, v2

    check-cast v7, [I

    move-object v3, v7

    check-cast v3, [I

    .line 201
    .local v3, metric:[I
    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->toHex(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, fromTo:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/4 v9, 0x2

    aget v9, v3, v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->toHex(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    .end local v1           #fromTo:Ljava/lang/String;
    .end local v3           #metric:[I
    :cond_3
    const-string v7, "endbfrange\nendcmap\nCMapName currentdict /CMap defineresource pop\nend end\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, s:Ljava/lang/String;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-static {v4, v8}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 211
    .local v6, stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->compressionLevel:I

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    goto :goto_0
.end method

.method static toHex(I)Ljava/lang/String;
    .locals 4
    .parameter "n"

    .prologue
    const/high16 v2, 0x1

    .line 225
    if-ge p0, v2, :cond_0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->toHex4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    :goto_0
    return-object v2

    .line 227
    :cond_0
    sub-int/2addr p0, v2

    .line 228
    div-int/lit16 v2, p0, 0x400

    const v3, 0xd800

    add-int v0, v2, v3

    .line 229
    .local v0, high:I
    rem-int/lit16 v2, p0, 0x400

    const v3, 0xdc00

    add-int v1, v2, v3

    .line 230
    .local v1, low:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->toHex4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->toHex4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static toHex4(I)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public charExists(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getMetricsTT(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p1, [I

    .end local p1
    check-cast p2, [I

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->compare([I[I)I

    move-result v0

    return v0
.end method

.method public compare([I[I)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x0

    .line 318
    aget v0, p1, v2

    .line 319
    .local v0, m1:I
    aget v1, p2, v2

    .line 320
    .local v1, m2:I
    if-ge v0, v1, :cond_1

    .line 321
    const/4 v2, -0x1

    .line 324
    :cond_0
    :goto_0
    return v2

    .line 322
    :cond_1
    if-eq v0, v1, :cond_0

    .line 324
    const/4 v2, 0x1

    goto :goto_0
.end method

.method convertToBytes(I)[B
    .locals 1
    .parameter "char1"

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method convertToBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "text"

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharBBox(I)[I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->bboxes:[[I

    if-nez v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v1

    .line 494
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getMetricsTT(I)[I

    move-result-object v0

    .line 495
    .local v0, m:[I
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->bboxes:[[I

    const/4 v2, 0x0

    aget v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cff:Z

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->readCffFont()[B

    move-result-object v1

    const-string v2, "CIDFontType0C"

    iget v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->compressionLevel:I

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([BLjava/lang/String;I)V

    .line 421
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/itextpdf/text/pdf/TrueTypeFont;->getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getMetricsTT(I)[I
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cmapExt:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 445
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cmapExt:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 460
    :cond_0
    :goto_0
    return-object v1

    .line 446
    :cond_1
    const/4 v0, 0x0

    .line 447
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v2, :cond_3

    .line 448
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cmap10:Ljava/util/HashMap;

    .line 451
    :goto_1
    if-eqz v0, :cond_0

    .line 453
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v2, :cond_4

    .line 454
    and-int/lit16 v2, p1, -0x100

    if-eqz v2, :cond_2

    and-int/lit16 v2, p1, -0x100

    const v3, 0xf000

    if-ne v2, v3, :cond_0

    .line 455
    :cond_2
    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    .line 450
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cmap31:Ljava/util/HashMap;

    goto :goto_1

    .line 460
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 2
    .parameter "char1"

    .prologue
    const v1, 0xff00

    .line 122
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->vertical:Z

    if-eqz v0, :cond_0

    .line 123
    const/16 v0, 0x3e8

    .line 131
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v0, :cond_3

    .line 125
    and-int v0, p1, v1

    if-eqz v0, :cond_1

    and-int v0, p1, v1

    const v1, 0xf000

    if-ne v0, v1, :cond_2

    .line 126
    :cond_1
    and-int/lit16 v0, p1, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getRawWidth(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getRawWidth(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getWidth(Ljava/lang/String;)I
    .locals 8
    .parameter "text"

    .prologue
    const v7, 0xff00

    .line 142
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->vertical:Z

    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit16 v4, v5, 0x3e8

    .line 165
    :cond_0
    return v4

    .line 144
    :cond_1
    const/4 v4, 0x0

    .line 145
    .local v4, total:I
    iget-boolean v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fontSpecific:Z

    if-eqz v5, :cond_4

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 147
    .local v1, cc:[C
    array-length v3, v1

    .line 148
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 149
    aget-char v0, v1, v2

    .line 150
    .local v0, c:C
    and-int v5, v0, v7

    if-eqz v5, :cond_2

    and-int v5, v0, v7

    const v6, 0xf000

    if-ne v5, v6, :cond_3

    .line 151
    :cond_2
    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getRawWidth(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 148
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v0           #c:C
    .end local v1           #cc:[C
    .end local v2           #k:I
    .end local v3           #len:I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 156
    .restart local v3       #len:I
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 157
    invoke-static {p1, v2}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 158
    invoke-static {p1, v2}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getRawWidth(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 156
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->encoding:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getRawWidth(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2
.end method

.method public setCharAdvance(II)Z
    .locals 2
    .parameter "c"
    .parameter "advance"

    .prologue
    const/4 v1, 0x1

    .line 483
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getMetricsTT(I)[I

    move-result-object v0

    .line 484
    .local v0, m:[I
    if-nez v0, :cond_0

    .line 485
    const/4 v1, 0x0

    .line 487
    :goto_0
    return v1

    .line 486
    :cond_0
    aput p2, v0, v1

    goto :goto_0
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 27
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v4, 0x0

    aget-object v18, p3, v4

    check-cast v18, Ljava/util/HashMap;

    .line 340
    .local v18, longTag:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->subset:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->addRangeUni(Ljava/util/HashMap;ZZ)V

    .line 341
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [[I

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[I

    .line 342
    .local v19, metrics:[[I
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 343
    const/4 v15, 0x0

    .line 344
    .local v15, ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/16 v21, 0x0

    .line 345
    .local v21, pobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/16 v20, 0x0

    .line 346
    .local v20, obj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    const/4 v13, 0x0

    .line 347
    .local v13, cidset:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPDFXConformance()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPDFXConformance()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 349
    :cond_0
    move-object/from16 v0, v19

    array-length v4, v0

    if-nez v4, :cond_6

    .line 350
    new-instance v22, Lcom/itextpdf/text/pdf/PdfStream;

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, v4, v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 362
    .local v22, stream:Lcom/itextpdf/text/pdf/PdfStream;
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    .line 365
    .end local v22           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->cff:Z

    if-eqz v4, :cond_8

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->readCffFont()[B

    move-result-object v10

    .line 367
    .local v10, b:[B
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->subset:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->subsetRanges:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 368
    :cond_2
    new-instance v12, Lcom/itextpdf/text/pdf/CFFFontSubset;

    new-instance v4, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v4, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    move-object/from16 v0, v18

    invoke-direct {v12, v4, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/util/HashMap;)V

    .line 369
    .local v12, cff:Lcom/itextpdf/text/pdf/CFFFontSubset;
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getNames()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/CFFFontSubset;->Process(Ljava/lang/String;)[B

    move-result-object v10

    .line 371
    .end local v12           #cff:Lcom/itextpdf/text/pdf/CFFFontSubset;
    :cond_3
    new-instance v21, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    .end local v21           #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    const-string v4, "CIDFontType0C"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->compressionLevel:I

    move-object/from16 v0, v21

    invoke-direct {v0, v10, v4, v5}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([BLjava/lang/String;I)V

    .line 372
    .restart local v21       #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v20

    .line 373
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v15

    .line 388
    :goto_1
    const-string v23, ""

    .line 389
    .local v23, subsetPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->subset:Z

    if-eqz v4, :cond_4

    .line 390
    invoke-static {}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->createSubsetPrefix()Ljava/lang/String;

    move-result-object v23

    .line 391
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v13}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getFontDescriptor(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v14

    .line 392
    .local v14, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v20

    .line 393
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v15

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getCIDFontType2(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;[Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 396
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v20

    .line 397
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v15

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getToUnicode([Ljava/lang/Object;)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v21

    .line 400
    const/16 v24, 0x0

    .line 402
    .local v24, toUnicodeRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v21, :cond_5

    .line 403
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v20

    .line 404
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    .line 407
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v15, v1, v2}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 408
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 409
    return-void

    .line 353
    .end local v10           #b:[B
    .end local v14           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v23           #subsetPrefix:Ljava/lang/String;
    .end local v24           #toUnicodeRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_6
    move-object/from16 v0, v19

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v19, v4

    const/4 v5, 0x0

    aget v25, v4, v5

    .line 354
    .local v25, top:I
    div-int/lit8 v4, v25, 0x8

    add-int/lit8 v4, v4, 0x1

    new-array v11, v4, [B

    .line 355
    .local v11, bt:[B
    const/16 v16, 0x0

    .local v16, k:I
    :goto_2
    move-object/from16 v0, v19

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_7

    .line 356
    aget-object v4, v19, v16

    const/4 v5, 0x0

    aget v26, v4, v5

    .line 357
    .local v26, v:I
    div-int/lit8 v4, v26, 0x8

    aget-byte v5, v11, v4

    sget-object v6, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->rotbits:[B

    rem-int/lit8 v7, v26, 0x8

    aget-byte v6, v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v4

    .line 355
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 359
    .end local v26           #v:I
    :cond_7
    new-instance v22, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 360
    .restart local v22       #stream:Lcom/itextpdf/text/pdf/PdfStream;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->compressionLevel:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    goto/16 :goto_0

    .line 376
    .end local v11           #bt:[B
    .end local v16           #k:I
    .end local v22           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    .end local v25           #top:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->subset:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->directoryOffset:I

    if-eqz v4, :cond_a

    .line 377
    :cond_9
    new-instance v3, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->fileName:Ljava/lang/String;

    new-instance v5, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->directoryOffset:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/util/HashSet;IZZ)V

    .line 378
    .local v3, sb:Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->process()[B

    move-result-object v10

    .line 383
    .end local v3           #sb:Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;
    .restart local v10       #b:[B
    :goto_3
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/4 v4, 0x0

    array-length v5, v10

    aput v5, v17, v4

    .line 384
    .local v17, lengths:[I
    new-instance v21, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    .end local v21           #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->compressionLevel:I

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v4}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([B[II)V

    .line 385
    .restart local v21       #pobj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v20

    .line 386
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v15

    goto/16 :goto_1

    .line 381
    .end local v10           #b:[B
    .end local v17           #lengths:[I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TrueTypeFontUnicode;->getFullFont()[B

    move-result-object v10

    .restart local v10       #b:[B
    goto :goto_3
.end method
