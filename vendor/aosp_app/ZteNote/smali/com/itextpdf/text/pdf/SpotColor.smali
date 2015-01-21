.class public Lcom/itextpdf/text/pdf/SpotColor;
.super Lcom/itextpdf/text/pdf/ExtendedColor;
.source "SpotColor.java"


# static fields
.field private static final serialVersionUID:J = -0x56d5588432da034fL


# instance fields
.field spot:Lcom/itextpdf/text/pdf/PdfSpotColor;

.field tint:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 6
    .parameter "spot"
    .parameter "tint"

    .prologue
    const/high16 v5, 0x437f

    const/high16 v4, 0x3f80

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfSpotColor;->getAlternativeCS()Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v1, v4

    mul-float/2addr v1, p2

    add-float/2addr v1, v4

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfSpotColor;->getAlternativeCS()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v2, v4

    mul-float/2addr v2, p2

    add-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfSpotColor;->getAlternativeCS()Lcom/itextpdf/text/BaseColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/ExtendedColor;-><init>(IFFF)V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/text/pdf/SpotColor;->spot:Lcom/itextpdf/text/pdf/PdfSpotColor;

    .line 62
    iput p2, p0, Lcom/itextpdf/text/pdf/SpotColor;->tint:F

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 74
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/itextpdf/text/pdf/SpotColor;->spot:Lcom/itextpdf/text/pdf/PdfSpotColor;

    return-object v0
.end method

.method public getTint()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/itextpdf/text/pdf/SpotColor;->tint:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/itextpdf/text/pdf/SpotColor;->spot:Lcom/itextpdf/text/pdf/PdfSpotColor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/SpotColor;->tint:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
