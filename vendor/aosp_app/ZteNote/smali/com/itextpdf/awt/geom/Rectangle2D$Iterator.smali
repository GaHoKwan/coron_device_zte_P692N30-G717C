.class Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;
.super Ljava/lang/Object;
.source "Rectangle2D.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/Rectangle2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iterator"
.end annotation


# instance fields
.field height:D

.field index:I

.field t:Lcom/itextpdf/awt/geom/AffineTransform;

.field final synthetic this$0:Lcom/itextpdf/awt/geom/Rectangle2D;

.field width:D

.field x:D

.field y:D


# direct methods
.method constructor <init>(Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/Rectangle2D;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 4
    .parameter
    .parameter "r"
    .parameter "at"

    .prologue
    const-wide/16 v2, 0x0

    .line 314
    iput-object p1, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->this$0:Lcom/itextpdf/awt/geom/Rectangle2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Rectangle2D;->getX()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    .line 316
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Rectangle2D;->getY()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    .line 317
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->width:D

    .line 318
    invoke-virtual {p2}, Lcom/itextpdf/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->height:D

    .line 319
    iput-object p3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    .line 320
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->width:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->height:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 321
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    .line 323
    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 342
    const/4 v6, 0x4

    .line 373
    :cond_1
    :goto_0
    return v6

    .line 345
    :cond_2
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    if-nez v0, :cond_3

    .line 346
    const/4 v6, 0x0

    .line 347
    .local v6, type:I
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    aput-wide v0, p1, v2

    .line 348
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    aput-wide v0, p1, v5

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([DI[DII)V

    goto :goto_0

    .line 350
    .end local v6           #type:I
    :cond_3
    const/4 v6, 0x1

    .line 351
    .restart local v6       #type:I
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 353
    :pswitch_0
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->width:D

    add-double/2addr v0, v3

    aput-wide v0, p1, v2

    .line 354
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    aput-wide v0, p1, v5

    goto :goto_1

    .line 357
    :pswitch_1
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->width:D

    add-double/2addr v0, v3

    aput-wide v0, p1, v2

    .line 358
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->height:D

    add-double/2addr v0, v3

    aput-wide v0, p1, v5

    goto :goto_1

    .line 361
    :pswitch_2
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    aput-wide v0, p1, v2

    .line 362
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->height:D

    add-double/2addr v0, v3

    aput-wide v0, p1, v5

    goto :goto_1

    .line 365
    :pswitch_3
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    aput-wide v0, p1, v2

    .line 366
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    aput-wide v0, p1, v5

    goto :goto_1

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public currentSegment([F)I
    .locals 7
    .parameter "coords"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 381
    const/4 v6, 0x4

    .line 412
    :cond_1
    :goto_0
    return v6

    .line 384
    :cond_2
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    if-nez v0, :cond_3

    .line 385
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    double-to-float v0, v0

    aput v0, p1, v2

    .line 386
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    double-to-float v0, v0

    aput v0, p1, v5

    .line 387
    const/4 v6, 0x0

    .line 409
    .local v6, type:I
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([FI[FII)V

    goto :goto_0

    .line 389
    .end local v6           #type:I
    :cond_3
    const/4 v6, 0x1

    .line 390
    .restart local v6       #type:I
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 392
    :pswitch_0
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->width:D

    add-double/2addr v0, v3

    double-to-float v0, v0

    aput v0, p1, v2

    .line 393
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    double-to-float v0, v0

    aput v0, p1, v5

    goto :goto_1

    .line 396
    :pswitch_1
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->width:D

    add-double/2addr v0, v3

    double-to-float v0, v0

    aput v0, p1, v2

    .line 397
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->height:D

    add-double/2addr v0, v3

    double-to-float v0, v0

    aput v0, p1, v5

    goto :goto_1

    .line 400
    :pswitch_2
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    double-to-float v0, v0

    aput v0, p1, v2

    .line 401
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    iget-wide v3, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->height:D

    add-double/2addr v0, v3

    double-to-float v0, v0

    aput v0, p1, v5

    goto :goto_1

    .line 404
    :pswitch_3
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->x:D

    double-to-float v0, v0

    aput v0, p1, v2

    .line 405
    iget-wide v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->y:D

    double-to-float v0, v0

    aput v0, p1, v5

    goto :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

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
    .line 334
    iget v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/Rectangle2D$Iterator;->index:I

    .line 335
    return-void
.end method
