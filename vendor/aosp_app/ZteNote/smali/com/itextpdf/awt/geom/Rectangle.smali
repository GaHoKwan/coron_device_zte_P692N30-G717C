.class public Lcom/itextpdf/awt/geom/Rectangle;
.super Lcom/itextpdf/awt/geom/Rectangle2D;
.source "Rectangle.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/Shape;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3c4f95fae535958cL


# instance fields
.field public height:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 38
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(IIII)V

    .line 39
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 50
    invoke-virtual/range {p0 .. p8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 51
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 54
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(IIII)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Dimension;)V
    .locals 9
    .parameter "d"

    .prologue
    const-wide/16 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 67
    iget-wide v5, p1, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v7, p1, Lcom/itextpdf/awt/geom/Dimension;->height:D

    move-object v0, p0

    move-wide v3, v1

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Point;)V
    .locals 9
    .parameter "p"

    .prologue
    const-wide/16 v5, 0x0

    .line 41
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 42
    iget-wide v1, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v3, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    move-object v0, p0

    move-wide v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Point;Lcom/itextpdf/awt/geom/Dimension;)V
    .locals 9
    .parameter "p"
    .parameter "d"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 46
    iget-wide v1, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v3, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    iget-wide v5, p2, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v7, p2, Lcom/itextpdf/awt/geom/Dimension;->height:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Rectangle;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 58
    iget-wide v1, p1, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v3, p1, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v5, p1, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    iget-wide v7, p1, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Rectangle;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/itextpdf/awt/geom/Rectangle2D;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 63
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v0

    float-to-double v1, v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v0

    float-to-double v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 64
    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 15
    .parameter "px"
    .parameter "py"

    .prologue
    .line 182
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-wide/from16 v0, p1

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 183
    .local v3, x1:D
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double/2addr v7, v9

    move-wide/from16 v0, p1

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 184
    .local v11, x2:D
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-wide/from16 v0, p3

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 185
    .local v5, y1:D
    iget-wide v7, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v9, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double/2addr v7, v9

    move-wide/from16 v0, p3

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .line 186
    .local v13, y2:D
    sub-double v7, v11, v3

    sub-double v9, v13, v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 187
    return-void
.end method

.method public add(II)V
    .locals 4
    .parameter "px"
    .parameter "py"

    .prologue
    .line 179
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->add(DD)V

    .line 180
    return-void
.end method

