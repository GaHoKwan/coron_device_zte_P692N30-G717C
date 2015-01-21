.class public Lcom/itextpdf/text/xml/XmlDomWriter;
.super Ljava/lang/Object;
.source "XmlDomWriter.java"


# instance fields
.field protected fCanonical:Z

.field protected fOut:Ljava/io/PrintWriter;

.field protected fXML11:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "canonical"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    .line 55
    return-void
.end method


# virtual methods
.method protected normalizeAndPrint(CZ)V
    .locals 3
    .parameter "c"
    .parameter "isAttValue"

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    .line 279
    sparse-switch p1, :sswitch_data_0

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fXML11:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_4

    :cond_1
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_2

    const/16 v0, 0x9f

    if-le p1, v0, :cond_4

    :cond_2
    const/16 v0, 0x2028

    if-eq p1, v0, :cond_4

    :cond_3
    if-eqz p2, :cond_6

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_6

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 281
    :sswitch_0
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :sswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :sswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :sswitch_3
    if-eqz p2, :cond_5

    .line 296
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :sswitch_4
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&#xD;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :sswitch_5
    iget-boolean v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v1, "&#xA;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method protected normalizeAndPrint(Ljava/lang/String;Z)V
    .locals 3
    .parameter "s"
    .parameter "isAttValue"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 269
    .local v2, len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 271
    .local v0, c:C
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/xml/XmlDomWriter;->normalizeAndPrint(CZ)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 274
    .restart local v1       #i:I
    .restart local v2       #len:I
    :cond_1
    return-void
.end method

.method public setCanonical(Z)V
    .locals 0
    .parameter "canonical"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    .line 64
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "stream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    const-string p2, "UTF8"

    .line 74
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 75
    .local v0, writer:Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    .line 77
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 82
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/PrintWriter;

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    .line 85
    return-void

    .line 82
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object p1, v0

    goto :goto_0
.end method

