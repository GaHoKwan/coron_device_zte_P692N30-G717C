.class public Lcom/itextpdf/awt/geom/Line2D$Float;
.super Lcom/itextpdf/awt/geom/Line2D;
.source "Line2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Line2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Float"
.end annotation


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Line2D;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Line2D;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Line2D$Float;->setLine(FFFF)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 0
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Line2D;-><init>()V

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/Line2D$Float;->setLine(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 6

    .prologue
    .line 97
    iget v4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 98
    iget v2, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    .line 99
    .local v2, rx:F
    iget v4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    iget v5, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    sub-float v1, v4, v5

    .line 104
    .local v1, rw:F
    :goto_0
    iget v4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 105
    iget v3, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    .line 106
    .local v3, ry:F
    iget v4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    iget v5, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    sub-float v0, v4, v5

    .line 111
    .local v0, rh:F
    :goto_1
    new-instance v4, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v4

    .line 101
    .end local v0           #rh:F
    .end local v1           #rw:F
    .end local v2           #rx:F
    .end local v3           #ry:F
    :cond_0
    iget v2, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    .line 102
    .restart local v2       #rx:F
    iget v4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    sub-float v1, v4, v5

    .restart local v1       #rw:F
    goto :goto_0

    .line 108
    :cond_1
    iget v3, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    .line 109
    .restart local v3       #ry:F
    iget v4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    iget v5, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    sub-float v0, v4, v5

    .restart local v0       #rh:F
    goto :goto_1
.end method

.method public getP1()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    iget v2, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getP2()Lcom/itextpdf/awt/geom/Point2D;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    iget v2, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getX1()D
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getX2()D
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY1()D
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getY2()D
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setLine(DDDD)V
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 82
    double-to-float v0, p1

    iput v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    .line 83
    double-to-float v0, p3

    iput v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    .line 84
    double-to-float v0, p5

    iput v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    .line 85
    double-to-float v0, p7

    iput v0, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    .line 86
    return-void
.end method

.method public setLine(FFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 89
    iput p1, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x1:F

    .line 90
    iput p2, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y1:F

    .line 91
    iput p3, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->x2:F

    .line 92
    iput p4, p0, Lcom/itextpdf/awt/geom/Line2D$Float;->y2:F

    .line 93
    return-void
.end method
