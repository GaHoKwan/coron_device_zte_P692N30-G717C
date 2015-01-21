.class public Lcom/itextpdf/text/ImgTemplate;
.super Lcom/itextpdf/text/Image;
.source "ImgTemplate.java"


# direct methods
.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 3
    .parameter "template"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Lcom/itextpdf/text/BadElementException;

    const-string v1, "the.template.can.not.be.null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 76
    new-instance v0, Lcom/itextpdf/text/BadElementException;

    const-string v1, "a.pattern.can.not.be.used.as.a.template.to.create.an.image"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    const/16 v0, 0x23

    iput v0, p0, Lcom/itextpdf/text/ImgTemplate;->type:I

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgTemplate;->scaledHeight:F

    .line 79
    iget v0, p0, Lcom/itextpdf/text/ImgTemplate;->scaledHeight:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ImgTemplate;->setTop(F)V

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgTemplate;->scaledWidth:F

    .line 81
    iget v0, p0, Lcom/itextpdf/text/ImgTemplate;->scaledWidth:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ImgTemplate;->setRight(F)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/ImgTemplate;->setTemplateData(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 83
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgTemplate;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgTemplate;->plainWidth:F

    .line 84
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgTemplate;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgTemplate;->plainHeight:F

    .line 85
    return-void
.end method
