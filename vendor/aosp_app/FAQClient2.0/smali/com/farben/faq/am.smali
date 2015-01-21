.class final Lcom/farben/faq/am;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/ListActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->f(Lcom/farben/faq/ListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/farben/faq/ListActivity;->a(Lcom/farben/faq/ListActivity;Z)V

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->g(Lcom/farben/faq/ListActivity;)V

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/farben/faq/ListActivity;->a(Lcom/farben/faq/ListActivity;Z)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->h(Lcom/farben/faq/ListActivity;)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->i(Lcom/farben/faq/ListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    iget-object v1, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    iget v1, v1, Lcom/farben/faq/ListActivity;->f:I

    invoke-virtual {v0, v1}, Lcom/farben/faq/ListActivity;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    iget-object v1, v1, Lcom/farben/faq/ListActivity;->c:Lcom/farben/faq/a/f;

    invoke-virtual {v1, v0}, Lcom/farben/faq/a/f;->a(Ljava/util/List;)V

    sget-object v0, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->i(Lcom/farben/faq/ListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    iget-object v0, v0, Lcom/farben/faq/ListActivity;->n:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    iget-object v0, v0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/farben/faq/ListActivity;->d:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    iget-object v0, v0, Lcom/farben/faq/ListActivity;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->h(Lcom/farben/faq/ListActivity;)V

    goto :goto_1

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-virtual {v0}, Lcom/farben/faq/ListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_8

    const/16 v0, -0x12c

    move v8, v0

    :goto_2
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const v5, 0x42b2aaab

    const v6, 0x4384aaab

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/high16 v5, 0x4396

    iget v6, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x4370

    div-float/2addr v5, v6

    const v6, 0x436e0002

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v1}, Lcom/farben/faq/ListActivity;->b(Lcom/farben/faq/ListActivity;)Lcom/farben/faq/widget/ChannelGallery;

    move-result-object v1

    int-to-float v2, v8

    const/4 v3, 0x0

    invoke-virtual {v1, v10, v0, v2, v3}, Lcom/farben/faq/widget/ChannelGallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto/16 :goto_0

    :cond_8
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_9

    const/16 v0, -0x1e0

    move v8, v0

    goto :goto_2

    :cond_9
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_a

    const/16 v0, -0x258

    move v8, v0

    goto :goto_2

    :cond_a
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, -0x401a8f5c28f5c28fL

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_2

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const v5, 0x42b2aaab

    const v6, 0x4384aaab

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/high16 v5, 0x4396

    const v6, 0x436e0002

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/am;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v1}, Lcom/farben/faq/ListActivity;->b(Lcom/farben/faq/ListActivity;)Lcom/farben/faq/widget/ChannelGallery;

    move-result-object v1

    int-to-float v2, v8

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v0, v2, v3}, Lcom/farben/faq/widget/ChannelGallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto/16 :goto_0
.end method
