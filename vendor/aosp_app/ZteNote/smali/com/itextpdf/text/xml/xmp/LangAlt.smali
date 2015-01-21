.class public Lcom/itextpdf/text/xml/xmp/LangAlt;
.super Ljava/util/Properties;
.source "LangAlt.java"


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "x-default"

.field private static final serialVersionUID:J = 0x3d052e457e20955bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "defaultValue"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 62
    const-string v0, "x-default"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/xml/xmp/LangAlt;->addLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "language"
    .parameter "value"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/xml/xmp/LangAlt;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method protected process(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .parameter "buf"
    .parameter "lang"

    .prologue
    .line 81
    const-string v0, "<rdf:li xml:lang=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 83
    const-string v0, "\" >"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/xml/xmp/LangAlt;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 85
    const-string v0, "</rdf:li>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "<rdf:Alt>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/text/xml/xmp/LangAlt;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/xml/xmp/LangAlt;->process(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v2, "</rdf:Alt>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
