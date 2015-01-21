.class public Lcom/itextpdf/text/pdf/CMYKColor;
.super Lcom/itextpdf/text/pdf/ExtendedColor;
.source "CMYKColor.java"


# static fields
.field private static final serialVersionUID:J = 0x527077067e7016e4L


# instance fields
.field black:F

.field cyan:F

.field magenta:F

.field yellow:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4
    .parameter "floatCyan"
    .parameter "floatMagenta"
    .parameter "floatYellow"
    .parameter "floatBlack"

    .prologue
    const/high16 v3, 0x3f80

    .line 77
    const/4 v0, 0x2

    sub-float v1, v3, p1

    sub-float/2addr v1, p4

    sub-float v2, v3, p2

    sub-float/2addr v2, p4

    sub-float/2addr v3, p3

    sub-float/2addr v3, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/ExtendedColor;-><init>(IFFF)V

    .line 78
    invoke-static {p1}, Lcom/itextpdf/text/pdf/CMYKColor;->normalize(F)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->cyan:F

    .line 79
    invoke-static {p2}, Lcom/itextpdf/text/pdf/CMYKColor;->normalize(F)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->magenta:F

    .line 80
    invoke-static {p3}, Lcom/itextpdf/text/pdf/CMYKColor;->normalize(F)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->yellow:F

    .line 81
    invoke-static {p4}, Lcom/itextpdf/text/pdf/CMYKColor;->normalize(F)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->black:F

    .line 82
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5
    .parameter "intCyan"
    .parameter "intMagenta"
    .parameter "intYellow"
    .parameter "intBlack"

    .prologue
    const/high16 v4, 0x437f

    .line 66
    int-to-float v0, p1

    div-float/2addr v0, v4

    int-to-float v1, p2

    div-float/2addr v1, v4

    int-to-float v2, p3

    div-float/2addr v2, v4

    int-to-float v3, p4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/CMYKColor;-><init>(FFFF)V

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 113
    instance-of v2, p1, Lcom/itextpdf/text/pdf/CMYKColor;

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 116
    .local v0, c2:Lcom/itextpdf/text/pdf/CMYKColor;
    iget v2, p0, Lcom/itextpdf/text/pdf/CMYKColor;->cyan:F

    iget v3, v0, Lcom/itextpdf/text/pdf/CMYKColor;->cyan:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/itextpdf/text/pdf/CMYKColor;->magenta:F

    iget v3, v0, Lcom/itextpdf/text/pdf/CMYKColor;->magenta:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/itextpdf/text/pdf/CMYKColor;->yellow:F

    iget v3, v0, Lcom/itextpdf/text/pdf/CMYKColor;->yellow:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/itextpdf/text/pdf/CMYKColor;->black:F

    iget v3, v0, Lcom/itextpdf/text/pdf/CMYKColor;->black:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBlack()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->black:F

    return v0
.end method

.method public getCyan()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->cyan:F

    return v0
.end method

.method public getMagenta()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->magenta:F

    return v0
.end method

.method public getYellow()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->yellow:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/itextpdf/text/pdf/CMYKColor;->cyan:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/CMYKColor;->magenta:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/CMYKColor;->yellow:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/CMYKColor;->black:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
