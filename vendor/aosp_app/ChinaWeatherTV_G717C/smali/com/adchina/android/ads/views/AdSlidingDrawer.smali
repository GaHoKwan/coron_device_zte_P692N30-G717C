.class public Lcom/adchina/android/ads/views/AdSlidingDrawer;
.super Landroid/view/ViewGroup;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private G:I

.field private H:I

.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private e:Z

.field private f:Z

.field private g:Landroid/view/VelocityTracker;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/adchina/android/ads/views/o;

.field private o:Lcom/adchina/android/ads/views/n;

.field private p:Lcom/adchina/android/ads/views/p;

.field private final q:Landroid/os/Handler;

.field private r:F

.field private s:F

.field private t:F

.field private u:J

.field private v:J

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, 0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d:Landroid/graphics/Rect;

    new-instance v0, Lcom/adchina/android/ads/views/q;

    invoke-direct {v0, p0, v2}, Lcom/adchina/android/ads/views/q;-><init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;B)V

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->y:Z

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->z:Z

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c0

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->A:I

    const/high16 v1, 0x42c8

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->B:I

    const/high16 v1, 0x4316

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->C:I

    const/high16 v1, 0x4348

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->D:I

    const/high16 v1, 0x44fa

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->F:I

    invoke-virtual {p0, v2}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    return-void
.end method

