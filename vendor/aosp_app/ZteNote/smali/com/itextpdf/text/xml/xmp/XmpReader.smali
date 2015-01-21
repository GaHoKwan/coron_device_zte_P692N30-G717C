.class public Lcom/itextpdf/text/xml/xmp/XmpReader;
.super Ljava/lang/Object;
.source "XmpReader.java"


# instance fields
.field private domDocument:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>([B)V
    .locals 5
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 83
    .local v3, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 84
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 85
    .local v1, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 87
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "parent"
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    .line 147
    iget-object v8, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v8, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 148
    .local v4, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v7

    .line 153
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 154
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 155
    .local v5, pNode:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 156
    .local v0, attrs:Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 157
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 158
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 159
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, prefix:Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v7, p2, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 161
    invoke-interface {v3, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    .line 162
    iget-object v7, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v7, p4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 163
    invoke-interface {v5, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 164
    const/4 v7, 0x1

    goto :goto_0

    .line 156
    .end local v6           #prefix:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    .end local v3           #node:Lorg/w3c/dom/Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v5, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    const-string v6, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v7, "Description"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 122
    .local v1, descNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-nez v5, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 127
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 128
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 129
    .local v0, attr:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0, p3}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 131
    const/4 v4, 0x1

    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "value"

    .prologue
    .line 101
    iget-object v3, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v3, p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 103
    .local v2, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-nez v3, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 109
    :goto_0
    return v3

    .line 105
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 106
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 107
    .local v1, node:Lorg/w3c/dom/Node;
    iget-object v3, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p0, v3, v1, p3}, Lcom/itextpdf/text/xml/xmp/XmpReader;->setNodeText(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    .end local v1           #node:Lorg/w3c/dom/Node;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public serializeDoc()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v3, Lcom/itextpdf/text/xml/XmlDomWriter;

    invoke-direct {v3}, Lcom/itextpdf/text/xml/XmlDomWriter;-><init>()V

    .line 194
    .local v3, xw:Lcom/itextpdf/text/xml/XmlDomWriter;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 195
    .local v0, fout:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/itextpdf/text/xml/XmlDomWriter;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 196
    const-string v4, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 197
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 198
    iget-object v4, p0, Lcom/itextpdf/text/xml/xmp/XmpReader;->domDocument:Lorg/w3c/dom/Document;

    const-string v5, "x:xmpmeta"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 199
    .local v2, xmpmeta:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_0

    .line 202
    const-string v4, "                                                                                                   \n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const-string v4, "<?xpacket end=\"w\"?>"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 205
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 206
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public setNodeText(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 2
    .parameter "domDocument"
    .parameter "n"
    .parameter "value"

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 186
    :goto_0
    return v1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, nc:Lorg/w3c/dom/Node;
    :goto_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    invoke-interface {p2, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 185
    :cond_1
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    const/4 v1, 0x1

    goto :goto_0
.end method
