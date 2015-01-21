.class public abstract Lcom/itextpdf/text/xml/xmp/XmpSchema;
.super Ljava/util/Properties;
.source "XmpSchema.java"


# static fields
.field private static final serialVersionUID:J = -0x2729b7cd98be778L


# instance fields
.field protected xmlns:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "xmlns"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/text/xml/xmp/XmpSchema;->xmlns:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "content"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXmlns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/xml/xmp/XmpSchema;->xmlns:Ljava/lang/String;

    return-object v0
.end method

.method protected process(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 2
    .parameter "buf"
    .parameter "p"

    .prologue
    const/16 v1, 0x3e

    .line 86
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 90
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/LangAlt;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/itextpdf/text/xml/xmp/LangAlt;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Lcom/itextpdf/text/xml/xmp/XmpArray;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/itextpdf/text/xml/xmp/XmpArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/text/xml/xmp/XmpSchema;->process(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
