.class Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;
.super Ljava/lang/Object;
.source "QuadCurve2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/QuadCurve2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iterator"
.end annotation


# instance fields
.field c:Lcom/itextpdf/awt/geom/QuadCurve2D;

.field index:I

.field t:Lcom/itextpdf/awt/geom/AffineTransform;

.field final synthetic this$0:Lcom/itextpdf/awt/geom/QuadCurve2D;


# direct methods
.method constructor <init>(Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/QuadCurve2D;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 0
    .parameter
    .parameter "q"
    .parameter "t"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->this$0:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p2, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    .line 229
    iput-object p3, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    .line 230
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->index:I

    if-nez v0, :cond_2

    .line 252
    const/4 v6, 0x0

    .line 253
    .local v6, type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    aput-wide v0, p1, v2

    .line 254
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v0

    aput-wide v0, p1, v3

    .line 255
    const/4 v5, 0x1

    .line 264
    .local v5, count:I
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 267
    :cond_1
    return v6

    .line 257
    .end local v5           #count:I
    .end local v6           #type:I
    :cond_2
    const/4 v6, 0x2

    .line 258
    .restart local v6       #type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v0

    aput-wide v0, p1, v2

    .line 259
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v0

    aput-wide v0, p1, v3

    .line 260
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 261
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 262
    const/4 v5, 0x2

    .restart local v5       #count:I
    goto :goto_0
.end method

.method public currentSegment([F)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->index:I

    if-nez v0, :cond_2

    .line 278
    const/4 v6, 0x0

    .line 279
    .local v6, type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX1()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 280
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY1()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v3

    .line 281
    const/4 v5, 0x1

    .line 290
    .local v5, count:I
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 293
    :cond_1
    return v6

    .line 283
    .end local v5           #count:I
    .end local v6           #type:I
    :cond_2
    const/4 v6, 0x2

    .line 284
    .restart local v6       #type:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlX()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v2

    .line 285
    iget-object v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getCtrlY()D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v3

    .line 286
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getX2()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p1, v0

    .line 287
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->c:Lcom/itextpdf/awt/geom/QuadCurve2D;

    invoke-virtual {v1}, Lcom/itextpdf/awt/geom/QuadCurve2D;->getY2()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p1, v0

    .line 288
    const/4 v5, 0x2

    .restart local v5       #count:I
    goto :goto_0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 237
    iget v1, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->index:I

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
    .line 241
    iget v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/QuadCurve2D$Iterator;->index:I

    .line 242
    return-void
.end method
