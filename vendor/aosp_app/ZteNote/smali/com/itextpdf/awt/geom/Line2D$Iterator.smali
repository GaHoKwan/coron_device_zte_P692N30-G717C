.class Lcom/itextpdf/awt/geom/Line2D$Iterator;
.super Ljava/lang/Object;
.source "Line2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Line2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iterator"
.end annotation


# instance fields
.field index:I

.field t:Lcom/itextpdf/awt/geom/AffineTransform;

.field final synthetic this$0:Lcom/itextpdf/awt/geom/Line2D;

.field x1:D

.field x2:D

.field y1:D

.field y2:D


# direct methods
.method constructor <init>(Lcom/itextpdf/awt/geom/Line2D;Lcom/itextpdf/awt/geom/Line2D;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 2
    .parameter
    .parameter "l"
    .parameter "at"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->this$0:Lcom/itextpdf/awt/geom/Line2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Line2D;->getX1()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->x1:D

    .line 233
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Line2D;->getY1()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->y1:D

    .line 234
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Line2D;->getX2()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->x2:D

    .line 235
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Line2D;->getY2()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->y2:D

    .line 236
    iput-object p3, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    .line 237
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->index:I

    if-nez v0, :cond_2

    .line 258
    const/4 v6, 0x0

    .line 259
    .local v6, type:I
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->x1:D

    aput-wide v0, p1, v2

    .line 260
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->y1:D

    aput-wide v0, p1, v5

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 269
    :cond_1
    return v6

    .line 262
    .end local v6           #type:I
    :cond_2
    const/4 v6, 0x1

    .line 263
    .restart local v6       #type:I
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->x2:D

    aput-wide v0, p1, v2

    .line 264
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->y2:D

    aput-wide v0, p1, v5

    goto :goto_0
.end method

.method public currentSegment([F)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Line2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->index:I

    if-nez v0, :cond_2

    .line 279
    const/4 v6, 0x0

    .line 280
    .local v6, type:I
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->x1:D

    double-to-float v0, v0

    aput v0, p1, v2

    .line 281
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->y1:D

    double-to-float v0, v0

    aput v0, p1, v5

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 290
    :cond_1
    return v6

    .line 283
    .end local v6           #type:I
    :cond_2
    const/4 v6, 0x1

    .line 284
    .restart local v6       #type:I
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->x2:D

    double-to-float v0, v0

    aput v0, p1, v2

    .line 285
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->y2:D

    double-to-float v0, v0

    aput v0, p1, v5

    goto :goto_0
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 244
    iget v1, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->index:I

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
    .line 248
    iget v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/Line2D$Iterator;->index:I

    .line 249
    return-void
.end method
