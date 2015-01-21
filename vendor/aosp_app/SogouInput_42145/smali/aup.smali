.class public Laup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Landroid/graphics/Bitmap;

.field public a:Landroid/graphics/Canvas;

.field public a:Landroid/util/SparseArray;

.field public a:Lawq;

.field public a:Z

.field public b:I

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object v1, p0, Laup;->a:Landroid/graphics/Canvas;

    .line 366
    iput-object v1, p0, Laup;->a:Landroid/graphics/Bitmap;

    .line 369
    iput-object v1, p0, Laup;->b:Landroid/graphics/Bitmap;

    .line 371
    iput-object v1, p0, Laup;->a:Lawq;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Laup;->a:Z

    .line 373
    iput-object v1, p0, Laup;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 378
    invoke-virtual {p0}, Laup;->b()V

    .line 379
    iput-object v2, p0, Laup;->a:Landroid/graphics/Bitmap;

    .line 380
    iput v0, p0, Laup;->a:I

    .line 381
    iput v0, p0, Laup;->b:I

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Laup;->a:Z

    .line 383
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Laup;->a:Landroid/graphics/Canvas;

    .line 385
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laup;->a:Landroid/util/SparseArray;

    .line 389
    const/16 v0, 0x32

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 390
    iget-object v1, p0, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    iget-object v0, p0, Laup;->a:Landroid/util/SparseArray;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-virtual {p0}, Laup;->c()V

    .line 408
    iput-object v1, p0, Laup;->a:Landroid/graphics/Canvas;

    .line 409
    iget-object v0, p0, Laup;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 411
    iput-object v1, p0, Laup;->a:Landroid/util/SparseArray;

    .line 418
    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 422
    iput-boolean v0, p0, Laup;->a:Z

    .line 423
    iget-object v1, p0, Laup;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laup;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    iget-object v1, p0, Laup;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    :cond_0
    iput v2, p0, Laup;->a:I

    .line 427
    iput v2, p0, Laup;->b:I

    .line 428
    iput-object v4, p0, Laup;->a:Landroid/graphics/Bitmap;

    .line 429
    iget-object v1, p0, Laup;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Laup;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    iget-object v1, p0, Laup;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    :cond_1
    iput-object v4, p0, Laup;->b:Landroid/graphics/Bitmap;

    .line 433
    iget-object v1, p0, Laup;->a:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    .line 434
    iget-object v1, p0, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v1, v0

    .line 435
    :goto_0
    if-ge v1, v2, :cond_3

    .line 436
    iget-object v0, p0, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 437
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 438
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    :cond_2
    iget-object v0, p0, Laup;->a:Landroid/util/SparseArray;

    iget-object v3, p0, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_3
    return-void
.end method
