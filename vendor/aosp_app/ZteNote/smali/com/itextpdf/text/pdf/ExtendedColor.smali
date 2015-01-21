.class public abstract Lcom/itextpdf/text/pdf/ExtendedColor;
.super Lcom/itextpdf/text/BaseColor;
.source "ExtendedColor.java"


# static fields
.field public static final TYPE_CMYK:I = 0x2

.field public static final TYPE_GRAY:I = 0x1

.field public static final TYPE_PATTERN:I = 0x4

.field public static final TYPE_RGB:I = 0x0

.field public static final TYPE_SEPARATION:I = 0x3

.field public static final TYPE_SHADING:I = 0x5

.field private static final serialVersionUID:J = 0x25c8d4ffff6a72b0L


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, v0, v0}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    .line 76
    iput p1, p0, Lcom/itextpdf/text/pdf/ExtendedColor;->type:I

    .line 77
    return-void
.end method

.method public constructor <init>(IFFF)V
    .locals 3
    .parameter "type"
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 87
    invoke-static {p2}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v0

    invoke-static {p3}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v1

    invoke-static {p4}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/BaseColor;-><init>(FFF)V

    .line 88
    iput p1, p0, Lcom/itextpdf/text/pdf/ExtendedColor;->type:I

    .line 89
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 5
    .parameter "type"
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    const/high16 v4, 0x437f

    .line 99
    int-to-float v0, p2

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v0

    int-to-float v1, p3

    div-float/2addr v1, v4

    invoke-static {v1}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v1

    int-to-float v2, p4

    div-float/2addr v2, v4

    invoke-static {v2}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v2

    int-to-float v3, p5

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(FFFF)V

    .line 100
    iput p1, p0, Lcom/itextpdf/text/pdf/ExtendedColor;->type:I

    .line 101
    return-void
.end method

.method public static getType(Lcom/itextpdf/text/BaseColor;)I
    .locals 1
    .parameter "color"

    .prologue
    .line 117
    instance-of v0, p0, Lcom/itextpdf/text/pdf/ExtendedColor;

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Lcom/itextpdf/text/pdf/ExtendedColor;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType()I

    move-result v0

    .line 119
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final normalize(F)F
    .locals 3
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 123
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .line 127
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 125
    .restart local p0
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    .line 126
    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/itextpdf/text/pdf/ExtendedColor;->type:I

    return v0
.end method
