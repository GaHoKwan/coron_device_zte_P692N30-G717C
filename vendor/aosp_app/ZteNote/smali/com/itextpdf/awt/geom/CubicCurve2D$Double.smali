.class public Lcom/itextpdf/awt/geom/CubicCurve2D$Double;
.super Lcom/itextpdf/awt/geom/CubicCurve2D;
.source "CubicCurve2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/CubicCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Double"
.end annotation


# instance fields
.field public ctrlx1:D

.field public ctrlx2:D

.field public ctrly1:D

.field public ctrly2:D

.field public x1:D

.field public x2:D

.field public y1:D

.field public y2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;-><init>()V

    .line 159
    return-void
.end method

.method public constructor <init>(DDDDDDDD)V
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
    .line 162
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D;-><init>()V

    .line 163
    invoke-virtual/range {p0 .. p16}, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->setCurve(DDDDDDDD)V

    .line 164
    return-void
.end method


# virtual methods
.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 15

    .prologue
    .line 241
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx1:D

    iget-wide v13, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx2:D

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 242
    .local v1, rx1:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly1:D

    iget-wide v13, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly2:D

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 243
    .local v3, ry1:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx1:D

    iget-wide v13, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx2:D

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    .line 244
    .local v9, rx2:D
    iget-wide v5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y1:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y2:D

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly1:D

    iget-wide v13, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly2:D

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 245
    .local v11, ry2:D
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    sub-double v5, v9, v1

    sub-double v7, v11, v3

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public getCtrlP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 213
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx1:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly1:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getCtrlP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 218
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx2:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly2:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getCtrlX1()D
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx1:D

    return-wide v0
.end method

.method public getCtrlX2()D
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx2:D

    return-wide v0
.end method

.method public getCtrlY1()D
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly1:D

    return-wide v0
.end method

.method public getCtrlY2()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly2:D

    return-wide v0
.end method

.method public getP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 208
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x1:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y1:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 5

    .prologue
    .line 223
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Double;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x2:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y2:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x1:D

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x2:D

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y1:D

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y2:D

    return-wide v0
.end method

.method public setCurve(DDDDDDDD)V
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
    .line 230
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x1:D

    .line 231
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y1:D

    .line 232
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx1:D

    .line 233
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly1:D

    .line 234
    iput-wide p9, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrlx2:D

    .line 235
    iput-wide p11, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->ctrly2:D

    .line 236
    iput-wide p13, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->x2:D

    .line 237
    iput-wide p15, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Double;->y2:D

    .line 238
    return-void
.end method
