.class public Lcom/itextpdf/text/pdf/PdfEFStream;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PdfEFStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 0
    .parameter "in"
    .parameter "writer"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStream;-><init>(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 67
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "fileStore"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 75
    return-void
.end method


# virtual methods
.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    .locals 21
    .parameter "writer"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->inputStream:Ljava/io/InputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->compressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 82
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    :cond_0
    const/4 v7, 0x0

    .line 84
    .local v7, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v7

    .line 86
    :cond_1
    if-eqz v7, :cond_2

    .line 87
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfEFStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    .line 88
    .local v11, filter:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v11, :cond_2

    .line 89
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 90
    const/4 v7, 0x0

    .line 98
    .end local v11           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 99
    new-instance v11, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 100
    .local v11, filter:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v8, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 101
    .local v8, decodeparms:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 102
    .local v6, crypt:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->STDCF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 103
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 104
    invoke-virtual {v8, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->compressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 106
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 107
    new-instance v18, Lcom/itextpdf/text/pdf/PdfNull;

    invoke-direct/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNull;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 109
    :cond_3
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 112
    .end local v6           #crypt:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #decodeparms:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #filter:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfEFStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    .line 113
    .local v14, nn:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v18, v14

    .line 114
    check-cast v18, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v17

    .line 115
    .local v17, sz:I
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v19, Lcom/itextpdf/text/pdf/PdfNumber;

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->calculateStreamSize(I)I

    move-result v20

    invoke-direct/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 116
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/text/pdf/PdfEFStream;->superToPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 117
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/itextpdf/text/pdf/PdfEFStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 122
    .end local v17           #sz:I
    :goto_1
    sget-object v18, Lcom/itextpdf/text/pdf/PdfEFStream;->STARTSTREAM:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->inputStream:Ljava/io/InputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 124
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfEFStream;->rawLength:I

    .line 125
    const/4 v9, 0x0

    .line 126
    .local v9, def:Ljava/util/zip/DeflaterOutputStream;
    new-instance v15, Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Lcom/itextpdf/text/pdf/OutputStreamCounter;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .local v15, osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    const/16 v16, 0x0

    .line 128
    .local v16, ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    move-object v12, v15

    .line 129
    .local v12, fout:Ljava/io/OutputStream;
    if-eqz v7, :cond_5

    .line 130
    invoke-virtual {v7, v12}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/OutputStreamEncryption;

    move-result-object v16

    move-object/from16 v12, v16

    .line 131
    :cond_5
    const/4 v10, 0x0

    .line 132
    .local v10, deflater:Ljava/util/zip/Deflater;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->compressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 133
    new-instance v10, Ljava/util/zip/Deflater;

    .end local v10           #deflater:Ljava/util/zip/Deflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->compressionLevel:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 134
    .restart local v10       #deflater:Ljava/util/zip/Deflater;
    new-instance v9, Ljava/util/zip/DeflaterOutputStream;

    .end local v9           #def:Ljava/util/zip/DeflaterOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    invoke-direct {v9, v12, v10, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V

    .restart local v9       #def:Ljava/util/zip/DeflaterOutputStream;
    move-object v12, v9

    .line 137
    :cond_6
    const/16 v18, 0x1060

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 139
    .local v5, buf:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->inputStream:Ljava/io/InputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 140
    .local v13, n:I
    if-gtz v13, :cond_b

    .line 145
    if-eqz v9, :cond_7

    .line 146
    invoke-virtual {v9}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 147
    invoke-virtual {v10}, Ljava/util/zip/Deflater;->end()V

    .line 149
    :cond_7
    if-eqz v16, :cond_8

    .line 150
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/OutputStreamEncryption;->finish()V

    .line 151
    :cond_8
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->getCounter()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfEFStream;->inputStreamLength:I

    .line 171
    .end local v5           #buf:[B
    .end local v9           #def:Ljava/util/zip/DeflaterOutputStream;
    .end local v10           #deflater:Ljava/util/zip/Deflater;
    .end local v12           #fout:Ljava/io/OutputStream;
    .end local v13           #n:I
    .end local v15           #osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .end local v16           #ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :goto_3
    sget-object v18, Lcom/itextpdf/text/pdf/PdfEFStream;->ENDSTREAM:[B

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 172
    return-void

    .line 91
    .end local v14           #nn:Lcom/itextpdf/text/pdf/PdfObject;
    .local v11, filter:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object v3, v11

    .line 92
    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 93
    .local v3, a:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 94
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 120
    .end local v3           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #filter:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v14       #nn:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/text/pdf/PdfEFStream;->superToPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    goto/16 :goto_1

    .line 142
    .restart local v5       #buf:[B
    .restart local v9       #def:Ljava/util/zip/DeflaterOutputStream;
    .restart local v10       #deflater:Ljava/util/zip/Deflater;
    .restart local v12       #fout:Ljava/io/OutputStream;
    .restart local v13       #n:I
    .restart local v15       #osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .restart local v16       #ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :cond_b
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v5, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->rawLength:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/PdfEFStream;->rawLength:I

    goto :goto_2

    .line 154
    .end local v5           #buf:[B
    .end local v9           #def:Ljava/util/zip/DeflaterOutputStream;
    .end local v10           #deflater:Ljava/util/zip/Deflater;
    .end local v12           #fout:Ljava/io/OutputStream;
    .end local v13           #n:I
    .end local v15           #osc:Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .end local v16           #ose:Lcom/itextpdf/text/pdf/OutputStreamEncryption;
    :cond_c
    if-nez v7, :cond_e

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 158
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->bytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    .line 162
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->streamBytes:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v4

    .line 168
    .local v4, b:[B
    :goto_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    .line 166
    .end local v4           #b:[B
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfEFStream;->bytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfEncryption;->encryptByteArray([B)[B

    move-result-object v4

    .restart local v4       #b:[B
    goto :goto_4
.end method
