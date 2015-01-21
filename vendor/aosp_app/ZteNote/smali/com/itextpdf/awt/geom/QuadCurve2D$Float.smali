.class public Lcom/itextpdf/awt/geom/QuadCurve2D$Float;
.super Lcom/itextpdf/awt/geom/QuadCurve2D;
.source "QuadCurve2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/QuadCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# instance fields
.field public ctrlx:F

.field public ctrly:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;-><init>()V

    .line 46
    invoke-virtual/range {p0 .. p6}, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->setCurve(FFFFFF)V

    .line 47
    return-void
.end method


# virtual methods
.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 7

    .prologue
    .line 114
    iget v4, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrlx:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 115
    .local v0, rx0:F
    iget v4, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrly:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 116
    .local v2, ry0:F
    iget v4, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrlx:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 117
    .local v1, rx1:F
    iget v4, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrly:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 118
    .local v3, ry1:F
    new-instance v4, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    sub-float v5, v1, v0

    sub-float v6, v3, v2

    invoke-direct {v4, v0, v2, v5, v6}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v4
.end method

.method public getCtrlPt()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrlx:F

    iget v2, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrly:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCtrlX()D
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrlx:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getCtrlY()D
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrly:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x1:F

    iget v2, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y1:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x2:F

    iget v2, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y2:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setCurve(DDDDDD)V
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 96
    double-to-float v0, p1

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x1:F

    .line 97
    double-to-float v0, p3

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y1:F

    .line 98
    double-to-float v0, p5

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrlx:F

    .line 99
    double-to-float v0, p7

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrly:F

    .line 100
    double-to-float v0, p9

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x2:F

    .line 101
    double-to-float v0, p11

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y2:F

    .line 102
    return-void
.end method

.method public setCurve(FFFFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 105
    iput p1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x1:F

    .line 106
    iput p2, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y1:F

    .line 107
    iput p3, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrlx:F

    .line 108
    iput p4, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->ctrly:F

    .line 109
    iput p5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->x2:F

    .line 110
    iput p6, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Float;->y2:F

    .line 111
    return-void
.end method
