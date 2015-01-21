.class public Lcom/itextpdf/awt/geom/CubicCurve2D$Float;
.super Lcom/itextpdf/awt/geom/CubicCurve2D;
.source "CubicCurve2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/CubicCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# instance fields
.field public ctrlx1:F

.field public ctrlx2:F

.field public ctrly1:F

.field public ctrly2:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx1"
    .parameter "ctrly1"
    .parameter "ctrlx2"
    .parameter "ctrly2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;-><init>()V

    .line 48
    invoke-virtual/range {p0 .. p8}, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->setCurve(FFFFFFFF)V

    .line 49
    return-void
.end method


# virtual methods
.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 7

    .prologue
    .line 139
    iget v4, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    iget v6, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 140
    .local v0, rx1:F
    iget v4, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly1:F

    iget v6, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 141
    .local v2, ry1:F
    iget v4, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    iget v6, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 142
    .local v1, rx2:F
    iget v4, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y2:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly1:F

    iget v6, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly2:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 143
    .local v3, ry2:F
    new-instance v4, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    sub-float v5, v1, v0

    sub-float v6, v3, v2

    invoke-direct {v4, v0, v2, v5, v6}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v4
.end method

.method public getCtrlP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    iget v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly1:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCtrlP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    iget v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly2:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCtrlX1()D
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getCtrlX2()D
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getCtrlY1()D
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getCtrlY2()D
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x1:F

    iget v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y1:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x2:F

    iget v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y2:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setCurve(DDDDDDDD)V
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx1"
    .parameter "ctrly1"
    .parameter "ctrlx2"
    .parameter "ctrly2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 115
    double-to-float v2, p1

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x1:F

    .line 116
    double-to-float v2, p3

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y1:F

    .line 117
    double-to-float v2, p5

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    .line 118
    double-to-float v2, p7

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly1:F

    .line 119
    double-to-float v2, p9

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    .line 120
    double-to-float v2, p11

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly2:F

    .line 121
    move-wide/from16 v0, p13

    double-to-float v2, v0

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x2:F

    .line 122
    move-wide/from16 v0, p15

    double-to-float v2, v0

    iput v2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y2:F

    .line 123
    return-void
.end method

.method public setCurve(FFFFFFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx1"
    .parameter "ctrly1"
    .parameter "ctrlx2"
    .parameter "ctrly2"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 128
    iput p1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x1:F

    .line 129
    iput p2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y1:F

    .line 130
    iput p3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx1:F

    .line 131
    iput p4, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly1:F

    .line 132
    iput p5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrlx2:F

    .line 133
    iput p6, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->ctrly2:F

    .line 134
    iput p7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->x2:F

    .line 135
    iput p8, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Float;->y2:F

    .line 136
    return-void
.end method
