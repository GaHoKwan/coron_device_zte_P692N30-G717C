.class public Lcom/itextpdf/text/pdf/PdfFileSpecification;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfFileSpecification.java"


# instance fields
.field protected ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FILESPEC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 65
    return-void
.end method

.method public static fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[B)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 1
    .parameter "writer"
    .parameter "filePath"
    .parameter "fileDisplay"
    .parameter "fileStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/16 v0, 0x9

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BI)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    return-object v0
.end method

.method public static fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BI)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 7
    .parameter "writer"
    .parameter "filePath"
    .parameter "fileDisplay"
    .parameter "fileStore"
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;I)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    return-object v0
.end method

.method public static fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;I)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 14
    .parameter "writer"
    .parameter "filePath"
    .parameter "fileDisplay"
    .parameter "fileStore"
    .parameter "mimeType"
    .parameter "fileParameter"
    .parameter "compressionLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v3, Lcom/itextpdf/text/pdf/PdfFileSpecification;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;-><init>()V

    .line 168
    .local v3, fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    iput-object p0, v3, Lcom/itextpdf/text/pdf/PdfFileSpecification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 169
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 170
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v10}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->setUnicodeFileName(Ljava/lang/String;Z)V

    .line 172
    const/4 v4, 0x0

    .line 174
    .local v4, in:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 176
    .local v8, refFileLength:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-nez p3, :cond_9

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    .line 178
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 180
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    move-object v4, v5

    .line 192
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    new-instance v9, Lcom/itextpdf/text/pdf/PdfEFStream;

    invoke-direct {v9, v4, p0}, Lcom/itextpdf/text/pdf/PdfEFStream;-><init>(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 197
    .end local v2           #file:Ljava/io/File;
    .local v9, stream:Lcom/itextpdf/text/pdf/PdfEFStream;
    :goto_1
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 198
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfEFStream;->flateCompress(I)V

    .line 199
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 200
    .local v6, param:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz p5, :cond_1

    .line 201
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 204
    :cond_1
    if-eqz p3, :cond_a

    .line 205
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfEFStream;->getRawLength()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 206
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10, v6}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 211
    :goto_2
    if-eqz p4, :cond_2

    .line 212
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p4

    invoke-direct {v11, v0}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 214
    :cond_2
    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 215
    .local v7, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-nez p3, :cond_3

    .line 216
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfEFStream;->writeLength()V

    .line 217
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->SIZE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfEFStream;->getRawLength()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 218
    invoke-virtual {p0, v6, v8}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_3
    if-eqz v4, :cond_4

    .line 223
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :cond_4
    :goto_3
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 226
    .local v1, f:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v10, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 227
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->UF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v10, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 228
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->EF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v10, v1}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 229
    return-object v3

    .line 183
    .end local v1           #f:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #param:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v9           #stream:Lcom/itextpdf/text/pdf/PdfEFStream;
    .restart local v2       #file:Ljava/io/File;
    :cond_5
    :try_start_2
    const-string v10, "file:/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "http://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "https://"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "jar:"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 184
    :cond_6
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-static {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 188
    if-nez v4, :cond_0

    .line 189
    new-instance v10, Ljava/io/IOException;

    const-string v11, "1.not.found.as.file.or.resource"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .end local v2           #file:Ljava/io/File;
    :catchall_0
    move-exception v10

    if-eqz v4, :cond_8

    .line 223
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_4
    throw v10

    .line 195
    :cond_9
    :try_start_4
    new-instance v9, Lcom/itextpdf/text/pdf/PdfEFStream;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lcom/itextpdf/text/pdf/PdfEFStream;-><init>([B)V

    .restart local v9       #stream:Lcom/itextpdf/text/pdf/PdfEFStream;
    goto/16 :goto_1

    .line 209
    .restart local v6       #param:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PARAMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10, v8}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 223
    .restart local v7       #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :catch_0
    move-exception v10

    goto :goto_3

    .end local v6           #param:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v9           #stream:Lcom/itextpdf/text/pdf/PdfEFStream;
    :catch_1
    move-exception v11

    goto :goto_4
.end method

.method public static fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 7
    .parameter "writer"
    .parameter "filePath"
    .parameter "fileDisplay"
    .parameter "fileStore"
    .parameter "compress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 129
    if-eqz p4, :cond_0

    const/16 v6, 0x9

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;I)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 7
    .parameter "writer"
    .parameter "filePath"
    .parameter "fileDisplay"
    .parameter "fileStore"
    .parameter "compress"
    .parameter "mimeType"
    .parameter "fileParameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p4, :cond_0

    const/16 v6, 0x9

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;I)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static fileExtern(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 3
    .parameter "writer"
    .parameter "filePath"

    .prologue
    .line 239
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFileSpecification;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfFileSpecification;-><init>()V

    .line 240
    .local v0, fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    iput-object p0, v0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 241
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->setUnicodeFileName(Ljava/lang/String;Z)V

    .line 243
    return-object v0
.end method

.method public static url(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .locals 3
    .parameter "writer"
    .parameter "url"

    .prologue
    .line 74
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFileSpecification;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfFileSpecification;-><init>()V

    .line 75
    .local v0, fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    iput-object p0, v0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 76
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->URL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 77
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public addCollectionItem(Lcom/itextpdf/text/pdf/collection/PdfCollectionItem;)V
    .locals 1
    .parameter "ci"

    .prologue
    .line 303
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 304
    return-void
.end method

.method public addDescription(Ljava/lang/String;Z)V
    .locals 3
    .parameter "description"
    .parameter "unicode"

    .prologue
    .line 296
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DESC:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz p2, :cond_0

    const-string v0, "UnicodeBig"

    :goto_0
    invoke-direct {v2, p1, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 297
    return-void

    .line 296
    :cond_0
    const-string v0, "PDF"

    goto :goto_0
.end method

.method public getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 256
    :goto_0
    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 256
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFileSpecification;->ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    goto :goto_0
.end method

.method public setMultiByteFileName([B)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 266
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 267
    return-void
.end method

.method public setUnicodeFileName(Ljava/lang/String;Z)V
    .locals 3
    .parameter "filename"
    .parameter "unicode"

    .prologue
    .line 277
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->UF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz p2, :cond_0

    const-string v0, "UnicodeBig"

    :goto_0
    invoke-direct {v2, p1, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 278
    return-void

    .line 277
    :cond_0
    const-string v0, "PDF"

    goto :goto_0
.end method

.method public setVolatile(Z)V
    .locals 2
    .parameter "volatile_file"

    .prologue
    .line 287
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 288
    return-void
.end method
