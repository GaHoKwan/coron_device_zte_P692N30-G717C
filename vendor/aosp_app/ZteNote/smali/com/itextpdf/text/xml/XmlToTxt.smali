.class public Lcom/itextpdf/text/xml/XmlToTxt;
.super Ljava/lang/Object;
.source "XmlToTxt.java"

# interfaces
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;


# instance fields
.field protected buf:Ljava/lang/StringBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/xml/XmlToTxt;->buf:Ljava/lang/StringBuffer;

    .line 80
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/itextpdf/text/xml/XmlToTxt;

    invoke-direct {v0}, Lcom/itextpdf/text/xml/XmlToTxt;-><init>()V

    .line 71
    .local v0, handler:Lcom/itextpdf/text/xml/XmlToTxt;
    const/4 v1, 0x0

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V

    .line 72
    invoke-virtual {v0}, Lcom/itextpdf/text/xml/XmlToTxt;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 99
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public text(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlToTxt;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/itextpdf/text/xml/XmlToTxt;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
