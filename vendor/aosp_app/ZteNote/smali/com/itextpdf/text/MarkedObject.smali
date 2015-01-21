.class public Lcom/itextpdf/text/MarkedObject;
.super Ljava/lang/Object;
.source "MarkedObject.java"

# interfaces
.implements Lcom/itextpdf/text/Element;


# instance fields
.field protected element:Lcom/itextpdf/text/Element;

.field protected markupAttributes:Ljava/util/Properties;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/MarkedObject;->markupAttributes:Ljava/util/Properties;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/MarkedObject;->markupAttributes:Ljava/util/Properties;

    .line 77
    iput-object p1, p0, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    .line 78
    return-void
.end method


# virtual methods
.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    invoke-interface {v0}, Lcom/itextpdf/text/Element;->getChunks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMarkupAttributes()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/MarkedObject;->markupAttributes:Ljava/util/Properties;

    return-object v0
.end method

.method public isContent()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isNestable()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public process(Lcom/itextpdf/text/ElementListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/MarkedObject;->element:Lcom/itextpdf/text/Element;

    invoke-interface {p1, v1}, Lcom/itextpdf/text/ElementListener;->add(Lcom/itextpdf/text/Element;)Z
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMarkupAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/itextpdf/text/MarkedObject;->markupAttributes:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x32

    return v0
.end method
