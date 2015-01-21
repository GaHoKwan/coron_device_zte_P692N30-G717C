.class Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;
.super Ljava/lang/Object;
.source "CubicCurve2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/CubicCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iterator"
.end annotation


# instance fields
.field c:Lcom/itextpdf/awt/geom/CubicCurve2D;

.field index:I

.field t:Lcom/itextpdf/awt/geom/AffineTransform;

.field final synthetic this$0:Lcom/itextpdf/awt/geom/CubicCurve2D;


# direct methods
.method constructor <init>(Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/CubicCurve2D;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "t"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->this$0:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    .line 276
    iput-object p3, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    .line 277
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->index:I

    if-nez v0, :cond_2

    .line 298
    const/4 v6, 0x0

    .line 299
    .local v6, type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    aput-wide v0, p1, v2

    .line 300
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v0

    aput-wide v0, p1, v3

    .line 301
    const/4 v5, 0x1

    .line 312
    .local v5, count:I
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 315
    :cond_1
    return v6

    .line 303
    .end local v5           #count:I
    .end local v6           #type:I
    :cond_2
    const/4 v6, 0x3

    .line 304
    .restart local v6       #type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v0

    aput-wide v0, p1, v2

    .line 305
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v0

    aput-wide v0, p1, v3

    .line 306
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 307
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 308
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 309
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 310
    const/4 v5, 0x3

    .restart local v5       #count:I
    goto :goto_0
.end method

.method public currentSegment([F)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->index:I

    if-nez v0, :cond_2

    .line 325
    const/4 v6, 0x0

    .line 326
    .local v6, type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX1()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 327
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY1()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v3

    .line 328
    const/4 v5, 0x1

    .line 339
    .local v5, count:I
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 342
    :cond_1
    return v6

    .line 330
    .end local v5           #count:I
    .end local v6           #type:I
    :cond_2
    const/4 v6, 0x3

    .line 331
    .restart local v6       #type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX1()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 332
    iget-object v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY1()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v3

    .line 333
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlX2()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p1, v0

    .line 334
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getCtrlY2()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p1, v0

    .line 335
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getX2()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p1, v0

    .line 336
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/CubicCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/CubicCurve2D;->getY2()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p1, v0

    .line 337
    const/4 v5, 0x3

    .restart local v5       #count:I
    goto :goto_0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget v1, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->index:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/CubicCurve2D$Iterator;->index:I

    .line 289
    return-void
.end method