.method public add(Lcom/itextpdf/awt/geom/Point;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 190
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->add(DD)V

    .line 191
    return-void
.end method

.method public add(Lcom/itextpdf/awt/geom/Rectangle;)V
    .locals 16
    .parameter "r"

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 195
    .local v2, x1:D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 196
    .local v10, x2:D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 197
    .local v4, y1:D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 198
    .local v12, y2:D
    sub-double v6, v10, v2

    sub-double v8, v12, v4

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 199
    return-void
.end method

.method public contains(DD)Z
    .locals 3
    .parameter "px"
    .parameter "py"

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    cmpg-double v1, p3, v1

    if-ltz v1, :cond_0

    .line 211
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    sub-double/2addr p1, v1

    .line 212
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    sub-double/2addr p3, v1

    .line 213
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    cmpg-double v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public contains(DDDD)Z
    .locals 6
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    const-wide v4, 0x3f847ae147ae147bL

    .line 225
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/Rectangle;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    add-double v0, p1, p5

    sub-double/2addr v0, v4

    add-double v2, p3, p7

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(II)Z
    .locals 4
    .parameter "px"
    .parameter "py"

    .prologue
    .line 202
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(IIII)Z
    .locals 2
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p1, p3

    add-int/lit8 v0, v0, -0x1

    add-int v1, p2, p4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/Rectangle;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Point;)Z
    .locals 4
    .parameter "p"

    .prologue
    .line 217
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Rectangle;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 229
    iget-wide v1, p1, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v3, p1, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v5, p1, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    iget-wide v7, p1, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public createIntersection(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 2
    .parameter "r"

    .prologue
    .line 234
    instance-of v1, p1, Lcom/itextpdf/awt/geom/Rectangle;

    if-eqz v1, :cond_0

    .line 235
    check-cast p1, Lcom/itextpdf/awt/geom/Rectangle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/Rectangle;->intersection(Lcom/itextpdf/awt/geom/Rectangle;)Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 237
    .restart local p1
    :cond_0
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>()V

    .line 238
    .local v0, dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    invoke-static {p0, p1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->intersect(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    goto :goto_0
.end method

.method public createUnion(Lcom/itextpdf/awt/geom/Rectangle2D;)Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 2
    .parameter "r"

    .prologue
    .line 283
    instance-of v1, p1, Lcom/itextpdf/awt/geom/Rectangle;

    if-eqz v1, :cond_0

    .line 284
    check-cast p1, Lcom/itextpdf/awt/geom/Rectangle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/Rectangle;->union(Lcom/itextpdf/awt/geom/Rectangle;)Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    .line 286
    .restart local p1
    :cond_0
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Lcom/itextpdf/awt/geom/Rectangle2D$Double;-><init>()V

    .line 287
    .local v0, dst:Lcom/itextpdf/awt/geom/Rectangle2D;
    invoke-static {p0, p1, v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->union(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 299
    if-ne p1, p0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    instance-of v3, p1, Lcom/itextpdf/awt/geom/Rectangle;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 303
    check-cast v0, Lcom/itextpdf/awt/geom/Rectangle;

    .line 304
    .local v0, r:Lcom/itextpdf/awt/geom/Rectangle;
    iget-wide v3, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, v0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #r:Lcom/itextpdf/awt/geom/Rectangle;
    :cond_3
    move v1, v2

    .line 306
    goto :goto_0
.end method

.method public getBounds()Lcom/itextpdf/awt/geom/Rectangle;
    .locals 9

    .prologue
    .line 138
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v5, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    iget-wide v7, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;-><init>(DDDD)V

    return-object v0
.end method

.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle;->getBounds()Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    return-wide v0
.end method

.method public getLocation()Lcom/itextpdf/awt/geom/Point;
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lcom/itextpdf/awt/geom/Point;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Point;-><init>(DD)V

    return-object v0
.end method

.method public getSize()Lcom/itextpdf/awt/geom/Dimension;
    .locals 5

    .prologue
    .line 96
    new-instance v0, Lcom/itextpdf/awt/geom/Dimension;

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/awt/geom/Dimension;-><init>(DD)V

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    return-wide v0
.end method

.method public grow(DD)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    .line 165
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    sub-double/2addr v0, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    .line 166
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    .line 167
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double v2, p3, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    .line 168
    return-void
.end method

.method public grow(II)V
    .locals 4
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 161
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->translate(DD)V

    .line 162
    return-void
.end method

.method public intersection(Lcom/itextpdf/awt/geom/Rectangle;)Lcom/itextpdf/awt/geom/Rectangle;
    .locals 16
    .parameter "r"

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 244
    .local v2, x1:D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 245
    .local v4, y1:D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 246
    .local v10, x2:D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double/2addr v8, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 247
    .local v12, y2:D
    new-instance v1, Lcom/itextpdf/awt/geom/Rectangle;

    sub-double v6, v10, v2

    sub-double v8, v12, v4

    invoke-direct/range {v1 .. v9}, Lcom/itextpdf/awt/geom/Rectangle;-><init>(DDDD)V

    return-object v1
.end method

.method public intersects(Lcom/itextpdf/awt/geom/Rectangle;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/Rectangle;->intersection(Lcom/itextpdf/awt/geom/Rectangle;)Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outcode(DD)I
    .locals 7
    .parameter "px"
    .parameter "py"

    .prologue
    const-wide/16 v5, 0x0

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, code:I
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_2

    .line 259
    or-int/lit8 v0, v0, 0x5

    .line 268
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_4

    .line 269
    or-int/lit8 v0, v0, 0xa

    .line 278
    :cond_1
    :goto_1
    return v0

    .line 261
    :cond_2
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    cmpg-double v1, p1, v1

    if-gez v1, :cond_3

    .line 262
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_3
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    add-double/2addr v1, v3

    cmpl-double v1, p1, v1

    if-lez v1, :cond_0

    .line 265
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 271
    :cond_4
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    cmpg-double v1, p3, v1

    if-gez v1, :cond_5

    .line 272
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 274
    :cond_5
    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    add-double/2addr v1, v3

    cmpl-double v1, p3, v1

    if-lez v1, :cond_1

    .line 275
    or-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public setBounds(DDDD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    .line 151
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    .line 152
    iput-wide p7, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    .line 153
    iput-wide p5, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    .line 154
    return-void
.end method

.method public setBounds(IIII)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 147
    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 148
    return-void
.end method

.method public setBounds(Lcom/itextpdf/awt/geom/Rectangle;)V
    .locals 9
    .parameter "r"

    .prologue
    .line 157
    iget-wide v1, p1, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    iget-wide v3, p1, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    iget-wide v5, p1, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    iget-wide v7, p1, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(DDDD)V

    .line 158
    return-void
.end method

.method public setLocation(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    .line 120
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    .line 121
    return-void
.end method

.method public setLocation(II)V
    .locals 4
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 116
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->setLocation(DD)V

    .line 117
    return-void
.end method

.method public setLocation(Lcom/itextpdf/awt/geom/Point;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 124
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Point;->x:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Point;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->setLocation(DD)V

    .line 125
    return-void
.end method

.method public setRect(DDDD)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 129
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 130
    .local v0, x1:I
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 131
    .local v2, y1:I
    add-double v4, p1, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 132
    .local v1, x2:I
    add-double v4, p3, p7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 133
    .local v3, y2:I
    sub-int v4, v1, v0

    sub-int v5, v3, v2

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/itextpdf/awt/geom/Rectangle;->setBounds(IIII)V

    .line 134
    return-void
.end method

.method public setSize(DD)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    .line 104
    iput-wide p3, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    .line 105
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 100
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->setSize(DD)V

    .line 101
    return-void
.end method

.method public setSize(Lcom/itextpdf/awt/geom/Dimension;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 108
    iget-wide v0, p1, Lcom/itextpdf/awt/geom/Dimension;->width:D

    iget-wide v2, p1, Lcom/itextpdf/awt/geom/Dimension;->height:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->setSize(DD)V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->width:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/itextpdf/awt/geom/Rectangle;->height:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(DD)V
    .locals 2
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->x:D

    .line 175
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle;->y:D

    .line 176
    return-void
.end method

.method public translate(II)V
    .locals 4
    .parameter "mx"
    .parameter "my"

    .prologue
    .line 171
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/Rectangle;->translate(DD)V

    .line 172
    return-void
.end method

.method public union(Lcom/itextpdf/awt/geom/Rectangle;)Lcom/itextpdf/awt/geom/Rectangle;
    .locals 1
    .parameter "r"

    .prologue
    .line 292
    new-instance v0, Lcom/itextpdf/awt/geom/Rectangle;

    invoke-direct {v0, p0}, Lcom/itextpdf/awt/geom/Rectangle;-><init>(Lcom/itextpdf/awt/geom/Rectangle;)V

    .line 293
    .local v0, dst:Lcom/itextpdf/awt/geom/Rectangle;
    invoke-virtual {v0, p1}, Lcom/itextpdf/awt/geom/Rectangle;->add(Lcom/itextpdf/awt/geom/Rectangle;)V

    .line 294
    return-object v0
.end method
