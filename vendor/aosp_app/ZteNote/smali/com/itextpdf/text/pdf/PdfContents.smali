.class Lcom/itextpdf/text/pdf/PdfContents;
.super Lcom/itextpdf/text/pdf/PdfStream;
.source "PdfContents.java"


# static fields
.field static final RESTORESTATE:[B

.field static final ROTATE180:[B

.field static final ROTATE270:[B

.field static final ROTATE90:[B

.field static final ROTATEFINAL:[B

.field static final SAVESTATE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "q\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    .line 62
    const-string v0, "Q\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    .line 63
    const-string v0, "0 1 -1 0 "

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE90:[B

    .line 64
    const-string v0, "-1 0 0 -1 "

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE180:[B

    .line 65
    const-string v0, "0 -1 1 0 "

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE270:[B

    .line 66
    const-string v0, " cm\n"

    invoke-static {v0}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/Rectangle;)V
    .locals 9
    .parameter "under"
    .parameter "content"
    .parameter "text"
    .parameter "secondContent"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfStream;-><init>()V

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, out:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 84
    .local v0, deflater:Ljava/util/zip/Deflater;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/text/pdf/PdfContents;->streamBytes:Ljava/io/ByteArrayOutputStream;

    .line 85
    sget-boolean v6, Lcom/itextpdf/text/Document;->compress:Z

    if-eqz v6, :cond_6

    .line 87
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfContents;->compressed:Z

    .line 88
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPdfWriter()Lcom/itextpdf/text/pdf/PdfWriter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v6

    iput v6, p0, Lcom/itextpdf/text/pdf/PdfContents;->compressionLevel:I

    .line 89
    new-instance v1, Ljava/util/zip/Deflater;

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfContents;->compressionLevel:I

    invoke-direct {v1, v6}, Ljava/util/zip/Deflater;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0           #deflater:Ljava/util/zip/Deflater;
    .local v1, deflater:Ljava/util/zip/Deflater;
    :try_start_1
    new-instance v4, Ljava/util/zip/DeflaterOutputStream;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfContents;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v6, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1           #deflater:Ljava/util/zip/Deflater;
    .restart local v0       #deflater:Ljava/util/zip/Deflater;
    move-object v3, v4

    .line 94
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {p5}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v5

    .line 95
    .local v5, rotation:I
    sparse-switch v5, :sswitch_data_0

    .line 118
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 119
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->writeTo(Ljava/io/OutputStream;)V

    .line 121
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 123
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 124
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 125
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->writeTo(Ljava/io/OutputStream;)V

    .line 126
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 128
    :cond_1
    if-eqz p3, :cond_2

    .line 129
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->writeTo(Ljava/io/OutputStream;)V

    .line 131
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 133
    :cond_2
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 134
    invoke-virtual {p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->writeTo(Ljava/io/OutputStream;)V

    .line 136
    :cond_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 137
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :cond_4
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfContents;->streamBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/pdf/PdfContents;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 145
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/PdfContents;->compressed:Z

    if-eqz v6, :cond_5

    .line 146
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/text/pdf/PdfContents;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 147
    :cond_5
    return-void

    .line 93
    .end local v5           #rotation:I
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContents;->streamBytes:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 97
    .restart local v5       #rotation:I
    :sswitch_0
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE90:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 98
    invoke-virtual {p5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 99
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 100
    const/16 v6, 0x30

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 101
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 141
    .end local v5           #rotation:I
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    new-instance v6, Lcom/itextpdf/text/pdf/BadPdfFormatException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/BadPdfFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #rotation:I
    :sswitch_1
    :try_start_4
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE180:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual {p5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 106
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 107
    invoke-virtual {p5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 108
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    .line 111
    :sswitch_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE270:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 112
    const/16 v6, 0x30

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 113
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    .line 114
    invoke-virtual {p5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/itextpdf/text/pdf/ByteBuffer;->formatDouble(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 115
    sget-object v6, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 141
    .end local v0           #deflater:Ljava/util/zip/Deflater;
    .end local v5           #rotation:I
    .restart local v1       #deflater:Ljava/util/zip/Deflater;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #deflater:Ljava/util/zip/Deflater;
    .restart local v0       #deflater:Ljava/util/zip/Deflater;
    goto :goto_2

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method
