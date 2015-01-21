.class public Lcom/sohu/util/ScrollViewUtilWithScrollBar;
.super Lcom/sohu/util/ScrollViewUtil;
.source "SourceFile"


# instance fields
.field public a:Lazb;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sohu/util/ScrollViewUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->j:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public a(IIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 31
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    iget v0, v0, Lazb;->a:I

    add-int/2addr v0, p5

    invoke-virtual {p0, v0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->b(I)Z

    .line 32
    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 257
    iget-object v3, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    .line 258
    if-eqz v3, :cond_0

    .line 260
    iget v2, v3, Lazb;->d:I

    .line 262
    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 270
    iget-object v2, v3, Lazb;->a:[F

    if-nez v2, :cond_2

    .line 271
    new-array v2, v0, [F

    iput-object v2, v3, Lazb;->a:[F

    .line 274
    :cond_2
    iget-object v2, v3, Lazb;->a:[F

    .line 277
    iget-object v4, v3, Lazb;->a:Landroid/graphics/Interpolator;

    invoke-virtual {v4, v2}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v4

    sget-object v5, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v4, v5, :cond_4

    .line 279
    iput v1, v3, Lazb;->d:I

    :goto_1
    move v7, v0

    .line 294
    :goto_2
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingRight()I

    move-result v2

    sub-int v4, v1, v2

    .line 295
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingBottom()I

    move-result v2

    sub-int v6, v1, v2

    .line 297
    iget-object v2, v3, Lazb;->a:Laxl;

    .line 299
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getScrollX()I

    move-result v5

    .line 300
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getScrollY()I

    move-result v8

    .line 304
    invoke-virtual {v2, v0}, Laxl;->a(Z)I

    move-result v1

    .line 305
    if-gtz v1, :cond_3

    .line 306
    iget v1, v3, Lazb;->c:I

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a()I

    move-result v3

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->e()I

    move-result v9

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->f()I

    move-result v10

    invoke-virtual {v2, v3, v9, v10, v0}, Laxl;->a(IIIZ)V

    .line 312
    iget v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->j:I

    packed-switch v0, :pswitch_data_0

    .line 316
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    sub-int v3, v0, v1

    .line 322
    :goto_3
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingTop()I

    move-result v0

    add-int v4, v8, v0

    .line 323
    add-int v5, v3, v1

    .line 324
    add-int/2addr v6, v8

    move-object v0, p0

    move-object v1, p1

    .line 325
    invoke-virtual/range {v0 .. v6}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a(Landroid/graphics/Canvas;Laxl;IIII)V

    .line 326
    if-eqz v7, :cond_0

    .line 327
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->invalidate(IIII)V

    goto :goto_0

    .line 281
    :cond_4
    iget-object v4, v3, Lazb;->a:Laxl;

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v4, v1}, Laxl;->setAlpha(I)V

    goto :goto_1

    .line 291
    :cond_5
    iget-object v2, v3, Lazb;->a:Laxl;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Laxl;->setAlpha(I)V

    move v7, v1

    goto :goto_2

    .line 319
    :pswitch_0
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingLeft()I

    move-result v0

    add-int v3, v5, v0

    goto :goto_3

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/graphics/Canvas;Laxl;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-virtual {p2, p3, p4, p5, p6}, Laxl;->setBounds(IIII)V

    .line 349
    invoke-virtual {p2, p1}, Laxl;->draw(Landroid/graphics/Canvas;)V

    .line 350
    return-void
.end method

.method protected a(IZ)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    .line 97
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lazb;->a:Z

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v3, v2, Lazb;->a:Laxl;

    if-nez v3, :cond_2

    .line 102
    new-instance v3, Laxl;

    invoke-direct {v3}, Laxl;-><init>()V

    iput-object v3, v2, Lazb;->a:Laxl;

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->isVerticalScrollBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    if-eqz p2, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->invalidate()V

    .line 110
    :cond_3
    iget v1, v2, Lazb;->d:I

    if-nez v1, :cond_4

    .line 115
    const/16 v1, 0x2ee

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 120
    :cond_4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 121
    iput-wide v3, v2, Lazb;->a:J

    .line 122
    iput v0, v2, Lazb;->d:I

    .line 126
    iget-object v1, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lazb;->a(J)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method protected b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a(IZ)Z

    move-result v0

    return v0
.end method

.method protected d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    iget-object v1, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    iget v1, v1, Lazb;->a:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    iget-object v2, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    .line 136
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lazb;->a:Z

    if-eqz v3, :cond_0

    iget v3, v2, Lazb;->d:I

    if-nez v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    iget-object v3, v2, Lazb;->a:Laxl;

    if-nez v3, :cond_2

    .line 141
    new-instance v3, Laxl;

    invoke-direct {v3}, Laxl;-><init>()V

    iput-object v3, v2, Lazb;->a:Laxl;

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->isVerticalScrollBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->invalidate()V

    .line 148
    iget v3, v2, Lazb;->d:I

    if-eqz v3, :cond_0

    .line 157
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget v0, v2, Lazb;->a:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 158
    iput-wide v3, v2, Lazb;->a:J

    .line 159
    iput v1, v2, Lazb;->d:I

    .line 163
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    iget v2, v2, Lazb;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lazb;->a(J)V

    move v0, v1

    .line 164
    goto :goto_0
.end method

.method protected f()I
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->j:I

    return v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lazb;

    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lazb;-><init>(Lcom/sohu/util/ScrollViewUtilWithScrollBar;Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    .line 44
    :cond_0
    return-void
.end method

.method public setScrollBarThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    iget-object v0, v0, Lazb;->a:Laxl;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    iget-object v0, v0, Lazb;->a:Laxl;

    invoke-static {p1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Laxl;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->i()V

    .line 177
    iget-object v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->a:Lazb;

    .line 178
    iput-boolean p1, v0, Lazb;->a:Z

    .line 179
    if-eqz p1, :cond_0

    .line 180
    const/4 v1, 0x0

    iput v1, v0, Lazb;->d:I

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Lazb;->d:I

    goto :goto_0
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->j:I

    if-eq v0, p1, :cond_0

    .line 60
    iput p1, p0, Lcom/sohu/util/ScrollViewUtilWithScrollBar;->j:I

    .line 62
    :cond_0
    return-void
.end method
