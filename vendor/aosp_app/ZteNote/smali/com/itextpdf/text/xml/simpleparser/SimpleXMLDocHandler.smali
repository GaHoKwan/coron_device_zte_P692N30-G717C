.class public interface abstract Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;
.super Ljava/lang/Object;
.source "SimpleXMLDocHandler.java"


# virtual methods
.method public abstract endDocument()V
.end method

.method public abstract endElement(Ljava/lang/String;)V
.end method

.method public abstract startDocument()V
.end method

.method public abstract startElement(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract text(Ljava/lang/String;)V
.end method