.method private a(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c(I)V

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(IFZ)V

    return-void
.end method

.method private a(IFZ)V
    .locals 6

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    const/4 v2, 0x0

    int-to-float v0, p1

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    iput p2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v0, :cond_6

    if-nez p3, :cond_0

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->D:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    :goto_0
    add-int/2addr v0, v1

    if-le p1, v0, :cond_5

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->D:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5

    :cond_0
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->r:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->u:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->v:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->v:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->p:Lcom/adchina/android/ads/views/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->p:Lcom/adchina/android/ads/views/p;

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->r:F

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    goto :goto_1

    :cond_6
    if-nez p3, :cond_9

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->D:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_7

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_9

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->D:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_9

    :cond_7
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->r:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->r:F

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/AdSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->f:Z

    return v0
.end method

.method private b(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c(I)V

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(IFZ)V

    return-void
.end method

.method static synthetic b(Lcom/adchina/android/ads/views/AdSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->z:Z

    return v0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private c(I)V
    .locals 5

    const/16 v4, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->E:I

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->r:F

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->D:I

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d(I)V

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->u:J

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->v:J

    iput-boolean v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/adchina/android/ads/views/AdSlidingDrawer;)V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->u:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    iget v5, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->r:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->s:F

    iput-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->u:J

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iput-boolean v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput-boolean v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->t:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->v:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->v:J

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->q:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->v:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private d()V
    .locals 2

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->o:Lcom/adchina/android/ads/views/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->o:Lcom/adchina/android/ads/views/n;

    invoke-interface {v0}, Lcom/adchina/android/ads/views/n;->a()V

    goto :goto_0
.end method

.method private d(I)V
    .locals 8

    const/4 v7, 0x0

    const/16 v3, -0x2711

    const/16 v2, -0x2712

    iget-object v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_4

    if-ne p1, v3, :cond_0

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v2, :cond_1

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    if-ge p1, v3, :cond_3

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v0, v2

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v7, v1, v4, v0}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate()V

    goto :goto_0

    :cond_5
    if-ne p1, v2, :cond_6

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    if-ge p1, v3, :cond_8

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v0, v2

    :cond_7
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v7, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_7

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_2
.end method

.method private e()V
    .locals 2

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d(I)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->n:Lcom/adchina/android/ads/views/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->n:Lcom/adchina/android/ads/views/o;

    invoke-interface {v0}, Lcom/adchina/android/ads/views/o;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e()V

    :goto_0
    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d()V

    goto :goto_0
.end method

.method public final a(Lcom/adchina/android/ads/views/n;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->o:Lcom/adchina/android/ads/views/n;

    return-void
.end method

.method public final a(Lcom/adchina/android/ads/views/o;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->n:Lcom/adchina/android/ads/views/o;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->p:Lcom/adchina/android/ads/views/p;

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->sendAccessibilityEvent(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->p:Lcom/adchina/android/ads/views/p;

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    iget-boolean v5, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v6, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v5, :cond_5

    move v1, v0

    :goto_1
    int-to-float v1, v1

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v0, v4

    :cond_4
    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v1, v6

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    new-instance v1, Lcom/adchina/android/ads/views/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adchina/android/ads/views/m;-><init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;B)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->f:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    if-nez v7, :cond_2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    if-nez v2, :cond_4

    iput-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c()V

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->p:Lcom/adchina/android/ads/views/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->p:Lcom/adchina/android/ads/views/p;

    :cond_3
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v2, v4

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->w:I

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c(I)V

    :goto_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->w:I

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->c(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v2, p5, p3

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    iget-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v1, :cond_2

    sub-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x2

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v7, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v2, v1, v4

    add-int v4, v0, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    goto :goto_0

    :cond_1
    sub-int v0, v2, v5

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    :goto_3
    sub-int v1, v2, v5

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v2, v4

    const/4 v7, 0x0

    iget v8, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v4

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {p0, v3, p1, p2}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    iget-boolean v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    iget-object v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    :goto_1
    iput v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    iput v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-le v3, v1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b:Landroid/view/View;

    iget-object v4, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v1, v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->f:Z

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->e:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->x:Z

    if-nez v0, :cond_15

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v4

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->w:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->d(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->g:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->F:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-boolean v5, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->h:Z

    if-eqz v5, :cond_7

    cmpg-float v2, v1, v6

    if-gez v2, :cond_6

    move v2, v3

    :goto_3
    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    neg-float v0, v0

    :cond_3
    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->C:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_17

    iget v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->C:I

    int-to-float v0, v0

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_4
    float-to-double v6, v2

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz v0, :cond_16

    neg-float v0, v1

    :goto_5
    iget-object v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->B:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_13

    if-eqz v5, :cond_a

    iget-boolean v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->A:I

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v6, v7

    if-lt v1, v6, :cond_5

    :cond_4
    iget-boolean v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-nez v6, :cond_c

    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->G:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->l:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->A:I

    sub-int/2addr v6, v7

    if-le v1, v6, :cond_c

    :cond_5
    iget-boolean v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->y:Z

    if-eqz v6, :cond_10

    invoke-virtual {p0, v4}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->playSoundEffect(I)V

    iget-boolean v0, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v0, :cond_e

    if-eqz v5, :cond_d

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(I)V

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto :goto_3

    :cond_7
    cmpg-float v2, v0, v6

    if-gez v2, :cond_9

    move v2, v3

    :goto_7
    cmpg-float v6, v1, v6

    if-gez v6, :cond_8

    neg-float v1, v1

    :cond_8
    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->C:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_17

    iget v1, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->C:I

    int-to-float v1, v1

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_9
    move v2, v4

    goto :goto_7

    :cond_a
    iget-boolean v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->A:I

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->k:I

    add-int/2addr v6, v7

    if-lt v2, v6, :cond_5

    :cond_b
    iget-boolean v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->i:Z

    if-nez v6, :cond_c

    iget v6, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->j:I

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->H:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->m:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/adchina/android/ads/views/AdSlidingDrawer;->A:I

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_5

    :cond_c
    if-eqz v5, :cond_12

    :goto_8
    invoke-direct {p0, v1, v0, v4}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_f

    :goto_9
    invoke-direct {p0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b(I)V

    goto/16 :goto_1

    :cond_f
    move v1, v2

    goto :goto_9

    :cond_10
    if-eqz v5, :cond_11

    :goto_a
    invoke-direct {p0, v1, v0, v4}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_11
    move v1, v2

    goto :goto_a

    :cond_12
    move v1, v2

    goto :goto_8

    :cond_13
    if-eqz v5, :cond_14

    :goto_b
    invoke-direct {p0, v1, v0, v4}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_b

    :cond_15
    move v0, v3

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto/16 :goto_5

    :cond_17
    move v8, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
