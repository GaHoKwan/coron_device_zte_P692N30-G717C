.class public final Lcom/itextpdf/awt/geom/GeneralPath;
.super Ljava/lang/Object;
.source "GeneralPath.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/Shape;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/GeneralPath$Iterator;
    }
.end annotation


# static fields
.field private static final BUFFER_CAPACITY:I = 0xa

.field private static final BUFFER_SIZE:I = 0xa

.field public static final WIND_EVEN_ODD:I = 0x0

.field public static final WIND_NON_ZERO:I = 0x1

.field static pointShift:[I


# instance fields
.field pointSize:I

.field points:[F

.field rule:I

.field typeSize:I

.field types:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/awt/geom/GeneralPath;->pointShift:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;-><init>(II)V

    .line 172
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "rule"

    .prologue
    .line 175
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/awt/geom/GeneralPath;-><init>(II)V

    .line 176
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "rule"
    .parameter "initialCapacity"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/GeneralPath;->setWindingRule(I)V

    .line 180
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    .line 181
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/Shape;)V
    .locals 3
    .parameter "shape"

    .prologue
    .line 185
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/awt/geom/GeneralPath;-><init>(II)V

    .line 186
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/itextpdf/awt/geom/Shape;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v0

    .line 187
    .local v0, p:Lcom/itextpdf/awt/geom/PathIterator;
    invoke-interface {v0}, Lcom/itextpdf/awt/geom/PathIterator;->getWindingRule()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->setWindingRule(I)V

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->append(Lcom/itextpdf/awt/geom/PathIterator;Z)V

    .line 189
    return-void
.end method


# virtual methods
.method public append(Lcom/itextpdf/awt/geom/PathIterator;Z)V
    .locals 13
    .parameter "path"
    .parameter "connect"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 276
    :goto_0
    invoke-interface {p1}, Lcom/itextpdf/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    const/4 v0, 0x6

    new-array v7, v0, [F

    .line 278
    .local v7, coords:[F
    invoke-interface {p1, v7}, Lcom/itextpdf/awt/geom/PathIterator;->currentSegment([F)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    :cond_0
    :goto_1
    invoke-interface {p1}, Lcom/itextpdf/awt/geom/PathIterator;->next()V

    .line 305
    const/4 p2, 0x0

    .line 306
    goto :goto_0

    .line 280
    :pswitch_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    if-nez v0, :cond_2

    .line 281
    :cond_1
    aget v0, v7, v8

    aget v1, v7, v9

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->moveTo(FF)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    if-eq v0, v12, :cond_3

    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    aget v1, v7, v8

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    aget v1, v7, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 292
    :cond_3
    :pswitch_1
    aget v0, v7, v8

    aget v1, v7, v9

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->lineTo(FF)V

    goto :goto_1

    .line 295
    :pswitch_2
    aget v0, v7, v8

    aget v1, v7, v9

    aget v2, v7, v10

    aget v3, v7, v11

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/GeneralPath;->quadTo(FFFF)V

    goto :goto_1

    .line 298
    :pswitch_3
    aget v1, v7, v8

    aget v2, v7, v9

    aget v3, v7, v10

    aget v4, v7, v11

    aget v5, v7, v12

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/awt/geom/GeneralPath;->curveTo(FFFFFF)V

    goto :goto_1

    .line 301
    :pswitch_4
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/GeneralPath;->closePath()V

    goto :goto_1

    .line 307
    .end local v7           #coords:[F
    :cond_4
    return-void

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public append(Lcom/itextpdf/awt/geom/Shape;Z)V
    .locals 2
    .parameter "shape"
    .parameter "connect"

    .prologue
    .line 271
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/itextpdf/awt/geom/Shape;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v0

    .line 272
    .local v0, p:Lcom/itextpdf/awt/geom/PathIterator;
    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/awt/geom/GeneralPath;->append(Lcom/itextpdf/awt/geom/PathIterator;Z)V

    .line 273
    return-void
.end method

.method checkBuf(IZ)V
    .locals 4
    .parameter "pointCount"
    .parameter "checkMove"

    .prologue
    const/4 v3, 0x0

    .line 208
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Lcom/itextpdf/awt/geom/IllegalPathStateException;

    const-string v2, "awt.20A"

    invoke-static {v2}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/awt/geom/IllegalPathStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    iget-object v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 213
    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v1, v1, 0xa

    new-array v0, v1, [B

    .line 214
    .local v0, tmp:[B
    iget-object v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iput-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    .line 217
    .end local v0           #tmp:[B
    :cond_1
    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 218
    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    const/16 v2, 0x14

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    new-array v0, v1, [F

    .line 219
    .local v0, tmp:[F
    iget-object v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iput-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    .line 222
    .end local v0           #tmp:[F
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 425
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/awt/geom/GeneralPath;

    .line 426
    .local v1, p:Lcom/itextpdf/awt/geom/GeneralPath;
    iget-object v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v1, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    .line 427
    iget-object v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v1, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    return-object v1

    .line 429
    .end local v1           #p:Lcom/itextpdf/awt/geom/GeneralPath;
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public closePath()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 264
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    if-eq v0, v3, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->checkBuf(IZ)V

    .line 266
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    aput-byte v3, v0, v1

    .line 268
    :cond_1
    return-void
.end method

.method public contains(DD)Z
    .locals 1
    .parameter "px"
    .parameter "py"

    .prologue
    .line 389
    invoke-static {p0, p1, p2, p3, p4}, Lcom/itextpdf/awt/geom/gl/Crossing;->crossShape(Lcom/itextpdf/awt/geom/Shape;DD)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/GeneralPath;->isInside(I)Z

    move-result v0

    return v0
.end method

.method public contains(DDDD)Z
    .locals 2
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 393
    invoke-static/range {p0 .. p8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I

    move-result v0

    .line 394
    .local v0, cross:I
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/GeneralPath;->isInside(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Point2D;)Z
    .locals 4
    .parameter "p"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/awt/geom/GeneralPath;->contains(DD)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/GeneralPath;->contains(DDDD)Z

    move-result v0

    return v0
.end method

.method public createTransformedShape(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/Shape;
    .locals 1
    .parameter "t"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/GeneralPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/awt/geom/GeneralPath;

    .line 338
    .local v0, p:Lcom/itextpdf/awt/geom/GeneralPath;
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/itextpdf/awt/geom/GeneralPath;->transform(Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 341
    :cond_0
    return-object v0
.end method

.method public curveTo(FFFFFF)V
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 253
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->checkBuf(IZ)V

    .line 254
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 255
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p1, v0, v1

    .line 256
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p2, v0, v1

    .line 257
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p3, v0, v1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p4, v0, v1

    .line 259
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p5, v0, v1

    .line 260
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p6, v0, v1

    .line 261
    return-void
.end method

.method public getBounds()Lcom/itextpdf/awt/geom/Rectangle;
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/GeneralPath;->getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/Rectangle2D;->getBounds()Lcom/itextpdf/awt/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getBounds2D()Lcom/itextpdf/awt/geom/Rectangle2D;
    .locals 11

    .prologue
    .line 346
    iget v8, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    if-nez v8, :cond_1

    .line 347
    const/4 v5, 0x0

    .local v5, ry2:F
    move v3, v5

    .local v3, rx2:F
    move v4, v5

    .local v4, ry1:F
    move v2, v5

    .line 369
    .local v2, rx1:F
    :cond_0
    new-instance v8, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    sub-float v9, v3, v2

    sub-float v10, v5, v4

    invoke-direct {v8, v2, v4, v9, v10}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v8

    .line 349
    .end local v2           #rx1:F
    .end local v3           #rx2:F
    .end local v4           #ry1:F
    .end local v5           #ry2:F
    :cond_1
    iget v8, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v0, v8, -0x1

    .line 350
    .local v0, i:I
    iget-object v8, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    aget v5, v8, v0

    .restart local v5       #ry2:F
    move v4, v5

    .line 351
    .restart local v4       #ry1:F
    iget-object v8, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v3, v8, v1

    .restart local v3       #rx2:F
    move v2, v3

    .restart local v2       #rx1:F
    move v1, v0

    .line 352
    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_2
    :goto_0
    if-lez v1, :cond_0

    .line 353
    iget-object v8, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    aget v7, v8, v1

    .line 354
    .local v7, y:F
    iget-object v8, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget v6, v8, v0

    .line 355
    .local v6, x:F
    cmpg-float v8, v6, v2

    if-gez v8, :cond_4

    .line 356
    move v2, v6

    .line 361
    :cond_3
    :goto_1
    cmpg-float v8, v7, v4

    if-gez v8, :cond_5

    .line 362
    move v4, v7

    goto :goto_0

    .line 358
    :cond_4
    cmpl-float v8, v6, v3

    if-lez v8, :cond_3

    .line 359
    move v3, v6

    goto :goto_1

    .line 364
    :cond_5
    cmpl-float v8, v7, v5

    if-lez v8, :cond_2

    .line 365
    move v5, v7

    goto :goto_0
.end method

.method public getCurrentPoint()Lcom/itextpdf/awt/geom/Point2D;
    .locals 7

    .prologue
    .line 310
    iget v3, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    if-nez v3, :cond_0

    .line 311
    const/4 v3, 0x0

    .line 324
    :goto_0
    return-object v3

    .line 313
    :cond_0
    iget v3, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v1, v3, -0x2

    .line 314
    .local v1, j:I
    iget-object v3, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v4, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 316
    iget v3, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v0, v3, -0x2

    .local v0, i:I
    :goto_1
    if-lez v0, :cond_1

    .line 317
    iget-object v3, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    aget-byte v2, v3, v0

    .line 318
    .local v2, type:I
    if-nez v2, :cond_2

    .line 324
    .end local v0           #i:I
    .end local v2           #type:I
    :cond_1
    new-instance v3, Lcom/itextpdf/awt/geom/Point2D$Float;

    iget-object v4, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    aget v4, v4, v1

    iget-object v5, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/awt/geom/Point2D$Float;-><init>(FF)V

    goto :goto_0

    .line 321
    .restart local v0       #i:I
    .restart local v2       #type:I
    :cond_2
    sget-object v3, Lcom/itextpdf/awt/geom/GeneralPath;->pointShift:[I

    aget v3, v3, v2

    sub-int/2addr v1, v3

    .line 316
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 1
    .parameter "t"

    .prologue
    .line 415
    new-instance v0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;-><init>(Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;D)Lcom/itextpdf/awt/geom/PathIterator;
    .locals 2
    .parameter "t"
    .parameter "flatness"

    .prologue
    .line 419
    new-instance v0, Lcom/itextpdf/awt/geom/FlatteningPathIterator;

    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/GeneralPath;->getPathIterator(Lcom/itextpdf/awt/geom/AffineTransform;)Lcom/itextpdf/awt/geom/PathIterator;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/itextpdf/awt/geom/FlatteningPathIterator;-><init>(Lcom/itextpdf/awt/geom/PathIterator;D)V

    return-object v0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->rule:I

    return v0
.end method

.method public intersects(DDDD)Z
    .locals 2
    .parameter "rx"
    .parameter "ry"
    .parameter "rw"
    .parameter "rh"

    .prologue
    .line 398
    invoke-static/range {p0 .. p8}, Lcom/itextpdf/awt/geom/gl/Crossing;->intersectShape(Lcom/itextpdf/awt/geom/Shape;DDDD)I

    move-result v0

    .line 399
    .local v0, cross:I
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/geom/GeneralPath;->isInside(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public intersects(Lcom/itextpdf/awt/geom/Rectangle2D;)Z
    .locals 9
    .parameter "r"

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/awt/geom/GeneralPath;->intersects(DDDD)Z

    move-result v0

    return v0
.end method

.method isInside(I)Z
    .locals 2
    .parameter "cross"

    .prologue
    .line 382
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->rule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 383
    invoke-static {p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->isInsideNonZero(I)Z

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/itextpdf/awt/geom/gl/Crossing;->isInsideEvenOdd(I)Z

    move-result v0

    goto :goto_0
.end method

.method public lineTo(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 237
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/awt/geom/GeneralPath;->checkBuf(IZ)V

    .line 238
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    aput-byte v3, v0, v1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p1, v0, v1

    .line 240
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p2, v0, v1

    .line 241
    return-void
.end method

.method public moveTo(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 225
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v1, v1, -0x2

    aput p1, v0, v1

    .line 227
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v1, v1, -0x1

    aput p2, v0, v1

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/awt/geom/GeneralPath;->checkBuf(IZ)V

    .line 230
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    aput-byte v3, v0, v1

    .line 231
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p1, v0, v1

    .line 232
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p2, v0, v1

    goto :goto_0
.end method

.method public quadTo(FFFF)V
    .locals 3
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 244
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/awt/geom/GeneralPath;->checkBuf(IZ)V

    .line 245
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 246
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p1, v0, v1

    .line 247
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p2, v0, v1

    .line 248
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p3, v0, v1

    .line 249
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    aput p4, v0, v1

    .line 250
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    .line 329
    iput v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    .line 330
    return-void
.end method

.method public setWindingRule(I)V
    .locals 2
    .parameter "rule"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "awt.209"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iput p1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->rule:I

    .line 197
    return-void
.end method

.method public transform(Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 6
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v1, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget-object v3, p0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath;->pointSize:I

    div-int/lit8 v5, v0, 0x2

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 334
    return-void
.end method
