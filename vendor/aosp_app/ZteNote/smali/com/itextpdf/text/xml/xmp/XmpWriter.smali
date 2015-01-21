.class public Lcom/itextpdf/text/xml/xmp/XmpWriter;
.super Ljava/lang/Object;
.source "XmpWriter.java"


# static fields
.field public static final EXTRASPACE:Ljava/lang/String; = "                                                                                                   \n"

.field public static final UTF16:Ljava/lang/String; = "UTF-16"

.field public static final UTF16BE:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF16LE:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static final XPACKET_PI_BEGIN:Ljava/lang/String; = "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n"

.field public static final XPACKET_PI_END_R:Ljava/lang/String; = "<?xpacket end=\"r\"?>"

.field public static final XPACKET_PI_END_W:Ljava/lang/String; = "<?xpacket end=\"w\"?>"


# instance fields
.field protected about:Ljava/lang/String;

.field protected end:C

.field protected extraSpace:I

.field protected writer:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, "UTF-8"

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfDictionary;I)V
    .locals 11
    .parameter "os"
    .parameter "info"
    .parameter "PdfXConformance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 196
    invoke-direct {p0, p1}, Lcom/itextpdf/text/xml/xmp/XmpWriter;-><init>(Ljava/io/OutputStream;)V

    .line 197
    if-eqz p2, :cond_d

    .line 198
    new-instance v2, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;

    invoke-direct {v2}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;-><init>()V

    .line 199
    .local v2, dc:Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;
    new-instance v6, Lcom/itextpdf/text/xml/xmp/PdfSchema;

    invoke-direct {v6}, Lcom/itextpdf/text/xml/xmp/PdfSchema;-><init>()V

    .line 200
    .local v6, p:Lcom/itextpdf/text/xml/xmp/PdfSchema;
    new-instance v1, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;

    invoke-direct {v1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;-><init>()V

    .line 204
    .local v1, basic:Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfName;

    .line 205
    .local v7, pdfName:Lcom/itextpdf/text/pdf/PdfName;
    move-object v4, v7

    .line 206
    .local v4, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 207
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_0

    move-object v9, v5

    .line 209
    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, value:Ljava/lang/String;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 211
    invoke-virtual {v2, v8}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addTitle(Ljava/lang/String;)V

    .line 213
    :cond_1
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->AUTHOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 214
    invoke-virtual {v2, v8}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addAuthor(Ljava/lang/String;)V

    .line 216
    :cond_2
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 217
    invoke-virtual {v2, v8}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addSubject(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v8}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addDescription(Ljava/lang/String;)V

    .line 220
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->KEYWORDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 221
    invoke-virtual {v6, v8}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->addKeywords(Ljava/lang/String;)V

    .line 223
    :cond_4
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CREATOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 224
    invoke-virtual {v1, v8}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->addCreatorTool(Ljava/lang/String;)V

    .line 226
    :cond_5
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 227
    invoke-virtual {v6, v8}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->addProducer(Ljava/lang/String;)V

    .line 229
    :cond_6
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CREATIONDATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 230
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->addCreateDate(Ljava/lang/String;)V

    .line 232
    :cond_7
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MODDATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 233
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->addModDate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v5           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v7           #pdfName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v8           #value:Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->size()I

    move-result v9

    if-lez v9, :cond_9

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 237
    :cond_9
    invoke-virtual {v6}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->size()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 238
    :cond_a
    invoke-virtual {v1}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->size()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 239
    :cond_b
    if-eq p3, v10, :cond_c

    const/4 v9, 0x4

    if-ne p3, v9, :cond_d

    .line 240
    :cond_c
    new-instance v0, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;

    invoke-direct {v0}, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;-><init>()V

    .line 241
    .local v0, a1:Lcom/itextpdf/text/xml/xmp/PdfA1Schema;
    if-ne p3, v10, :cond_e

    .line 242
    const-string v9, "A"

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;->addConformance(Ljava/lang/String;)V

    .line 245
    :goto_1
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 248
    .end local v0           #a1:Lcom/itextpdf/text/xml/xmp/PdfA1Schema;
    .end local v1           #basic:Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;
    .end local v2           #dc:Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #p:Lcom/itextpdf/text/xml/xmp/PdfSchema;
    :cond_d
    return-void

    .line 244
    .restart local v0       #a1:Lcom/itextpdf/text/xml/xmp/PdfA1Schema;
    .restart local v1       #basic:Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;
    .restart local v2       #dc:Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #p:Lcom/itextpdf/text/xml/xmp/PdfSchema;
    :cond_e
    const-string v9, "B"

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/xml/xmp/PdfA1Schema;->addConformance(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 2
    .parameter "os"
    .parameter "utfEncoding"
    .parameter "extraSpace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v0, 0x77

    iput-char v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->end:C

    .line 115
    iput p3, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->extraSpace:I

    .line 116
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    .line 117
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\">\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->about:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 8
    .parameter "os"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    .local p2, info:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/text/xml/xmp/XmpWriter;-><init>(Ljava/io/OutputStream;)V

    .line 258
    if-eqz p2, :cond_b

    .line 259
    new-instance v1, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;

    invoke-direct {v1}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;-><init>()V

    .line 260
    .local v1, dc:Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;
    new-instance v5, Lcom/itextpdf/text/xml/xmp/PdfSchema;

    invoke-direct {v5}, Lcom/itextpdf/text/xml/xmp/PdfSchema;-><init>()V

    .line 261
    .local v5, p:Lcom/itextpdf/text/xml/xmp/PdfSchema;
    new-instance v0, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;

    invoke-direct {v0}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;-><init>()V

    .line 264
    .local v0, basic:Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 266
    .local v4, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 267
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 269
    const-string v7, "Title"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 270
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addTitle(Ljava/lang/String;)V

    .line 272
    :cond_1
    const-string v7, "Author"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 273
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addAuthor(Ljava/lang/String;)V

    .line 275
    :cond_2
    const-string v7, "Subject"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addSubject(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->addDescription(Ljava/lang/String;)V

    .line 279
    :cond_3
    const-string v7, "Keywords"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 280
    invoke-virtual {v5, v6}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->addKeywords(Ljava/lang/String;)V

    .line 282
    :cond_4
    const-string v7, "Creator"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 283
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->addCreatorTool(Ljava/lang/String;)V

    .line 285
    :cond_5
    const-string v7, "Producer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 286
    invoke-virtual {v5, v6}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->addProducer(Ljava/lang/String;)V

    .line 288
    :cond_6
    const-string v7, "CreationDate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 289
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->addCreateDate(Ljava/lang/String;)V

    .line 291
    :cond_7
    const-string v7, "ModDate"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 292
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->addModDate(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;->size()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 296
    :cond_9
    invoke-virtual {v5}, Lcom/itextpdf/text/xml/xmp/PdfSchema;->size()I

    move-result v7

    if-lez v7, :cond_a

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 297
    :cond_a
    invoke-virtual {v0}, Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;->size()I

    move-result v7

    if-lez v7, :cond_b

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V

    .line 299
    .end local v0           #basic:Lcom/itextpdf/text/xml/xmp/XmpBasicSchema;
    .end local v1           #dc:Lcom/itextpdf/text/xml/xmp/DublinCoreSchema;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #p:Lcom/itextpdf/text/xml/xmp/PdfSchema;
    :cond_b
    return-void
.end method


# virtual methods
.method public addRdfDescription(Lcom/itextpdf/text/xml/xmp/XmpSchema;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "<rdf:Description rdf:about=\""

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->getXmlns()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "</rdf:Description>\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public addRdfDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "xmlns"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "<rdf:Description rdf:about=\""

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v1, "</rdf:Description>\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v2, "</rdf:RDF>"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v2, "</x:xmpmeta>\n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->extraSpace:I

    if-ge v0, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    const-string v2, "                                                                                                   \n"

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    iget-char v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->end:C

    const/16 v3, 0x72

    if-ne v1, v3, :cond_1

    const-string v1, "<?xpacket end=\"r\"?>"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 187
    iget-object v1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 188
    return-void

    .line 185
    :cond_1
    const-string v1, "<?xpacket end=\"w\"?>"

    goto :goto_1
.end method

.method public setAbout(Ljava/lang/String;)V
    .locals 0
    .parameter "about"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->about:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setReadOnly()V
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x72

    iput-char v0, p0, Lcom/itextpdf/text/xml/xmp/XmpWriter;->end:C

    .line 135
    return-void
.end method
