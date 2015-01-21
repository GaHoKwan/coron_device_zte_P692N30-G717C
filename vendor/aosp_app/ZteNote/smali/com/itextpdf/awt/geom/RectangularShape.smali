.class public abstract Lcom/itextpdf/awt/geom/RectangularShape;
.super Ljava/lang/Object;
.source "RectangularShape.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/Shape;
.implements Ljava/lang/Cloneable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 139
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public contains(Lcom/itextpdf/awt/geom/Point2D;)Z
    .locals 4
    .parameter "point"

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/RectangularShape;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "rect"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public getBounds()Lcom/itextpdf/awt/geom/Rectangle;
    .locals 13

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getMinX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v9, v0

    .line 126
    .local v9, x1:I
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v11, v0

    .line 127
    .local v11, y1:I
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v10, v0

    .line 128
    .local v10, x2:I
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v12, v0

    .line 129
    .local v12, y2:I
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle;

    int-to-double v1, v9

    int-to-double v3, v11

    sub-int v5, v10, v9

    int-to-double v5, v5

    sub-int v7, v12, v11

    int-to-double v7, v7

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;-><init>(DDDD)V

    return-object v0
.end method

.method public getCenterX()D
    .locals 6

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCenterY()D
    .locals 6

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getFrame()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 9

    .prologue
    .line 68
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getX()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0
.end method

.method public abstract getHeight()D
.end method

.method public getMaxX()D
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMaxY()D
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/RectangularShape;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;D)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 2
    .parameter "t"
    .parameter "flatness"

    .prologue
    .line 133
    new-instance v0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/RectangularShape;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;-><init>(Lcom/itextpdf/awt/geom/PathIterator;D)V

    return-object v0
.end method

.method public abstract getWidth()D
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public intersects(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "rect"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setFrame(DDDD)V
.end method

.method public setFrame(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Dimension2D;)V
    .locals 9
    .parameter "loc"
    .parameter "size"

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->setFrame(DDDD)V

    .line 73
    return-void
.end method

.method public setFrame(Lcom/itextpdf/awt/geom/Rectangle2D;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->setFrame(DDDD)V

    .line 77
    return-void
.end method

.method public setFrameFromCenter(DDDD)V
    .locals 13
    .parameter "centerX"
    .parameter "centerY"
    .parameter "cornerX"
    .parameter "cornerY"

    .prologue
    .line 103
    sub-double v0, p5, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 104
    .local v11, width:D
    sub-double v0, p7, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 105
    .local v9, height:D
    sub-double v1, p1, v11

    sub-double v3, p3, v9

    const-wide/high16 v5, 0x4000

    mul-double/2addr v5, v11

    const-wide/high16 v7, 0x4000

    mul-double/2addr v7, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->setFrame(DDDD)V

    .line 106
    return-void
.end method

.method public setFrameFromCenter(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 9
    .parameter "center"
    .parameter "corner"

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->setFrameFromCenter(DDDD)V

    .line 110
    return-void
.end method

.method public setFrameFromDiagonal(DDDD)V
    .locals 9
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 81
    cmpg-double v0, p1, p5

    if-gez v0, :cond_0

    .line 82
    move-wide v1, p1

    .line 83
    .local v1, rx:D
    sub-double v5, p5, p1

    .line 88
    .local v5, rw:D
    :goto_0
    cmpg-double v0, p3, p7

    if-gez v0, :cond_1

    .line 89
    move-wide v3, p3

    .line 90
    .local v3, ry:D
    sub-double v7, p7, p3

    .local v7, rh:D
    :goto_1
    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->setFrame(DDDD)V

    .line 96
    return-void

    .line 85
    .end local v1           #rx:D
    .end local v3           #ry:D
    .end local v5           #rw:D
    .end local v7           #rh:D
    :cond_0
    move-wide v1, p5

    .line 86
    .restart local v1       #rx:D
    sub-double v5, p1, p5

    .restart local v5       #rw:D
    goto :goto_0

    .line 92
    :cond_1
    move-wide/from16 v3, p7

    .line 93
    .restart local v3       #ry:D
    sub-double v7, p3, p7

    .restart local v7       #rh:D
    goto :goto_1
.end method

.method public setFrameFromDiagonal(Lcom/itextpdf/awt/geom/Point2D;Lcom/itextpdf/awt/geom/Point2D;)V
    .locals 9
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v3

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v5

    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/RectangularShape;->setFrameFromDiagonal(DDDD)V

    .line 100
    return-void
.end method
