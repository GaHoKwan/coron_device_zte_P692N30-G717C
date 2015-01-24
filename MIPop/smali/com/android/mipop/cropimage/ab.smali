.class public Lcom/android/mipop/cropimage/ab;
.super Lcom/android/mipop/cropimage/y;


# instance fields
.field private f:Landroid/graphics/Paint;

.field private hx:Landroid/graphics/Bitmap;

.field private hy:Z

.field private mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/mipop/cropimage/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/ab;->hy:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ab;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private bu()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/ab;->hy:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mipop/cropimage/ab;->bX:I

    iget v1, p0, Lcom/android/mipop/cropimage/ab;->bY:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/ab;->hx:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->hx:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/ab;->mCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/ab;->hy:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->ck:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->ch:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/mipop/cropimage/ab;->bX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/mipop/cropimage/ab;->bY:I

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/android/mipop/cropimage/ab;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/android/mipop/cropimage/ab;->cb:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/ab;->cc:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->cf:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->hx:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v11, 0x4000

    const/high16 v10, 0x3f80

    const v9, 0xffffff

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v3, p0, Lcom/android/mipop/cropimage/ab;->cb:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/mipop/cropimage/ab;->cb:I

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/mipop/cropimage/ab;->cc:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/mipop/cropimage/ab;->cc:I

    sub-int/2addr v1, v3

    if-lez v1, :cond_7

    :cond_3
    :goto_2
    iget v3, p0, Lcom/android/mipop/cropimage/ab;->cm:F

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_a

    int-to-float v0, v0

    iget v3, p0, Lcom/android/mipop/cropimage/ab;->cm:F

    mul-float/2addr v0, v3

    float-to-int v4, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/android/mipop/cropimage/ab;->cm:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    int-to-float v0, v6

    iget v1, p0, Lcom/android/mipop/cropimage/ab;->cm:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v7

    iget v5, p0, Lcom/android/mipop/cropimage/ab;->cm:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    add-int v5, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v4

    :cond_4
    add-int v5, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    :cond_5
    move v7, v1

    move v6, v0

    move v0, v3

    move v3, v4

    :goto_3
    mul-int v1, v6, v7

    new-array v1, v1, [I

    invoke-static {p1, v3, v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    :goto_4
    div-int/lit8 v3, v7, 0x2

    if-eq v0, v3, :cond_9

    int-to-float v3, v6

    div-float/2addr v3, v11

    int-to-float v4, v7

    div-float/2addr v4, v11

    int-to-float v5, v0

    sub-float/2addr v5, v4

    int-to-float v8, v0

    sub-float/2addr v8, v4

    mul-float/2addr v5, v8

    mul-float/2addr v4, v4

    div-float v4, v5, v4

    sub-float v4, v10, v4

    mul-float/2addr v4, v3

    mul-float/2addr v4, v3

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v2

    :goto_5
    if-eq v3, v4, :cond_8

    mul-int v5, v0, v6

    add-int/2addr v5, v3

    aput v9, v1, v5

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aput v9, v1, v5

    sub-int v5, v7, v0

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v3

    aput v9, v1, v5

    sub-int v5, v7, v0

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    aput v9, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    move v3, v0

    move v0, v1

    goto :goto_3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mipop/cropimage/ab;->bu()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/mipop/cropimage/ab;->cb:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/ab;->cc:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cg:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->cl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v1, v1, v7

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->cn:[Landroid/graphics/Point;

    aget-object v2, v2, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->cd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->ci:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/ab;->ck:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/ab;->ch:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/ab;->ci:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/ab;->ce:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
