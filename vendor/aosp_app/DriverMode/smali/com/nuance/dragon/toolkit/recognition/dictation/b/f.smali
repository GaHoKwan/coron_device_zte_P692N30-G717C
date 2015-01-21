.class public abstract Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/recognition/dictation/b/g;


# instance fields
.field private a:[B

.field private b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

.field private c:Lcom/nuance/dragon/toolkit/recognition/a/c;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->a:[B

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/nuance/dragon/toolkit/recognition/dictation/b/f$a;
.end method

.method public final b()V
    .locals 3

    :try_start_0
    const-string v0, "org.xml.sax.driver"

    const-string v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->a()Lcom/nuance/dragon/toolkit/recognition/dictation/b/f$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f$a;->a()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-interface {v2}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f$a;->b()Lcom/nuance/dragon/toolkit/recognition/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->c:Lcom/nuance/dragon/toolkit/recognition/a/c;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    return-object v0
.end method

.method public final d()Lcom/nuance/dragon/toolkit/recognition/a/c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->c:Lcom/nuance/dragon/toolkit/recognition/a/c;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/f;->b:Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/f;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
