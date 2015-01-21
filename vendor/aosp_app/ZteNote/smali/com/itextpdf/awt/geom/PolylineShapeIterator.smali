.class public Lcom/itextpdf/awt/geom/PolylineShapeIterator;
.super Ljava/lang/Object;
.source "PolylineShapeIterator.java"

# interfaces
.implements Ljava/awt/geom/PathIterator;


# instance fields
.field protected affine:Ljava/awt/geom/AffineTransform;

.field protected index:I

.field protected poly:Lcom/itextpdf/awt/geom/PolylineShape;


# direct methods
.method constructor <init>(Lcom/itextpdf/awt/geom/PolylineShape;Ljava/awt/geom/AffineTransform;)V
    .locals 0
    .parameter "l"
    .parameter "at"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->poly:Lcom/itextpdf/awt/geom/PolylineShape;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->affine:Ljava/awt/geom/AffineTransform;

    .line 67
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "line.iterator.out.of.bounds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    if-nez v0, :cond_2

    move v6, v2

    .line 92
    .local v6, type:I
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->poly:Lcom/itextpdf/awt/geom/PolylineShape;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    aget v0, v0, v1

    int-to-double v0, v0

    aput-wide v0, p1, v2

    .line 93
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->poly:Lcom/itextpdf/awt/geom/PolylineShape;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    aget v0, v0, v1

    int-to-double v0, v0

    aput-wide v0, p1, v5

    .line 94
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->affine:Ljava/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 97
    :cond_1
    return v6

    .end local v6           #type:I
    :cond_2
    move v6, v5

    .line 91
    goto :goto_0
.end method

.method public currentSegment([F)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "line.iterator.out.of.bounds"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    if-nez v0, :cond_2

    move v6, v2

    .line 123
    .local v6, type:I
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->poly:Lcom/itextpdf/awt/geom/PolylineShape;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/PolylineShape;->x:[I

    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    aget v0, v0, v1

    int-to-float v0, v0

    aput v0, p1, v2

    .line 124
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->poly:Lcom/itextpdf/awt/geom/PolylineShape;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/PolylineShape;->y:[I

    iget v1, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    aget v0, v0, v1

    int-to-float v0, v0

    aput v0, p1, v5

    .line 125
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->affine:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->affine:Ljava/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 128
    :cond_1
    return v6

    .end local v6           #type:I
    :cond_2
    move v6, v5

    .line 122
    goto :goto_0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    iget-object v1, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->poly:Lcom/itextpdf/awt/geom/PolylineShape;

    iget v1, v1, Lcom/itextpdf/awt/geom/PolylineShape;->np:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/PolylineShapeIterator;->index:I

    .line 159
    return-void
.end method
