.class public Liq;
.super Lgw;
.source "SourceFile"


# instance fields
.field a:Lhd;

.field final synthetic a:Lim;

.field b:Landroid/view/View$OnClickListener;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lim;Landroid/content/Context;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Liq;->a:Lim;

    .line 429
    invoke-direct {p0, p2, p3, p4}, Lgw;-><init>(Landroid/content/Context;ZI)V

    .line 421
    const/4 v0, 0x0

    iput v0, p0, Liq;->d:I

    .line 422
    const/4 v0, 0x1

    iput v0, p0, Liq;->e:I

    .line 423
    const/4 v0, 0x2

    iput v0, p0, Liq;->f:I

    .line 424
    const/4 v0, 0x3

    iput v0, p0, Liq;->g:I

    .line 425
    const/4 v0, 0x4

    iput v0, p0, Liq;->h:I

    .line 538
    new-instance v0, Lir;

    invoke-direct {v0, p0}, Lir;-><init>(Liq;)V

    iput-object v0, p0, Liq;->b:Landroid/view/View$OnClickListener;

    .line 560
    new-instance v0, Lis;

    invoke-direct {v0, p0}, Lis;-><init>(Liq;)V

    iput-object v0, p0, Liq;->a:Lhd;

    .line 431
    const/4 v0, 0x5

    iput v0, p0, Liq;->c:I

    .line 432
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-static {p3}, Lgy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Lage;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Lage;

    move-result-object v1

    iget-object v1, v1, Lage;->a:Lgy;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)Lage;

    move-result-object v1

    iget-object v1, v1, Lage;->a:Lgy;

    invoke-virtual {v1, v0}, Lgy;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_1

    .line 530
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const v0, 0x7f020159

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 533
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Lage;

    move-result-object v0

    iget-object v0, v0, Lage;->a:Lgy;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p2, Lhk;->a:Ljava/lang/String;

    iget-object v3, p0, Liq;->a:Lhd;

    invoke-virtual {v0, v1, p3, v2, v3}, Lgy;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lhd;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 435
    iget-boolean v1, p0, Liq;->b:Z

    if-eqz v1, :cond_0

    .line 441
    :goto_0
    return v0

    .line 436
    :cond_0
    iget-boolean v1, p0, Liq;->c:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Liq;->d:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    :cond_2
    iput v0, p0, Liq;->a:I

    .line 438
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lgw;->b:I

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Liq;->a:Lim;

    invoke-static {v2}, Lim;->a(Lim;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Liq;->a:I

    .line 441
    :cond_3
    iget v0, p0, Liq;->a:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-boolean v0, p0, Liq;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 448
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-boolean v0, p0, Liq;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 448
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x4

    const/4 v3, 0x0

    .line 452
    invoke-virtual {p0, p1}, Liq;->getItemViewType(I)I

    move-result v0

    .line 453
    packed-switch v0, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    :pswitch_0
    return-object p2

    .line 459
    :pswitch_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 461
    :cond_1
    invoke-static {p2}, Lhl;->a(Landroid/view/View;)V

    .line 462
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030067

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 464
    invoke-virtual {p0, p1, v0, v2}, Liq;->a(ILandroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    move-object v0, v1

    .line 470
    :goto_1
    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 472
    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->a(Lim;)I

    move-result v1

    mul-int/2addr v1, p1

    add-int v6, v2, v1

    .line 473
    if-ge v6, v4, :cond_5

    .line 474
    iget-object v1, p0, Liq;->a:Lim;

    invoke-static {v1}, Lim;->b(Lim;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhk;

    .line 475
    iput v6, v1, Lhk;->c:I

    .line 476
    iput p1, v1, Lhk;->b:I

    .line 477
    iget-object v7, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v7, p0, Liq;->a:Lim;

    invoke-static {v7}, Lim;->a(Lim;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 479
    iget-object v7, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 481
    iget-object v7, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v8, p0, Liq;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v7, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 485
    iget-object v7, p0, Liq;->a:Lim;

    invoke-static {v7}, Lim;->a(Lim;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v9, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v10, v1, Lhk;->a:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 486
    :cond_2
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    .line 487
    iget-object v7, p0, Liq;->a:Lim;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--------------position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lim;->a(Lim;Ljava/lang/String;)V

    .line 488
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, v1, Lhk;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v6}, Liq;->a(Landroid/widget/ImageView;Lhk;Ljava/lang/String;)V

    .line 501
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 502
    goto :goto_2

    .line 467
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 490
    :cond_4
    iget-object v1, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 491
    iget-object v1, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Liq;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v1, v0, Ljq;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v1, v0, Ljq;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljq;->a(Z)V

    .line 495
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 498
    :cond_5
    iget-object v1, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    goto :goto_3

    .line 508
    :pswitch_2
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 509
    iget-object v0, p0, Liq;->a:Lim;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Liq;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lim;->a(Lim;Landroid/view/View;)Landroid/view/View;

    .line 511
    :cond_6
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->a(Lim;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 514
    :pswitch_3
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    .line 515
    iget-object v0, p0, Liq;->a:Lim;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Liq;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lim;->b(Lim;Landroid/view/View;)Landroid/view/View;

    .line 517
    :cond_7
    iget-object v0, p0, Liq;->a:Lim;

    invoke-static {v0}, Lim;->b(Lim;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
