.class public Lpw;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnClickListener;

.field final synthetic a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

.field a:Lni;

.field a:Lno;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1427
    iput-object p1, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1378
    new-instance v0, Lpx;

    invoke-direct {v0, p0}, Lpx;-><init>(Lpw;)V

    iput-object v0, p0, Lpw;->a:Lno;

    .line 1402
    new-instance v0, Lpy;

    invoke-direct {v0, p0}, Lpy;-><init>(Lpw;)V

    iput-object v0, p0, Lpw;->a:Landroid/view/View$OnClickListener;

    .line 1428
    iput-object p2, p0, Lpw;->a:Landroid/content/Context;

    .line 1429
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lpw;->a:Landroid/view/LayoutInflater;

    .line 1431
    new-instance v0, Lni;

    invoke-direct {v0}, Lni;-><init>()V

    iput-object v0, p0, Lpw;->a:Lni;

    .line 1432
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lpw;->a:Lni;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lpw;->a:Lni;

    invoke-virtual {v0}, Lni;->a()V

    .line 1546
    :cond_0
    return-void
.end method

.method public static synthetic a(Lpw;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    invoke-direct {p0}, Lpw;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lpw;->a:Lni;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lpw;->a:Lni;

    invoke-virtual {v0}, Lni;->b()V

    .line 1553
    :cond_0
    return-void
.end method

.method public static synthetic b(Lpw;)V
    .locals 0
    .parameter

    .prologue
    .line 1373
    invoke-direct {p0}, Lpw;->b()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 1436
    const/4 v0, 0x0

    .line 1437
    iget-object v1, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1440
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1445
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1450
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0b0497

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1456
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1457
    :cond_0
    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    iget-object v0, v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1458
    new-instance v1, Lpz;

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-direct {v1, v0}, Lpz;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    .line 1459
    const v0, 0x7f070089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lpz;->a:Landroid/widget/ImageView;

    .line 1460
    const v0, 0x7f07008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpz;->a:Landroid/widget/TextView;

    .line 1461
    const v0, 0x7f07008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpz;->b:Landroid/widget/TextView;

    .line 1462
    const v0, 0x7f07008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lpz;->a:Landroid/widget/RelativeLayout;

    .line 1463
    const v0, 0x7f07008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lpz;->a:Landroid/widget/ProgressBar;

    .line 1464
    const v0, 0x7f07008e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpz;->c:Landroid/widget/TextView;

    .line 1465
    const v0, 0x7f070090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    .line 1466
    const v0, 0x7f070091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lpz;->b:Landroid/widget/ImageView;

    .line 1467
    const v0, 0x7f070092

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lpz;->d:Landroid/widget/TextView;

    .line 1468
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1473
    :goto_0
    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v2, v0, Lnp;->a:Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->b:Ljava/lang/String;

    .line 1475
    iget-object v3, p0, Lpw;->a:Lni;

    invoke-virtual {v3, v2}, Lni;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1476
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1477
    :cond_1
    iget-object v3, v1, Lpz;->a:Landroid/widget/ImageView;

    const v4, 0x7f02007b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1478
    iget-object v3, p0, Lpw;->a:Lni;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lpw;->a:Lno;

    invoke-virtual {v3, v4, v2, v0, v5}, Lni;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V

    .line 1482
    :goto_1
    iget-object v2, v1, Lpz;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1483
    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget v0, v0, Lnp;->a:I

    packed-switch v0, :pswitch_data_0

    .line 1512
    :goto_2
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1513
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lpw;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    return-object p2

    .line 1470
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpz;

    move-object v1, v0

    goto :goto_0

    .line 1480
    :cond_3
    iget-object v0, v1, Lpz;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-virtual {v4}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1485
    :pswitch_0
    iget-object v0, v1, Lpz;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1486
    iget-object v0, v1, Lpz;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1487
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1488
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1489
    iget-object v0, v1, Lpz;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1490
    iget-object v2, v1, Lpz;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->h:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->i:Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-virtual {v3, v10, v4}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1493
    :pswitch_1
    iget-object v0, v1, Lpz;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1494
    iget-object v0, v1, Lpz;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1495
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1496
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1497
    iget-object v0, v1, Lpz;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1498
    iget-object v2, v1, Lpz;->a:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget v0, v0, Lnp;->b:I

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1499
    iget-object v2, v1, Lpz;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget v0, v0, Lnp;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1502
    :pswitch_2
    iget-object v0, v1, Lpz;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1503
    iget-object v0, v1, Lpz;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1504
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1505
    iget-object v0, v1, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1506
    iget-object v0, v1, Lpz;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1507
    iget-object v2, v1, Lpz;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->h:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p0, Lpw;->a:Lcom/sohu/inputmethod/expression/ExpressionRepository;

    invoke-static {v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->i:Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-virtual {v3, v10, v4}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
