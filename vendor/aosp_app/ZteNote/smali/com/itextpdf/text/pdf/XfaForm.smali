.class public Lcom/itextpdf/text/pdf/XfaForm;
.super Ljava/lang/Object;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;,
        Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;,
        Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;,
        Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;,
        Lcom/itextpdf/text/pdf/XfaForm$Stack2;,
        Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    }
.end annotation


# static fields
.field public static final XFA_DATA_SCHEMA:Ljava/lang/String; = "http://www.xfa.org/schema/xfa-data/1.0/"


# instance fields
.field private acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

.field private changed:Z

.field private datasetsNode:Lorg/w3c/dom/Node;

.field private datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

.field private domDocument:Lorg/w3c/dom/Document;

.field private reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private templateNode:Lorg/w3c/dom/Node;

.field private templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

.field private xfaPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 10
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 109
    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm;->getXfaObject(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 110
    .local v7, xfa:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v7, :cond_0

    .line 111
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    .line 136
    .end local v7           #xfa:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    return-void

    .line 114
    .restart local v7       #xfa:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    .line 115
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v2, bout:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v7

    .line 117
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 118
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 119
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 120
    .local v6, ob:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v8, v6, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v8, :cond_1

    .line 121
    check-cast v6, Lcom/itextpdf/text/pdf/PRStream;

    .end local v6           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v1

    .line 122
    .local v1, b:[B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 118
    .end local v1           #b:[B
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 126
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #k:I
    :cond_2
    instance-of v8, v7, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v8, :cond_3

    .line 127
    check-cast v7, Lcom/itextpdf/text/pdf/PRStream;

    .end local v7           #xfa:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v1

    .line 128
    .restart local v1       #b:[B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    .end local v1           #b:[B
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 131
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 132
    .local v4, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4, v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 133
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 134
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    .line 135
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm;->extractNodes()V

    goto :goto_0
.end method

.method private createDatasetsNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .parameter "n"

    .prologue
    .line 179
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    if-eqz p1, :cond_1

    .line 183
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "xfa:datasets"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 184
    .local v0, e:Lorg/w3c/dom/Element;
    const-string v1, "xmlns:xfa"

    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 186
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 188
    .end local v0           #e:Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method

.method private extractNodes()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/XfaForm;->extractXFANodes(Lorg/w3c/dom/Document;)Ljava/util/Map;

    move-result-object v0

    .line 145
    .local v0, xfaNodes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/w3c/dom/Node;>;"
    const-string v1, "template"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "template"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    .line 147
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    .line 149
    :cond_0
    const-string v1, "datasets"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "datasets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 151
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm;->createDatasetsNode(Lorg/w3c/dom/Node;)V

    .line 155
    :cond_2
    return-void
.end method

.method public static extractXFANodes(Lorg/w3c/dom/Document;)Ljava/util/Map;
    .locals 5
    .parameter "domDocument"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v2, xfaNodes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/w3c/dom/Node;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 160
    .local v0, n:Lorg/w3c/dom/Node;
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 164
    :goto_1
    if-eqz v0, :cond_2

    .line 165
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 166
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, s:Ljava/lang/String;
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 172
    :cond_2
    return-object v2
.end method

.method private getFirstElementNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "src"

    .prologue
    .line 1198
    const/4 v2, 0x0

    .line 1199
    .local v2, result:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1200
    .local v1, list:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1201
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1202
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1206
    :cond_0
    return-object v2

    .line 1200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter "n"

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 333
    const-string v0, ""

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "n"
    .parameter "name"

    .prologue
    .line 339
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 340
    .local v0, n2:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 341
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 342
    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_0
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 349
    :cond_2
    return-object p1
.end method

.method public static getXfaObject(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 3
    .parameter "reader"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 93
    .local v0, af:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    goto :goto_0
.end method

.method public static serializeDoc(Lorg/w3c/dom/Node;)[B
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v1, Lcom/itextpdf/text/xml/XmlDomWriter;

    invoke-direct {v1}, Lcom/itextpdf/text/xml/XmlDomWriter;-><init>()V

    .line 253
    .local v1, xw:Lcom/itextpdf/text/xml/XmlDomWriter;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    .local v0, fout:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/xml/XmlDomWriter;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/xml/XmlDomWriter;->setCanonical(Z)V

    .line 256
    invoke-virtual {v1, p0}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 258
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static setXfa(Lcom/itextpdf/text/pdf/XfaForm;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 13
    .parameter "form"
    .parameter "reader"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 199
    .local v0, af:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm;->getXfaObject(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    .line 203
    .local v10, xfa:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v1, v10

    .line 204
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 205
    .local v1, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v8, -0x1

    .line 206
    .local v8, t:I
    const/4 v2, -0x1

    .line 207
    .local v2, d:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 208
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 209
    .local v6, s:Lcom/itextpdf/text/pdf/PdfString;
    const-string v11, "template"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 210
    add-int/lit8 v8, v4, 0x1

    .line 212
    :cond_1
    const-string v11, "datasets"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 213
    add-int/lit8 v2, v4, 0x1

    .line 207
    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 216
    .end local v6           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_3
    const/4 v11, -0x1

    if-le v8, v11, :cond_4

    const/4 v11, -0x1

    if-le v2, v11, :cond_4

    .line 217
    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 218
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 219
    new-instance v9, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/XfaForm;->serializeDoc(Lorg/w3c/dom/Node;)[B

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 220
    .local v9, tStream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 221
    invoke-virtual {p2, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {v1, v8, v11}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 222
    new-instance v3, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/XfaForm;->serializeDoc(Lorg/w3c/dom/Node;)[B

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 223
    .local v3, dStream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 224
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 225
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v12, v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfArray;)V

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 229
    .end local v1           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #d:I
    .end local v3           #dStream:Lcom/itextpdf/text/pdf/PdfStream;
    .end local v4           #k:I
    .end local v8           #t:I
    .end local v9           #tStream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_4
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 230
    new-instance v7, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/XfaForm;->serializeDoc(Lorg/w3c/dom/Node;)[B

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 231
    .local v7, str:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 232
    invoke-virtual {p2, v7}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    .line 233
    .local v5, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public fillXfaForm(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Ljava/io/File;Z)V

    .line 1125
    return-void
.end method

.method public fillXfaForm(Ljava/io/File;Z)V
    .locals 1
    .parameter "file"
    .parameter "readOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Ljava/io/InputStream;Z)V

    .line 1128
    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Ljava/io/InputStream;Z)V

    .line 1132
    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;Z)V
    .locals 1
    .parameter "is"
    .parameter "readOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;Z)V

    .line 1135
    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 1155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;Z)V

    .line 1156
    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;Z)V
    .locals 13
    .parameter "node"
    .parameter "readOnly"

    .prologue
    const/4 v12, 0x1

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    iget-object v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    const-string v10, "field"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1164
    .local v8, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1165
    invoke-interface {v8, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string v10, "access"

    const-string v11, "readOnly"

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1168
    .end local v3           #i:I
    .end local v8           #nodeList:Lorg/w3c/dom/NodeList;
    :cond_0
    iget-object v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1169
    .local v0, allChilds:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 1170
    .local v5, len:I
    const/4 v1, 0x0

    .line 1171
    .local v1, data:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1172
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1173
    .local v7, n:Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-ne v9, v12, :cond_4

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "http://www.xfa.org/schema/xfa-data/1.0/"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1174
    move-object v1, v7

    .line 1178
    .end local v7           #n:Lorg/w3c/dom/Node;
    :cond_1
    if-nez v1, :cond_2

    .line 1179
    iget-object v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    const-string v10, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v11, "xfa:data"

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1180
    iget-object v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v9, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1182
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1183
    .local v6, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-nez v9, :cond_5

    .line 1184
    iget-object v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1, v12}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1193
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm;->extractNodes()V

    .line 1194
    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/XfaForm;->setChanged(Z)V

    .line 1195
    return-void

    .line 1171
    .end local v6           #list:Lorg/w3c/dom/NodeList;
    .restart local v7       #n:Lorg/w3c/dom/Node;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1189
    .end local v7           #n:Lorg/w3c/dom/Node;
    .restart local v6       #list:Lorg/w3c/dom/NodeList;
    :cond_5
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/XfaForm;->getFirstElementNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1190
    .local v2, firstNode:Lorg/w3c/dom/Node;
    if-eqz v2, :cond_3

    .line 1191
    iget-object v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v9, p1, v12}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v1, v9, v2}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;Z)V

    .line 1139
    return-void
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;Z)V
    .locals 5
    .parameter "is"
    .parameter "readOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1144
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1145
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1146
    .local v3, newdoc:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    return-void

    .line 1147
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #newdoc:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 1148
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 1149
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 1150
    .local v2, e:Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public findDatasetsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearchGlobal(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 320
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/XfaForm;->findDatasetsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    if-eqz p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "af"

    .prologue
    .line 285
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/Map;

    move-result-object v0

    .line 286
    .local v0, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    .end local p1
    :goto_0
    return-object p1

    .line 288
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    if-nez v1, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    if-eqz v1, :cond_2

    .line 290
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    .line 294
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_0

    .line 292
    :cond_2
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    goto :goto_1

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->inverseSearchGlobal(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getAcroFieldsSom()Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    return-object v0
.end method

.method public getDatasetsNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getDatasetsSom()Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    return-object v0
.end method

.method public getDomDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method public getTemplateSom()Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->changed:Z

    return v0
.end method

.method public isXfaPresent()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    return v0
.end method

.method public setAcroFieldsSom(Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;)V
    .locals 0
    .parameter "acroFieldsSom"

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    .line 1113
    return-void
.end method

.method public setChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->changed:Z

    .line 418
    return-void
.end method

.method public setDatasetsSom(Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;)V
    .locals 0
    .parameter "datasetsSom"

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    .line 1097
    return-void
.end method

.method public setDomDocument(Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter "domDocument"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    .line 385
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm;->extractNodes()V

    .line 386
    return-void
.end method

.method public setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 4
    .parameter "n"
    .parameter "text"

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    .line 362
    .local v0, nc:Lorg/w3c/dom/Node;
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 365
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v3, "dataNode"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 366
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v3, "dataNode"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->changed:Z

    goto :goto_0
.end method

.method public setReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 402
    return-void
.end method

.method public setTemplateSom(Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;)V
    .locals 0
    .parameter "templateSom"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    .line 1081
    return-void
.end method

.method public setXfa(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-static {p0, v0, p1}, Lcom/itextpdf/text/pdf/XfaForm;->setXfa(Lcom/itextpdf/text/pdf/XfaForm;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 243
    return-void
.end method

.method public setXfaPresent(Z)V
    .locals 0
    .parameter "xfaPresent"

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    .line 377
    return-void
.end method
