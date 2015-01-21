.class public Lcom/sohu/util/ScrollViewUtil;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected a:I

.field protected a:Landroid/graphics/drawable/Drawable;

.field protected a:Landroid/widget/Scroller;

.field protected a:Lazg;

.field protected a:Ljava/lang/Runnable;

.field protected a:Z

.field protected b:F

.field protected b:I

.field protected b:Z

.field protected c:F

.field protected c:I

.field protected c:Z

.field protected d:F

.field protected d:I

.field protected d:Z

.field protected e:F

.field public e:I

.field protected e:Z

.field protected f:F

.field protected f:I

.field protected g:F

.field protected g:I

.field protected h:F

.field protected h:I

.field protected i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v2, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    .line 21
    const/16 v0, 0x258

    iput v0, p0, Lcom/sohu/util/ScrollViewUtil;->b:I

    .line 22
    iput-boolean v1, p0, Lcom/sohu/util/ScrollViewUtil;->a:Z

    .line 37
    iput v1, p0, Lcom/sohu/util/ScrollViewUtil;->e:I

    .line 51
    iput-boolean v1, p0, Lcom/sohu/util/ScrollViewUtil;->b:Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/util/ScrollViewUtil;->f:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/util/ScrollViewUtil;->h:I

    .line 64
    iput-object v2, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    .line 311
    return-void
.end method


# virtual methods
.method protected a()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 255
    invoke-virtual {p0, v3}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 256
    iget-boolean v2, p0, Lcom/sohu/util/ScrollViewUtil;->d:Z

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    iget-boolean v2, p0, Lcom/sohu/util/ScrollViewUtil;->e:Z

    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 472
    :cond_0
    const/4 p1, 0x0

    .line 482
    :cond_1
    :goto_0
    return p1

    .line 474
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 480
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lazg;

    const/16 v1, 0xa

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lazg;-><init>(II)V

    iput-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    invoke-virtual {v0, p1}, Lazg;->a(Landroid/view/MotionEvent;)V

    .line 377
    return-void
.end method

.method protected a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 272
    iget-boolean v2, p0, Lcom/sohu/util/ScrollViewUtil;->c:Z

    if-nez v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    iget-boolean v3, p0, Lcom/sohu/util/ScrollViewUtil;->d:Z

    if-eqz v3, :cond_3

    .line 277
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 279
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollX()I

    move-result v3

    .line 280
    if-ltz v3, :cond_2

    if-le v3, v2, :cond_0

    :cond_2
    move v0, v1

    .line 281
    goto :goto_0

    .line 283
    :cond_3
    iget-boolean v3, p0, Lcom/sohu/util/ScrollViewUtil;->e:Z

    if-eqz v3, :cond_0

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 286
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollY()I

    move-result v3

    .line 287
    if-ltz v3, :cond_4

    if-le v3, v2, :cond_0

    if-lez v3, :cond_0

    :cond_4
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method protected a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 337
    :cond_0
    return v0
.end method

