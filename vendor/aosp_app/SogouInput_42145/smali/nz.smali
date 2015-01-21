.class Lnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:I

.field private a:J

.field final synthetic a:Lnr;

.field private b:I


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lnz;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x6c

    const/16 v3, 0x6b

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 448
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 449
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 451
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 581
    :goto_1
    return v0

    .line 455
    :pswitch_0
    iput v4, p0, Lnz;->a:I

    .line 456
    iput v5, p0, Lnz;->b:I

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnz;->a:J

    goto :goto_0

    .line 462
    :pswitch_1
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :try_start_0
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v0, :cond_5

    .line 466
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020059

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    :cond_1
    iget-object v0, p0, Lnz;->a:Lnr;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lnr;->b(Lnr;Z)Z

    .line 481
    :goto_2
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 483
    const/4 v3, -0x1

    .line 484
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lnz;->a:Lnr;

    invoke-static {v6}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v4, v0, :cond_7

    .line 485
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 496
    :goto_3
    if-nez v0, :cond_2

    move v0, v1

    .line 499
    :cond_2
    if-lez v0, :cond_3

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->d(Lnr;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 501
    iget-object v2, p0, Lnz;->a:Lnr;

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->d(Lnr;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lnr;->a(Lnr;II)V

    .line 502
    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2, v0}, Lnr;->a(Lnr;I)I

    .line 503
    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2, v0}, Lnr;->b(Lnr;I)I

    .line 507
    :cond_3
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->c(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->e(Lnr;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 509
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 510
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6c

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    :cond_4
    :goto_4
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->e(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 531
    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->e(Lnr;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v2

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 532
    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->e(Lnr;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v3

    iget-object v4, p0, Lnz;->a:Lnr;

    invoke-static {v4}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 533
    iget-object v4, p0, Lnz;->a:Lnr;

    invoke-static {v4}, Lnr;->e(Lnr;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v4

    iget-object v5, p0, Lnz;->a:Lnr;

    invoke-static {v5}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 534
    iget-object v5, p0, Lnz;->a:Lnr;

    invoke-static {v5}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2, v4}, Landroid/widget/ImageView;->layout(IIII)V

    :goto_5
    move v0, v1

    .line 540
    goto/16 :goto_1

    .line 473
    :cond_5
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 474
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :cond_6
    iget-object v0, p0, Lnz;->a:Lnr;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lnr;->b(Lnr;Z)Z

    goto/16 :goto_2

    .line 535
    :catch_0
    move-exception v0

    goto :goto_5

    .line 486
    :cond_7
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge v4, v0, :cond_9

    move v0, v2

    .line 487
    goto/16 :goto_3

    .line 489
    :cond_8
    add-int/lit8 v2, v2, 0x1

    :cond_9
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 490
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 492
    goto/16 :goto_3

    .line 512
    :cond_a
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->e(Lnr;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 514
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 515
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6b

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 518
    :cond_b
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    .line 523
    :cond_c
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->d(Lnr;)I

    move-result v0

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->e(Lnr;)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 524
    iget-object v0, p0, Lnz;->a:Lnr;

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->d(Lnr;)I

    move-result v2

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->e(Lnr;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lnr;->a(Lnr;II)V

    .line 525
    iget-object v0, p0, Lnz;->a:Lnr;

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->e(Lnr;)I

    move-result v2

    invoke-static {v0, v2}, Lnr;->a(Lnr;I)I

    .line 526
    iget-object v0, p0, Lnz;->a:Lnr;

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->e(Lnr;)I

    move-result v2

    invoke-static {v0, v2}, Lnr;->b(Lnr;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 546
    :pswitch_2
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionTabScrollView;->setCanScroll(Z)V

    .line 547
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->c(Lnr;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0, v2}, Lnr;->c(Lnr;Z)Z

    .line 552
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 553
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "base"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->c(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 554
    :cond_d
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-virtual {v0}, Lnr;->b()V

    .line 555
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x69

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 568
    :cond_e
    :goto_6
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0, v2}, Lnr;->b(Lnr;Z)Z

    :goto_7
    move v0, v1

    .line 575
    goto/16 :goto_1

    .line 561
    :cond_f
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 563
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Lcom/sohu/inputmethod/sogou/SogouIME;

    move-result-object v0

    iget-object v3, p0, Lnz;->a:Lnr;

    invoke-static {v3}, Lnr;->b(Lnr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(Ljava/lang/String;)V

    goto :goto_6

    .line 571
    :cond_10
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x69

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 572
    iget-object v0, p0, Lnz;->a:Lnr;

    iget-object v2, p0, Lnz;->a:Lnr;

    invoke-static {v2}, Lnr;->f(Lnr;)I

    move-result v2

    invoke-static {v0, v2}, Lnr;->b(Lnr;I)V

    .line 573
    iget-object v0, p0, Lnz;->a:Lnr;

    invoke-virtual {v0}, Lnr;->b()V

    goto :goto_7

    :cond_11
    move v0, v3

    goto/16 :goto_3

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
