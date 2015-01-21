.class public Lcom/itextpdf/awt/geom/QuadCurve2D$Double;
.super Lcom/itextpdf/awt/geom/QuadCurve2D;
.source "QuadCurve2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/QuadCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# instance fields
.field public ctrlx:D

.field public ctrly:D

.field public x1:D

.field public x2:D

.field public y1:D

.field public y2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;-><init>()V

    .line 132
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D;-><init>()V

    .line 135
    invoke-virtual/range {p0 .. p12}, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->setCurve(DDDDDD)V

    .line 136
    return-void
.end method


# virtual methods
.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 13

    .prologue
    .line 194
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrlx:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 195
    .local v1, rx0:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrly:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 196
    .local v3, ry0:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrlx:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    .line 197
    .local v9, rx1:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrly:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 198
    .local v11, ry1:D
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    sub-double v5, v9, v1

    sub-double v7, v11, v3

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getCtrlPt()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 175
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrlx:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrly:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getCtrlX()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrlx:D

    return-wide v0
.end method

.method public getCtrlY()D
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrly:D

    return-wide v0
.end method

.method public getP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 170
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x1:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y1:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 180
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x2:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y2:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x1:D

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x2:D

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y1:D

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y2:D

    return-wide v0
.end method

.method public setCurve(DDDDDD)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "ctrlx"
    .parameter "ctrly"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x1:D

    .line 186
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y1:D

    .line 187
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrlx:D

    .line 188
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->ctrly:D

    .line 189
    iput-wide p9, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->x2:D

    .line 190
    iput-wide p11, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Double;->y2:D

    .line 191
    return-void
.end method
