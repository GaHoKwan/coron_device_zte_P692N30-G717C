.class public Lcom/itextpdf/text/ImgRaw;
.super Lcom/itextpdf/text/Image;
.source "ImgRaw.java"


# direct methods
.method public constructor <init>(IIII[B)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "components"
    .parameter "bpc"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 76
    const/16 v0, 0x22

    iput v0, p0, Lcom/itextpdf/text/ImgRaw;->type:I

    .line 77
    int-to-float v0, p2

    iput v0, p0, Lcom/itextpdf/text/ImgRaw;->scaledHeight:F

    .line 78
    iget v0, p0, Lcom/itextpdf/text/ImgRaw;->scaledHeight:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ImgRaw;->setTop(F)V

    .line 79
    int-to-float v0, p1

    iput v0, p0, Lcom/itextpdf/text/ImgRaw;->scaledWidth:F

    .line 80
    iget v0, p0, Lcom/itextpdf/text/ImgRaw;->scaledWidth:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ImgRaw;->setRight(F)V

    .line 81
    if-eq p3, v1, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    if-eq p3, v3, :cond_0

    .line 82
    new-instance v0, Lcom/itextpdf/text/BadElementException;

    const-string v1, "components.must.be.1.3.or.4"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-eq p4, v1, :cond_1

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    if-eq p4, v3, :cond_1

    const/16 v0, 0x8

    if-eq p4, v0, :cond_1

    .line 84
    new-instance v0, Lcom/itextpdf/text/BadElementException;

    const-string v1, "bits.per.component.must.be.1.2.4.or.8"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput p3, p0, Lcom/itextpdf/text/ImgRaw;->colorspace:I

    .line 86
    iput p4, p0, Lcom/itextpdf/text/ImgRaw;->bpc:I

    .line 87
    iput-object p5, p0, Lcom/itextpdf/text/ImgRaw;->rawData:[B

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgRaw;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgRaw;->plainWidth:F

    .line 89
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgRaw;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgRaw;->plainHeight:F

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 62
    return-void
.end method
