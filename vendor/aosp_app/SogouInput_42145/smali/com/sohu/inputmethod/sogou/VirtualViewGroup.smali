.class public abstract Lcom/sohu/inputmethod/sogou/VirtualViewGroup;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field protected a:Landroid/content/Context;

.field protected a:Landroid/graphics/Rect;

.field private a:Lavf;

.field private a:[Lavf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->b(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private a(FFLavf;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p3, Lavf;->p:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 580
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    iget v2, p3, Lavf;->r:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 581
    invoke-virtual {p3, v0, v1}, Lavf;->a(FF)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/view/MotionEvent;ZLavf;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 278
    if-nez p2, :cond_0

    if-ne v1, v0, :cond_2

    .line 279
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 280
    if-nez p3, :cond_1

    .line 281
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 285
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 306
    :goto_1
    return v0

    .line 283
    :cond_1
    invoke-virtual {p3, p1}, Lavf;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 290
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 294
    if-nez p3, :cond_3

    .line 295
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 305
    :goto_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->getScrollX()I

    move-result v0

    iget v2, p3, Lavf;->p:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 298
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->getScrollY()I

    move-result v2

    iget v3, p3, Lavf;->r:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 299
    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 301
    invoke-virtual {p3, v1}, Lavf;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2
.end method

.method private a(Lavf;)Z
    .locals 1
    .parameter

    .prologue
    .line 566
    invoke-virtual {p1}, Lavf;->f()Z

    move-result v0

    return v0
.end method

.method private a(Lavf;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 593
    iget v0, p1, Lavf;->p:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lavf;->q:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lavf;->s:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lavf;->r:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lavf;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 178
    iget v0, p2, Lavf;->p:I

    .line 179
    iget v1, p2, Lavf;->r:I

    .line 180
    iget v2, p2, Lavf;->q:I

    .line 181
    iget v3, p2, Lavf;->s:I

    .line 183
    invoke-virtual {p2}, Lavf;->o()V

    .line 185
    iget v4, p2, Lavf;->C:I

    .line 186
    iget v5, p2, Lavf;->D:I

    .line 188
    iget v6, p2, Lavf;->y:I

    add-int/2addr v6, v4

    .line 189
    iget v7, p2, Lavf;->A:I

    add-int/2addr v7, v5

    .line 190
    add-int/2addr v2, v4

    sub-int/2addr v2, v0

    iget v8, p2, Lavf;->z:I

    sub-int/2addr v2, v8

    .line 191
    add-int/2addr v3, v5

    sub-int/2addr v3, v1

    iget v8, p2, Lavf;->B:I

    sub-int/2addr v3, v8

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 194
    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    invoke-virtual {p2, p1}, Lavf;->b(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p1, v6, v7, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 197
    invoke-virtual {p2, p1}, Lavf;->a(Landroid/graphics/Canvas;)V

    .line 198
    invoke-virtual {p2, p1}, Lavf;->c(Landroid/graphics/Canvas;)V

    .line 199
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 200
    return-void
.end method

.method public a(Lavf;)V
    .locals 1
    .parameter

    .prologue
    .line 392
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Lavf;I)V

    .line 393
    return-void
.end method

.method public a(Lavf;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->invalidate()V

    .line 407
    iput-object p0, p1, Lavf;->a:Landroid/view/View;

    .line 409
    if-gez p2, :cond_0

    .line 410
    iget p2, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 414
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 415
    array-length v2, v0

    .line 416
    if-ne p2, v1, :cond_2

    .line 417
    if-ne v2, v1, :cond_1

    .line 418
    add-int/lit8 v1, v2, 0xc

    new-array v1, v1, [Lavf;

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 419
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 422
    :cond_1
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    aput-object p1, v0, v1

    .line 441
    :goto_0
    return-void

    .line 423
    :cond_2
    if-ge p2, v1, :cond_4

    .line 424
    if-ne v2, v1, :cond_3

    .line 425
    add-int/lit8 v2, v2, 0xc

    new-array v2, v2, [Lavf;

    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 426
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    invoke-static {v0, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 432
    :goto_1
    aput-object p1, v0, p2

    .line 433
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    goto :goto_0

    .line 430
    :cond_3
    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 438
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    const/16 v0, 0xc

    new-array v0, v0, [Lavf;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Landroid/graphics/Rect;

    .line 88
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Landroid/content/Context;

    .line 89
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 134
    .line 136
    iget v5, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 137
    if-gtz v5, :cond_1

    .line 138
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Landroid/graphics/Canvas;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 142
    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 145
    const/4 v2, 0x0

    move v4, v3

    move v0, v3

    .line 148
    :goto_1
    if-ge v4, v5, :cond_5

    .line 149
    aget-object v2, v6, v4

    .line 150
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lavf;->f()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v7}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Lavf;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 148
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, v2, Lavf;->b:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    move v2, v1

    .line 162
    :goto_3
    if-nez v1, :cond_4

    .line 163
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Landroid/graphics/Canvas;)V

    .line 165
    :cond_4
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Landroid/graphics/Canvas;Lavf;)V

    goto :goto_0

    :cond_5
    move v1, v3

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 214
    and-int/lit16 v3, v1, 0xff

    .line 216
    if-ne v3, v9, :cond_1

    move v2, v0

    .line 219
    :goto_0
    if-nez v3, :cond_3

    .line 223
    iput-object v10, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Lavf;

    .line 224
    iget v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 225
    if-eqz v1, :cond_3

    .line 228
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 232
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 233
    aget-object v7, v4, v1

    .line 234
    if-nez v7, :cond_2

    .line 232
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 216
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 236
    :cond_2
    invoke-direct {p0, v7}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Lavf;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v5, v6, v7}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(FFLavf;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    iput-object v7, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Lavf;

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Lavf;

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Lavf;

    invoke-direct {p0, p1, v2, v1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a(Landroid/view/MotionEvent;ZLavf;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    :goto_2
    return v0

    .line 254
    :cond_4
    if-eq v3, v9, :cond_5

    if-eq v3, v0, :cond_5

    const/4 v0, 0x7

    if-ne v3, v0, :cond_6

    .line 257
    :cond_5
    iput-object v10, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:Lavf;

    .line 259
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2
.end method

.method public i()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->b(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->c(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->getChildCount()I

    move-result v0

    .line 321
    if-lez v0, :cond_0

    .line 322
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 326
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 328
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 329
    aget-object v2, v1, v0

    .line 330
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lavf;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    invoke-virtual {v2, p1, p2}, Lavf;->b(II)V

    .line 328
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 334
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 350
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 351
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 352
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 353
    aget-object v2, v1, v0

    .line 354
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lavf;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v2, p1, p2, p3, p4}, Lavf;->c(IIII)V

    .line 352
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 358
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 370
    iget v0, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:I

    .line 371
    if-gtz v0, :cond_1

    .line 383
    :cond_0
    return-void

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->a:[Lavf;

    .line 377
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 378
    aget-object v2, v1, v0

    .line 379
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lavf;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    invoke-virtual {v2}, Lavf;->m()V

    .line 377
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