.method protected sortAttributes(Lorg/w3c/dom/NamedNodeMap;)[Lorg/w3c/dom/Attr;
    .locals 9
    .parameter "attrs"

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    .line 236
    .local v5, len:I
    :goto_0
    new-array v0, v5, [Lorg/w3c/dom/Attr;

    .line 237
    .local v0, array:[Lorg/w3c/dom/Attr;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 238
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Attr;

    aput-object v8, v0, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    .end local v0           #array:[Lorg/w3c/dom/Attr;
    .end local v2           #i:I
    .end local v5           #len:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 240
    .restart local v0       #array:[Lorg/w3c/dom/Attr;
    .restart local v2       #i:I
    .restart local v5       #len:I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v8, v5, -0x1

    if-ge v2, v8, :cond_5

    .line 241
    aget-object v8, v0, v2

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, name:Ljava/lang/String;
    move v3, v2

    .line 243
    .local v3, index:I
    add-int/lit8 v4, v2, 0x1

    .local v4, j:I
    :goto_3
    if-ge v4, v5, :cond_3

    .line 244
    aget-object v8, v0, v4

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, curName:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    .line 246
    move-object v6, v1

    .line 247
    move v3, v4

    .line 243
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 250
    .end local v1           #curName:Ljava/lang/String;
    :cond_3
    if-eq v3, v2, :cond_4

    .line 251
    aget-object v7, v0, v2

    .line 252
    .local v7, temp:Lorg/w3c/dom/Attr;
    aget-object v8, v0, v3

    aput-object v8, v0, v2

    .line 253
    aput-object v7, v0, v3

    .line 240
    .end local v7           #temp:Lorg/w3c/dom/Attr;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 257
    .end local v3           #index:I
    .end local v4           #j:I
    .end local v6           #name:Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method public write(Lorg/w3c/dom/Node;)V
    .locals 14
    .parameter "node"

    .prologue
    .line 91
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    .line 96
    .local v11, type:S
    packed-switch v11, :pswitch_data_0

    .line 223
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 224
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "</"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x3e

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 227
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :pswitch_1
    move-object v6, p1

    .line 98
    check-cast v6, Lorg/w3c/dom/Document;

    .line 99
    .local v6, document:Lorg/w3c/dom/Document;
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fXML11:Z

    .line 100
    iget-boolean v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    if-nez v12, :cond_3

    .line 101
    iget-boolean v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fXML11:Z

    if-eqz v12, :cond_4

    .line 102
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "<?xml version=\"1.1\" encoding=\"UTF-8\"?>"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    :goto_2
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 107
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 109
    :cond_3
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 104
    :cond_4
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .end local v6           #document:Lorg/w3c/dom/Document;
    :pswitch_2
    move-object v5, p1

    .line 114
    check-cast v5, Lorg/w3c/dom/DocumentType;

    .line 115
    .local v5, doctype:Lorg/w3c/dom/DocumentType;
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "<!DOCTYPE "

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, publicId:Ljava/lang/String;
    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, systemId:Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 120
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, " PUBLIC \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "\' \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 130
    :cond_5
    :goto_3
    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, internalSubset:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 132
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 136
    :cond_6
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x3e

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(C)V

    goto/16 :goto_1

    .line 125
    .end local v8           #internalSubset:Ljava/lang/String;
    :cond_7
    if-eqz v10, :cond_5

    .line 126
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, " SYSTEM \'"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3

    .line 141
    .end local v5           #doctype:Lorg/w3c/dom/DocumentType;
    .end local v9           #publicId:Ljava/lang/String;
    .end local v10           #systemId:Ljava/lang/String;
    :pswitch_3
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 142
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/itextpdf/text/xml/XmlDomWriter;->sortAttributes(Lorg/w3c/dom/NamedNodeMap;)[Lorg/w3c/dom/Attr;

    move-result-object v1

    .line 144
    .local v1, attrs:[Lorg/w3c/dom/Attr;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    array-length v12, v1

    if-ge v7, v12, :cond_8

    .line 145
    aget-object v0, v1, v7

    .line 146
    .local v0, attr:Lorg/w3c/dom/Attr;
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 147
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "=\""

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/xml/XmlDomWriter;->normalizeAndPrint(Ljava/lang/String;Z)V

    .line 150
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 144
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 152
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    :cond_8
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x3e

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 153
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    .line 155
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 156
    .local v2, child:Lorg/w3c/dom/Node;
    :goto_5
    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 158
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_5

    .line 164
    .end local v1           #attrs:[Lorg/w3c/dom/Attr;
    .end local v2           #child:Lorg/w3c/dom/Node;
    .end local v7           #i:I
    :pswitch_4
    iget-boolean v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    if-eqz v12, :cond_9

    .line 165
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 166
    .restart local v2       #child:Lorg/w3c/dom/Node;
    :goto_6
    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 168
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_6

    .line 171
    .end local v2           #child:Lorg/w3c/dom/Node;
    :cond_9
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x26

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 172
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 174
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_1

    .line 180
    :pswitch_5
    iget-boolean v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    if-eqz v12, :cond_a

    .line 181
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/xml/XmlDomWriter;->normalizeAndPrint(Ljava/lang/String;Z)V

    .line 187
    :goto_7
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_1

    .line 183
    :cond_a
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "<![CDATA["

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "]]>"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 192
    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/itextpdf/text/xml/XmlDomWriter;->normalizeAndPrint(Ljava/lang/String;Z)V

    .line 193
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_1

    .line 198
    :pswitch_7
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "<?"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 200
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, data:Ljava/lang/String;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b

    .line 202
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(C)V

    .line 203
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    :cond_b
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "?>"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_1

    .line 211
    .end local v4           #data:Ljava/lang/String;
    :pswitch_8
    iget-boolean v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fCanonical:Z

    if-nez v12, :cond_2

    .line 212
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "<!--"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, comment:Ljava/lang/String;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c

    .line 215
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    :cond_c
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    const-string v13, "-->"

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget-object v12, p0, Lcom/itextpdf/text/xml/XmlDomWriter;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
