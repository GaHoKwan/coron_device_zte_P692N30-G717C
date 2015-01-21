.class Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfContentStreamProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceDictionary"
.end annotation


# instance fields
.field private final resourcesStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->resourcesStack:Ljava/util/List;

    .line 391
    return-void
.end method


# virtual methods
.method public getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 4
    .parameter "key"

    .prologue
    .line 403
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->resourcesStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 404
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->resourcesStack:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 405
    .local v2, subResource:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 407
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    .line 410
    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v2           #subResource:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    return-object v1

    .line 403
    .restart local v2       #subResource:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 410
    .end local v2           #subResource:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    invoke-super {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    goto :goto_1
.end method

.method public pop()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->resourcesStack:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->resourcesStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public push(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "resources"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor$ResourceDictionary;->resourcesStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method
