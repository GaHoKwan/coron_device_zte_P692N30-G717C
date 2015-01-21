.class public Lcom/itextpdf/text/ImgCCITT;
.super Lcom/itextpdf/text/Image;
.source "ImgCCITT.java"


# direct methods
.method public constructor <init>(IIZII[B)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "reverseBits"
    .parameter "typeCCITT"
    .parameter "parameters"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 82
    const/16 v0, 0x100

    if-eq p4, v0, :cond_0

    const/16 v0, 0x101

    if-eq p4, v0, :cond_0

    const/16 v0, 0x102

    if-eq p4, v0, :cond_0

    .line 83
    new-instance v0, Lcom/itextpdf/text/BadElementException;

    const-string v1, "the.ccitt.compression.type.must.be.ccittg4.ccittg3.1d.or.ccittg3.2d"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-eqz p3, :cond_1

    .line 85
    invoke-static {p6}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->reverseBits([B)V

    .line 86
    :cond_1
    const/16 v0, 0x22

    iput v0, p0, Lcom/itextpdf/text/ImgCCITT;->type:I

    .line 87
    int-to-float v0, p2

    iput v0, p0, Lcom/itextpdf/text/ImgCCITT;->scaledHeight:F

    .line 88
    iget v0, p0, Lcom/itextpdf/text/ImgCCITT;->scaledHeight:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ImgCCITT;->setTop(F)V

    .line 89
    int-to-float v0, p1

    iput v0, p0, Lcom/itextpdf/text/ImgCCITT;->scaledWidth:F

    .line 90
    iget v0, p0, Lcom/itextpdf/text/ImgCCITT;->scaledWidth:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/ImgCCITT;->setRight(F)V

    .line 91
    iput p5, p0, Lcom/itextpdf/text/ImgCCITT;->colorspace:I

    .line 92
    iput p4, p0, Lcom/itextpdf/text/ImgCCITT;->bpc:I

    .line 93
    iput-object p6, p0, Lcom/itextpdf/text/ImgCCITT;->rawData:[B

    .line 94
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgCCITT;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgCCITT;->plainWidth:F

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgCCITT;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/ImgCCITT;->plainHeight:F

    .line 96
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 63
    return-void
.end method
