.class public Lcom/itextpdf/text/pdf/PdfLister;
.super Ljava/lang/Object;
.source "PdfLister.java"


# instance fields
.field out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    .line 65
    return-void
.end method


# virtual methods
.method public listAnyObject(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    .end local p1
    :goto_0
    return-void

    .line 75
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfLister;->listArray(Lcom/itextpdf/text/pdf/PdfArray;)V

    goto :goto_0

    .line 78
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfLister;->listDict(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_0

    .line 81
    .restart local p1
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public listArray(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 4
    .parameter "array"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(C)V

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfObject;

    .line 114
    .local v1, item:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfLister;->listAnyObject(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 116
    .end local v1           #item:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(C)V

    .line 117
    return-void
.end method

.method public listDict(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 5
    .parameter "dictionary"

    .prologue
    .line 94
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const-string v4, "<<"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 97
    .local v1, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 98
    .local v2, value:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfLister;->listAnyObject(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 102
    .end local v1           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public listPage(Lcom/itextpdf/text/pdf/PdfImportedPage;)V
    .locals 9
    .parameter "iPage"

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPageNumber()I

    move-result v4

    .line 158
    .local v4, pageNum:I
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPdfReaderInstance()Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v6

    .line 159
    .local v6, readerInst:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v5

    .line 161
    .local v5, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 162
    .local v3, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfLister;->listDict(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 163
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 164
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v2, :cond_1

    .line 178
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    :goto_0
    return-void

    .line 166
    .restart local v2       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    iget v7, v2, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 171
    :pswitch_1
    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 173
    .local v1, o:Lcom/itextpdf/text/pdf/PdfObject;
    check-cast v1, Lcom/itextpdf/text/pdf/PRStream;

    .end local v1           #o:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v1, v6}, Lcom/itextpdf/text/pdf/PdfLister;->listStream(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfReaderInstance;)V

    .line 174
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const-string v8, "-----------"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .restart local v2       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :pswitch_2
    check-cast v2, Lcom/itextpdf/text/pdf/PRStream;

    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v2, v6}, Lcom/itextpdf/text/pdf/PdfLister;->listStream(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfReaderInstance;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public listStream(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfReaderInstance;)V
    .locals 7
    .parameter "stream"
    .parameter "reader"

    .prologue
    const/16 v6, 0xa

    .line 126
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfLister;->listDict(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 127
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const-string v5, "startstream"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v0

    .line 138
    .local v0, b:[B
    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .line 139
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 140
    aget-byte v4, v0, v2

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 141
    const/16 v4, 0xa

    aput-byte v4, v0, v2

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfLister;->out:Ljava/io/PrintStream;

    const-string v5, "endstream"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0           #b:[B
    .end local v2           #k:I
    .end local v3           #len:I
    :goto_1
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
