.class public Lcom/powermo/SmartBar/DragGridView;
.super Landroid/widget/GridView;


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/powermo/SmartBar/av;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->d:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->a:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/SmartBar/au;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/au;-><init>(Lcom/powermo/SmartBar/DragGridView;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->h:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/powermo/SmartBar/DragGridView;->i:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->j:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->k:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->l:I

    iput v1, p0, Lcom/powermo/SmartBar/DragGridView;->m:I

    iput v1, p0, Lcom/powermo/SmartBar/DragGridView;->n:I

    iput v1, p0, Lcom/powermo/SmartBar/DragGridView;->o:I

    iput v1, p0, Lcom/powermo/SmartBar/DragGridView;->p:I

    iput v1, p0, Lcom/powermo/SmartBar/DragGridView;->q:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/powermo/SmartBar/DragGridView;->r:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    return-void
.end method

.method private a(III)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/DragGridView;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const-string v1, "DragGridView"

    const-string v2, "Null view rect Should not reach here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v1, p0, Lcom/powermo/SmartBar/DragGridView;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/powermo/SmartBar/DragGridView;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge p1, v1, :cond_2

    sub-int/2addr v1, p3

    if-lt p1, v1, :cond_2

    neg-int p2, p2

    goto :goto_0

    :cond_2
    if-lt p1, v2, :cond_3

    add-int v1, v2, p3

    if-lt p1, v1, :cond_0

    :cond_3
    move p2, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    return v0
.end method

.method private a(IIZIII)V
    .locals 7

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/powermo/SmartBar/av;->a(IIZIII)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/DragGridView;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/DragGridView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/powermo/SmartBar/DragGridView;->b(III)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/DragGridView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/powermo/SmartBar/DragGridView;->r:J

    return-void
.end method

.method private a(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/DragGridView;->g:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const-string v1, "DragGridView"

    const-string v2, "Null view rect Should not reach here"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/powermo/SmartBar/DragGridView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->o:I

    return v0
.end method

.method private b(III)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    invoke-interface {v0, p1, p2, p3}, Lcom/powermo/SmartBar/av;->a(III)V

    :cond_0
    return-void
.end method

.method private b(IIZIII)V
    .locals 7

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/powermo/SmartBar/av;->b(IIZIII)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/DragGridView;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/DragGridView;->q:I

    return-void
.end method

.method static synthetic c(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->m:I

    return v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/DragGridView;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/DragGridView;->m:I

    return-void
.end method

.method static synthetic d(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->p:I

    return v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/DragGridView;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/DragGridView;->n:I

    return-void
.end method

.method static synthetic e(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->n:I

    return v0
.end method

.method static synthetic e(Lcom/powermo/SmartBar/DragGridView;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/DragGridView;->o:I

    return-void
.end method

.method static synthetic f(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->d:I

    return v0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/DragGridView;I)V
    .locals 0

    iput p1, p0, Lcom/powermo/SmartBar/DragGridView;->p:I

    return-void
.end method

.method static synthetic g(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->e:I

    return v0
.end method

.method static synthetic h(Lcom/powermo/SmartBar/DragGridView;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->f:I

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/DragGridView;->i:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/powermo/SmartBar/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v4, 0x7f07001b

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    if-le v1, v0, :cond_1

    iput v2, p0, Lcom/powermo/SmartBar/DragGridView;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->f:I

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/DragGridView;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/DragGridView;->h:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->e:I

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->m:I

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->f:I

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->n:I

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->e:I

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->o:I

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->f:I

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->p:I

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/DragGridView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/powermo/SmartBar/DragGridView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/powermo/SmartBar/DragGridView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/powermo/SmartBar/DragGridView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powermo/SmartBar/DragGridView;->g:Landroid/graphics/Rect;

    :cond_2
    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v7, v4

    invoke-virtual {p0}, Lcom/powermo/SmartBar/DragGridView;->getHorizontalSpacing()I

    move-result v8

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_0
    iget v9, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v3, 0x3

    if-eq v9, v3, :cond_5

    const/4 v3, 0x4

    if-ne v9, v3, :cond_3

    :cond_5
    invoke-virtual {p0, v0, v7}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    if-gez v4, :cond_6

    sub-int v3, v0, v8

    invoke-virtual {p0, v3, v7}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v5

    add-int v3, v0, v8

    invoke-virtual {p0, v3, v7}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v6

    :cond_6
    invoke-direct {p0, v0, v7}, Lcom/powermo/SmartBar/DragGridView;->a(II)Z

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/powermo/SmartBar/DragGridView;->b(IIZIII)V

    const/4 v0, 0x3

    if-ne v9, v0, :cond_7

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1
    iget v3, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    iget v3, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    :cond_8
    invoke-virtual {p0, v0, v7}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    if-gez v4, :cond_9

    sub-int v3, v0, v8

    invoke-virtual {p0, v3, v7}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v5

    add-int v3, v0, v8

    invoke-virtual {p0, v3, v7}, Lcom/powermo/SmartBar/DragGridView;->pointToPosition(II)I

    move-result v6

    :cond_9
    iget-boolean v3, p0, Lcom/powermo/SmartBar/DragGridView;->i:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/powermo/SmartBar/DragGridView;->j:I

    iget v8, p0, Lcom/powermo/SmartBar/DragGridView;->k:I

    invoke-direct {p0, v7, v3, v8}, Lcom/powermo/SmartBar/DragGridView;->a(III)I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v10, p0, Lcom/powermo/SmartBar/DragGridView;->q:I

    if-eq v3, v10, :cond_b

    iput v3, p0, Lcom/powermo/SmartBar/DragGridView;->q:I

    iput-wide v8, p0, Lcom/powermo/SmartBar/DragGridView;->r:J

    :cond_a
    :goto_2
    invoke-direct {p0, v0, v7}, Lcom/powermo/SmartBar/DragGridView;->a(II)Z

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/powermo/SmartBar/DragGridView;->a(IIZIII)V

    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    iget-wide v10, p0, Lcom/powermo/SmartBar/DragGridView;->r:J

    sub-long/2addr v8, v10

    iget v10, p0, Lcom/powermo/SmartBar/DragGridView;->l:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    invoke-virtual {p0, v3}, Lcom/powermo/SmartBar/DragGridView;->smoothScrollByOffset(I)V

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/powermo/SmartBar/DragGridView;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iput v1, p0, Lcom/powermo/SmartBar/DragGridView;->o:I

    iput v2, p0, Lcom/powermo/SmartBar/DragGridView;->p:I

    goto/16 :goto_1

    :cond_d
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDragListener(Lcom/powermo/SmartBar/av;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/DragGridView;->b:Lcom/powermo/SmartBar/av;

    return-void
.end method
