.class public Lcom/sohu/inputmethod/expression/PreviewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:F

.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/view/VelocityTracker;

.field private a:Landroid/view/View$OnLongClickListener;

.field private a:Landroid/widget/Scroller;

.field private a:Lqb;

.field private a:Z

.field private b:F

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:I

    .line 38
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Z

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    .line 51
    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    .line 56
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:Z

    .line 62
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:Z

    .line 96
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->b()V

    .line 98
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    .line 105
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:I

    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    .line 107
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->e:I

    .line 110
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->f:I

    .line 111
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getWidth()I

    move-result v0

    .line 423
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 425
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(I)V

    .line 426
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    return v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 548
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    .line 549
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:I

    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Z

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:Z

    .line 552
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 553
    return-void
.end method

.method a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 433
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    .line 434
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[[[[[[[[[[[[[[[[[snapToScreen=================="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Lqb;

    if-eqz v3, :cond_1

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[[[[[[[[[[[[[[[[[snapToScreen=================="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(Ljava/lang/String;)V

    .line 437
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Lqb;

    invoke-interface {v3, v1}, Lqb;->a(I)V

    .line 439
    :cond_1
    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    .line 441
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 442
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v3, v0, :cond_2

    .line 444
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    .line 448
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 449
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 450
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->invalidate()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 433
    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:Z

    return v0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 160
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->scrollTo(II)V

    .line 162
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->postInvalidate()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    if-eq v0, v3, :cond_0

    .line 164
    const/4 v0, 0x0

    iget v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    .line 166
    iput v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(Ljava/lang/String;)V

    .line 253
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 237
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()I

    move-result v1

    if-lez v1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(I)V

    .line 248
    :goto_0
    return v0

    .line 242
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(I)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 259
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:Z

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(Ljava/lang/String;)V

    .line 265
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    if-nez v3, :cond_0

    .line 270
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 273
    packed-switch v0, :pswitch_data_0

    .line 334
    :cond_3
    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 280
    :pswitch_0
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 281
    iget v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v4, v3

    .line 283
    iget v5, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->e:I

    .line 284
    if-le v0, v5, :cond_6

    move v3, v2

    .line 285
    :goto_2
    if-le v4, v5, :cond_7

    move v0, v2

    .line 287
    :goto_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    .line 289
    :cond_4
    if-eqz v3, :cond_5

    .line 291
    iput v2, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    .line 294
    :cond_5
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:Z

    if-eqz v0, :cond_3

    .line 295
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:Z

    .line 301
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    :cond_6
    move v3, v1

    .line 284
    goto :goto_2

    :cond_7
    move v0, v1

    .line 285
    goto :goto_3

    .line 309
    :pswitch_1
    iput v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:F

    .line 310
    iput v4, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:F

    .line 311
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:Z

    .line 318
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_4

    .line 325
    :pswitch_2
    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    .line 326
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:Z

    goto :goto_1

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 203
    .line 205
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 206
    :goto_0
    if-ge v1, v3, :cond_1

    .line 207
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 209
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 210
    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 212
    add-int/2addr v0, v5

    .line 206
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 174
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 181
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 188
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v2

    move v0, v1

    .line 189
    :goto_0
    if-ge v0, v2, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0, v1, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->scrollTo(II)V

    .line 196
    iput-boolean v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Z

    .line 198
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 224
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:I

    .line 230
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 232
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 339
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fZ:I

    .line 341
    iput-boolean v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:Z

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->c:Z

    if-eqz v0, :cond_2

    .line 418
    :cond_1
    :goto_0
    return v4

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 348
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 355
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 362
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 366
    :cond_4
    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:F

    goto :goto_0

    .line 369
    :pswitch_1
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    if-ne v0, v4, :cond_1

    .line 371
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 372
    iput v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:F

    .line 374
    if-gez v0, :cond_5

    .line 375
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getScrollX()I

    move-result v1

    if-lez v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/expression/PreviewPager;->scrollBy(II)V

    .line 377
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->invalidate()V

    goto :goto_0

    .line 379
    :cond_5
    if-lez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 383
    if-lez v1, :cond_1

    .line 384
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/expression/PreviewPager;->scrollBy(II)V

    .line 385
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->invalidate()V

    goto :goto_0

    .line 391
    :pswitch_2
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    if-ne v0, v4, :cond_6

    .line 392
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    .line 393
    iget v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 394
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 396
    if-le v0, v2, :cond_7

    iget v1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    if-lez v1, :cond_7

    .line 398
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(I)V

    .line 407
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 408
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/VelocityTracker;

    .line 412
    :cond_6
    iput v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    goto/16 :goto_0

    .line 399
    :cond_7
    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_8

    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_8

    .line 402
    iget v0, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->a(I)V

    goto :goto_1

    .line 404
    :cond_8
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->c()V

    goto :goto_1

    .line 415
    :pswitch_3
    iput v3, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:I

    goto/16 :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->b:Z

    .line 539
    return-void
.end method

.method public setGuidePageChangeListener(Lqb;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Lqb;

    .line 156
    return-void
.end method

.method public setNeedCollectHorizontallScroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->d:Z

    .line 472
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/PreviewPager;->a:Landroid/view/View$OnLongClickListener;

    .line 148
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildCount()I

    move-result v1

    .line 149
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/PreviewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method