.method protected b(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    const/16 v1, 0xfa

    const/16 v3, 0x9c4

    .line 113
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->h()V

    .line 114
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 118
    if-le v0, v3, :cond_4

    .line 120
    if-ltz p2, :cond_3

    move v0, v3

    :goto_1
    move p2, v0

    move v0, v3

    .line 128
    :cond_1
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 138
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 140
    int-to-float v1, v1

    int-to-float v5, v0

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    const v4, 0x3e0f5c29

    mul-float/2addr v1, v4

    .line 143
    iget v4, p0, Lcom/sohu/util/ScrollViewUtil;->a:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_b

    .line 144
    iget v1, p0, Lcom/sohu/util/ScrollViewUtil;->a:I

    int-to-float v1, v1

    move v4, v1

    .line 147
    :goto_3
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollX()I

    move-result v1

    .line 149
    if-gtz p2, :cond_6

    .line 150
    invoke-virtual {p0, v4}, Lcom/sohu/util/ScrollViewUtil;->a(F)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->a()F

    move-result v4

    .line 159
    :cond_2
    :goto_4
    const/high16 v5, 0x41f0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_7

    .line 160
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->h()V

    goto :goto_0

    .line 120
    :cond_3
    const/16 v0, -0x9c4

    goto :goto_1

    .line 121
    :cond_4
    if-ge v0, v1, :cond_1

    .line 126
    if-ltz p2, :cond_5

    move v0, v1

    :goto_5
    move p2, v0

    move v0, v1

    goto :goto_2

    :cond_5
    const/16 v0, -0xfa

    goto :goto_5

    .line 154
    :cond_6
    int-to-float v5, v1

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 155
    int-to-float v4, v1

    goto :goto_4

    .line 164
    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 178
    const/high16 v5, 0x447a

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x5

    .line 180
    if-nez v5, :cond_9

    .line 181
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    .line 185
    :cond_8
    :goto_6
    if-lez p2, :cond_a

    neg-float v0, v4

    move v3, v0

    .line 187
    :goto_7
    int-to-float v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/util/ScrollViewUtil;->i:I

    .line 189
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 190
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->invalidate()V

    goto/16 :goto_0

    .line 182
    :cond_9
    if-le v5, v3, :cond_8

    move v5, v3

    .line 183
    goto :goto_6

    :cond_a
    move v3, v4

    .line 185
    goto :goto_7

    :cond_b
    move v4, v1

    goto :goto_3
.end method

.method protected b(Landroid/graphics/Canvas;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    sget-object v1, Laxr;->i:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 300
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0, v1}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_3

    .line 240
    iget-boolean v3, p0, Lcom/sohu/util/ScrollViewUtil;->d:Z

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 242
    goto :goto_0

    .line 243
    :cond_2
    iget-boolean v3, p0, Lcom/sohu/util/ScrollViewUtil;->e:Z

    if-eqz v3, :cond_3

    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 245
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public c()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 347
    :cond_0
    return v0
.end method

.method protected c()V
    .locals 12

    .prologue
    const/16 v5, 0x190

    const/4 v2, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->h()V

    .line 399
    iget-boolean v0, p0, Lcom/sohu/util/ScrollViewUtil;->d:Z

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollX()I

    move-result v1

    .line 401
    if-gez v1, :cond_1

    .line 402
    neg-int v3, v1

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 432
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->invalidate()V

    .line 433
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 405
    invoke-virtual {p0, v2}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 409
    if-le v1, v0, :cond_5

    .line 410
    sub-int v3, v0, v1

    goto :goto_0

    .line 415
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/util/ScrollViewUtil;->e:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getScrollY()I

    move-result v8

    .line 417
    if-gez v8, :cond_3

    .line 418
    neg-int v10, v8

    .line 429
    :goto_2
    iget-object v6, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    move v7, v2

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 421
    invoke-virtual {p0, v2}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 424
    if-le v8, v0, :cond_4

    .line 425
    sub-int v10, v0, v8

    goto :goto_2

    :cond_4
    move v10, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/util/ScrollViewUtil;->scrollTo(II)V

    .line 219
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->postInvalidate()V

    .line 221
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/sohu/util/ScrollViewUtil;->f:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Z

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Z

    .line 353
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtil;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 355
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    invoke-virtual {v0}, Lazg;->a()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Lazg;

    .line 384
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 394
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getChildCount()I

    move-result v0

    .line 196
    if-gtz v0, :cond_1

    .line 197
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtil;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingLeft()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->getPaddingTop()I

    move-result v2

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 206
    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/sohu/util/ScrollViewUtil;->a:Z

    .line 370
    return-void
.end method

.method public setBackGroudDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 441
    if-eqz p1, :cond_0

    .line 442
    iput-object p1, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    .line 443
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtil;->a:Landroid/graphics/drawable/Drawable;

    sget-object v1, Laxr;->i:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 445
    :cond_0
    return-void
.end method

.method protected setCanScrollVertical(Z)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/sohu/util/ScrollViewUtil;->e:Z

    .line 230
    invoke-virtual {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->setVerticalScrollBarEnabled(Z)V

    .line 231
    invoke-virtual {p0, p1}, Lcom/sohu/util/ScrollViewUtil;->setScrollbarFadingEnabled(Z)V

    .line 232
    return-void
.end method

.method protected setCanScrollhorizontal(Z)V
    .locals 1
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtil;->setHorizontalScrollBarEnabled(Z)V

    .line 225
    iput-boolean p1, p0, Lcom/sohu/util/ScrollViewUtil;->d:Z

    .line 226
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 319
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iput p1, p0, Lcom/sohu/util/ScrollViewUtil;->h:I

    .line 325
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtil;->b()I

    move-result v1

    .line 326
    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_2

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/sohu/util/ScrollViewUtil;->c:Z

    .line 328
    return-void

    .line 326
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setViewHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput p1, p0, Lcom/sohu/util/ScrollViewUtil;->f:I

    .line 438
    return-void
.end method

.method public setWrapWithChild(Z)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-boolean p1, p0, Lcom/sohu/util/ScrollViewUtil;->b:Z

    .line 453
    return-void
.end method
