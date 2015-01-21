.class public Lih;
.super Lgw;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View$OnLongClickListener;

.field final synthetic a:Lhr;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Lhr;Landroid/content/Context;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1418
    iput-object p1, p0, Lih;->a:Lhr;

    .line 1419
    invoke-direct {p0, p2, p3, p4}, Lgw;-><init>(Landroid/content/Context;ZI)V

    .line 1409
    const/4 v0, 0x0

    iput v0, p0, Lih;->d:I

    .line 1410
    const/4 v0, 0x1

    iput v0, p0, Lih;->e:I

    .line 1411
    const/4 v0, 0x2

    iput v0, p0, Lih;->f:I

    .line 1412
    const/4 v0, 0x3

    iput v0, p0, Lih;->g:I

    .line 1413
    const/4 v0, 0x4

    iput v0, p0, Lih;->h:I

    .line 1414
    const/4 v0, -0x1

    iput v0, p0, Lih;->i:I

    .line 1589
    new-instance v0, Lii;

    invoke-direct {v0, p0}, Lii;-><init>(Lih;)V

    iput-object v0, p0, Lih;->b:Landroid/view/View$OnClickListener;

    .line 1610
    new-instance v0, Lij;

    invoke-direct {v0, p0}, Lij;-><init>(Lih;)V

    iput-object v0, p0, Lih;->c:Landroid/view/View$OnClickListener;

    .line 1639
    new-instance v0, Lik;

    invoke-direct {v0, p0}, Lik;-><init>(Lih;)V

    iput-object v0, p0, Lih;->a:Landroid/view/View$OnLongClickListener;

    .line 1421
    const/4 v0, 0x5

    iput v0, p0, Lih;->c:I

    .line 1422
    return-void
.end method

.method static synthetic a(Lih;)I
    .locals 1
    .parameter

    .prologue
    .line 1407
    iget v0, p0, Lih;->i:I

    return v0
.end method

