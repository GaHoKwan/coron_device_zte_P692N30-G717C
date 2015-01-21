.class public Lcom/itextpdf/text/pdf/parser/ContentByteUtils;
.super Ljava/lang/Object;
.source "ContentByteUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getContentBytesForPage(Lcom/itextpdf/text/pdf/PdfReader;I)[B
    .locals 4
    .parameter "reader"
    .parameter "pageNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 118
    .local v2, pageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 119
    .local v1, contentObject:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v1, :cond_0

    .line 120
    const/4 v3, 0x0

    new-array v0, v3, [B

    .line 123
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {v1}, Lcom/itextpdf/text/pdf/parser/ContentByteUtils;->getContentBytesFromContentObject(Lcom/itextpdf/text/pdf/PdfObject;)[B

    move-result-object v0

    .line 123
    .local v0, contentBytes:[B
    goto :goto_0
.end method

.method public static getContentBytesFromContentObject(Lcom/itextpdf/text/pdf/PdfObject;)[B
    .locals 11
    .parameter "contentObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 102
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to handle Content of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, msg:Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v5           #msg:Ljava/lang/String;
    :pswitch_1
    move-object v6, p0

    .line 79
    check-cast v6, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 80
    .local v6, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 81
    .local v2, directObject:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v2}, Lcom/itextpdf/text/pdf/parser/ContentByteUtils;->getContentBytesFromContentObject(Lcom/itextpdf/text/pdf/PdfObject;)[B

    move-result-object v7

    .line 105
    .end local v2           #directObject:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .local v7, result:[B
    :goto_0
    return-object v7

    .line 84
    .end local v7           #result:[B
    :pswitch_2
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PRStream;

    .line 85
    .local v8, stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v7

    .line 86
    .restart local v7       #result:[B
    goto :goto_0

    .line 90
    .end local v7           #result:[B
    .end local v8           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :pswitch_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, allBytes:Ljava/io/ByteArrayOutputStream;
    move-object v1, p0

    .line 91
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 92
    .local v1, contentArray:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 93
    .local v4, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 95
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfObject;

    .line 96
    .local v3, element:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/parser/ContentByteUtils;->getContentBytesFromContentObject(Lcom/itextpdf/text/pdf/PdfObject;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 99
    .end local v3           #element:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 100
    .restart local v7       #result:[B
    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
