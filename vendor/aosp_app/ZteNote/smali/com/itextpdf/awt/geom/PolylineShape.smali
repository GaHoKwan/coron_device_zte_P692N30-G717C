.class public Lcom/itextpdf/awt/geom/PolylineShape;
.super Ljava/lang/Object;
.source "PolylineShape.java"

# interfaces
.implements Ljava/awt/Shape;


# instance fields
.field protected np:I

.field protected x:[I

.field protected y:[I


# direct methods
.method public constructor <init>([I[II)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "nPoints"

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p3, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    .line 72
    iget v0, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    .line 73
    iget v0, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    .line 74
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    return-void
.end method

.method private rect()[I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 104
    iget v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 114
    :goto_0
    return-object v5

    .line 105
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v2, v5, v6

    .local v2, xMin:I
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v4, v5, v6

    .local v4, yMin:I
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v1, v5, v6

    .local v1, xMax:I
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v3, v5, v6

    .line 107
    .local v3, yMax:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    if-ge v0, v5, :cond_5

    .line 108
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v5, v5, v0

    if-ge v5, v2, :cond_3

    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v2, v5, v0

    .line 110
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v5, v5, v0

    if-ge v5, v4, :cond_4

    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v4, v5, v0

    .line 107
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v5, v5, v0

    if-le v5, v1, :cond_1

    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v1, v5, v0

    goto :goto_2

    .line 111
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v5, v5, v0

    if-le v5, v3, :cond_2

    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v3, v5, v0

    goto :goto_3

    .line 114
    :cond_5
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v6, 0x2

    sub-int v7, v1, v2

    aput v7, v5, v6

    const/4 v6, 0x3

    sub-int v7, v3, v4

    aput v7, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public contains(DDDD)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/awt/geom/Point2D;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/awt/geom/Rectangle2D;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/PolylineShape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .locals 10

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/PolylineShape;->rect()[I

    move-result-object v9

    .line 87
    .local v9, r:[I
    if-nez v9, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const/4 v1, 0x0

    aget v1, v9, v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-double v3, v3

    const/4 v5, 0x2

    aget v5, v9, v5

    int-to-double v5, v5

    const/4 v7, 0x3

    aget v7, v9, v7

    int-to-double v7, v7

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    goto :goto_0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;
    .locals 1
    .parameter "at"

    .prologue
    .line 172
    new-instance v0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/awt/geom/PolylineShapeIterator;-><init>(Lcom/itextpdf/awt/geom/PolylineShape;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Ljava/awt/geom/AffineTransform;D)Ljava/awt/geom/PathIterator;
    .locals 1
    .parameter "at"
    .parameter "flatness"

    .prologue
    .line 180
    new-instance v0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/awt/geom/PolylineShapeIterator;-><init>(Lcom/itextpdf/awt/geom/PolylineShape;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public intersects(DDDD)Z
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 147
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/PolylineShape;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result v0

    return v0
.end method

.method public intersects(Ljava/awt/geom/Rectangle2D;)Z
    .locals 11
    .parameter "r"

    .prologue
    const/4 v10, 0x0

    .line 156
    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    if-nez v1, :cond_0

    move v1, v10

    .line 162
    :goto_0
    return v1

    .line 157
    :cond_0
    new-instance v0, Ljava/awt/geom/Line2D$Double;

    iget-object v1, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v1, v1, v10

    int-to-double v1, v1

    iget-object v3, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v3, v3, v10

    int-to-double v3, v3

    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v5, v5, v10

    int-to-double v5, v5

    iget-object v7, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v7, v7, v10

    int-to-double v7, v7

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Line2D$Double;-><init>(DDDD)V

    .line 158
    .local v0, line:Ljava/awt/geom/Line2D;
    const/4 v9, 0x1

    .local v9, i:I
    :goto_1
    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    if-ge v9, v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    add-int/lit8 v2, v9, -0x1

    aget v1, v1, v2

    int-to-double v1, v1

    iget-object v3, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    add-int/lit8 v4, v9, -0x1

    aget v3, v3, v4

    int-to-double v3, v3

    iget-object v5, p0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    aget v5, v5, v9

    int-to-double v5, v5

    iget-object v7, p0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    aget v7, v7, v9

    int-to-double v7, v7

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Line2D;->setLine(DDDD)V

    .line 160
    invoke-virtual {v0, p1}, Ljava/awt/geom/Line2D;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v1, v10

    .line 162
    goto :goto_0
.end method
