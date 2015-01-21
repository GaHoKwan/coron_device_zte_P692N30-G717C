.class Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;
.super Ljava/lang/Object;
.source "PdfContentByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/PdfContentByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphicState"
.end annotation


# instance fields
.field protected charSpace:F

.field colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

.field fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

.field protected leading:F

.field protected scale:F

.field size:F

.field protected wordSpace:F

.field protected xTLM:F

.field protected yTLM:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 91
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 94
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 97
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    .line 100
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 103
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 106
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;)V
    .locals 2
    .parameter "cp"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 91
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 94
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 97
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    .line 100
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 103
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 109
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    .line 110
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 111
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    .line 112
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 113
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 114
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 115
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    .line 116
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 117
    iget v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 118
    return-void
.end method