.method static synthetic a(Lih;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1407
    iput p1, p0, Lih;->i:I

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1425
    iget-boolean v1, p0, Lih;->b:Z

    if-eqz v1, :cond_0

    .line 1435
    :goto_0
    return v0

    .line 1426
    :cond_0
    iget-boolean v1, p0, Lih;->c:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lih;->d:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1427
    :cond_2
    iput v0, p0, Lih;->a:I

    .line 1428
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1429
    :cond_3
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1430
    iput v0, p0, Lgw;->b:I

    .line 1431
    int-to-double v0, v0

    iget-object v2, p0, Lih;->a:Lhr;

    invoke-static {v2}, Lhr;->a(Lhr;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lih;->a:I

    .line 1433
    iget-boolean v0, p0, Lih;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->f(Lhr;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Lhh;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lih;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lih;->a:I

    .line 1435
    :cond_4
    iget v0, p0, Lih;->a:I

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 1440
    iget-boolean v0, p0, Lih;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1444
    :goto_0
    return v0

    .line 1441
    :cond_0
    iget-boolean v0, p0, Lih;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 1443
    :cond_1
    iget-boolean v0, p0, Lih;->a:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->f(Lhr;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Lhh;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1444
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1451
    invoke-virtual {p0, p1}, Lih;->getItemViewType(I)I

    move-result v0

    .line 1452
    packed-switch v0, :pswitch_data_0

    .line 1558
    :cond_0
    :goto_0
    return-object p2

    .line 1454
    :pswitch_0
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1455
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1457
    :cond_1
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/RelativeLayout;

    move-result-object p2

    .line 1458
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lih;->a:Lhr;

    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->e(Lhr;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhr;->b(Lhr;Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    :pswitch_1
    iget-boolean v0, p0, Lih;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->f(Lhr;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Lhh;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1463
    :cond_2
    const/4 v1, 0x0

    .line 1464
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1465
    :cond_3
    invoke-static {p2}, Lhl;->a(Landroid/view/View;)V

    .line 1466
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030067

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1467
    invoke-virtual {p0, p1, v0, v1}, Lih;->a(ILandroid/view/View;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1468
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    move-object v0, v1

    .line 1472
    :goto_1
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->g(Lhr;)V

    .line 1473
    const/4 v1, 0x0

    .line 1474
    iget-object v2, p0, Lih;->a:Lhr;

    invoke-static {v2}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1475
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 1476
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)I

    move-result v1

    mul-int/2addr v1, p1

    add-int v6, v2, v1

    .line 1477
    if-ge v6, v4, :cond_c

    .line 1478
    iget-object v1, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1480
    if-nez v6, :cond_6

    .line 1481
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Lhk;

    move-result-object v1

    .line 1499
    :goto_3
    iget-object v3, v1, Lhk;->b:Ljava/lang/String;

    iget-object v7, p0, Lih;->a:Lhr;

    invoke-static {v7}, Lhr;->b(Lhr;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v1, Lhk;->b:Z

    .line 1501
    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljq;->a()Lhk;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1502
    invoke-virtual {v0}, Ljq;->a()Lhk;

    move-result-object v3

    const/4 v7, 0x0

    iput-boolean v7, v3, Lhk;->f:Z

    .line 1503
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, v1, Lhk;->f:Z

    .line 1504
    iget-object v3, p0, Lih;->a:Lhr;

    invoke-static {v3}, Lhr;->a(Lhr;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1505
    iget-boolean v3, v1, Lhk;->b:Z

    if-eqz v3, :cond_9

    .line 1506
    iget-object v3, v0, Ljq;->b:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1507
    iget-object v3, p0, Lih;->a:Lhr;

    iget v7, v1, Lhk;->c:I

    invoke-static {v3, v7}, Lhr;->c(Lhr;I)I

    .line 1508
    iget-object v3, p0, Lih;->a:Lhr;

    iget v7, v1, Lhk;->b:I

    invoke-static {v3, v7}, Lhr;->d(Lhr;I)I

    .line 1510
    :goto_5
    iget-object v3, p0, Lih;->a:Lhr;

    invoke-static {v3}, Lhr;->g(Lhr;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, v1, Lhk;->b:Z

    if-nez v3, :cond_a

    iget-boolean v3, v1, Lhk;->d:Z

    if-nez v3, :cond_a

    iget-object v3, v1, Lhk;->b:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1512
    iget-object v3, v0, Ljq;->d:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1513
    iget-object v3, v0, Ljq;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 1514
    iget-object v3, v0, Ljq;->d:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    iget-object v3, v0, Ljq;->d:Landroid/widget/ImageView;

    iget-object v7, p0, Lih;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    :goto_6
    iget-object v3, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 1518
    iget-object v3, v0, Ljq;->a:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    iget-object v3, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lih;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1520
    iget-object v3, v0, Ljq;->a:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1521
    iget-object v3, v0, Ljq;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lih;->a:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1522
    iget-object v3, p0, Lih;->a:Lhr;

    invoke-static {v3, v0, v1}, Lhr;->a(Lhr;Ljq;Lhk;)V

    .line 1537
    :goto_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1538
    goto/16 :goto_2

    .line 1470
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1483
    :cond_6
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1484
    iget-object v3, p0, Lih;->a:Lhr;

    invoke-static {v3, v1}, Lhr;->a(Lhr;Ljava/lang/String;)Lhk;

    move-result-object v3

    .line 1485
    if-nez v3, :cond_f

    .line 1486
    new-instance v3, Lhk;

    invoke-direct {v3}, Lhk;-><init>()V

    .line 1487
    const/16 v7, 0x2f

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1488
    add-int/lit8 v7, v7, 0x1

    const-string v8, ".ssf"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1489
    iput-object v1, v3, Lhk;->d:Ljava/lang/String;

    .line 1490
    iput-object v7, v3, Lhk;->a:Ljava/lang/String;

    .line 1491
    iput-object v7, v3, Lhk;->b:Ljava/lang/String;

    .line 1492
    const/4 v1, 0x5

    iput v1, v3, Lhk;->a:I

    .line 1493
    const-string v1, "android_internal_"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1494
    iget-object v1, p0, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->b(Lhr;)Landroid/content/Context;

    move-result-object v1

    const v7, 0x7f0b00e0

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lhk;->i:Ljava/lang/String;

    :cond_7
    move-object v1, v3

    .line 1496
    :goto_8
    iput v6, v1, Lhk;->c:I

    .line 1497
    iput p1, v1, Lhk;->b:I

    goto/16 :goto_3

    .line 1500
    :cond_8
    const/4 v3, 0x0

    iput-boolean v3, v1, Lhk;->b:Z

    goto/16 :goto_4

    .line 1509
    :cond_9
    iget-object v3, v0, Ljq;->b:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1516
    :cond_a
    iget-object v3, v0, Ljq;->d:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1524
    :cond_b
    iget-object v3, v0, Ljq;->b:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1525
    iget-object v3, v0, Ljq;->d:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1526
    iget-object v3, v0, Ljq;->a:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1527
    iget-object v3, v0, Ljq;->b:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1528
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljq;->a(Z)V

    .line 1529
    iget-object v3, v0, Ljq;->a:Landroid/widget/ImageView;

    const v6, 0x7f020159

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1530
    invoke-static {v0, v1}, Lhl;->a(Ljq;Lhk;)Z

    .line 1531
    invoke-virtual {v0, v1}, Ljq;->a(Lhk;)V

    goto/16 :goto_7

    .line 1534
    :cond_c
    iget-object v1, v0, Ljq;->a:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1535
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljq;->a(Z)V

    goto/16 :goto_7

    .line 1541
    :pswitch_2
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1542
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 1544
    :cond_d
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Landroid/widget/LinearLayout;

    move-result-object p2

    goto/16 :goto_0

    .line 1548
    :pswitch_3
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->c(Lhr;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1549
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lih;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lhr;->a(Lhr;Landroid/view/View;)Landroid/view/View;

    .line 1550
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->c(Lhr;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 1552
    :cond_e
    iget-object v0, p0, Lih;->a:Lhr;

    invoke-static {v0}, Lhr;->c(Lhr;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_f
    move-object v1, v3

    goto/16 :goto_8

    .line 1452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
