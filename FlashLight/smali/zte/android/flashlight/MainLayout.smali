.class Lzte/android/flashlight/MainLayout;
.super Landroid/widget/RelativeLayout;
.source "FlashLightActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 591
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 593
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 573
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 574
    sub-int v5, p4, p2

    .line 575
    .local v5, width:I
    sub-int v1, p5, p3

    .line 576
    .local v1, height:I
    const/4 v6, 0x3

    new-array v3, v6, [[D

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [D

    fill-array-data v7, :array_0

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const/4 v7, 0x4

    new-array v7, v7, [D

    fill-array-data v7, :array_1

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x4

    new-array v7, v7, [D

    fill-array-data v7, :array_2

    aput-object v7, v3, v6

    .line 581
    .local v3, scale:[[D
    invoke-virtual {p0}, Lzte/android/flashlight/MainLayout;->getChildCount()I

    move-result v0

    .line 582
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 583
    invoke-virtual {p0, v2}, Lzte/android/flashlight/MainLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 584
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0a0003

    if-ne v6, v7, :cond_0

    .line 585
    int-to-double v6, v5

    const/4 v8, 0x0

    aget-object v8, v3, v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v7, v1

    const/4 v9, 0x0

    aget-object v9, v3, v9

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-double v8, v5

    const/4 v10, 0x0

    aget-object v10, v3, v10

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    mul-double/2addr v8, v10

    double-to-int v8, v8

    int-to-double v9, v1

    const/4 v11, 0x0

    aget-object v11, v3, v11

    const/4 v12, 0x3

    aget-wide v11, v11, v12

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 582
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    .end local v4           #view:Landroid/view/View;
    :cond_1
    return-void

    .line 576
    :array_0
    .array-data 0x8
        0xd1t 0x22t 0xdbt 0xf9t 0x7et 0x6at 0xdct 0x3ft
        0x50t 0x8dt 0x97t 0x6et 0x12t 0x83t 0xe4t 0x3ft
        0x10t 0x58t 0x39t 0xb4t 0xc8t 0x76t 0xe2t 0x3ft
        0xcbt 0xa1t 0x45t 0xb6t 0xf3t 0xfdt 0xe8t 0x3ft
    .end array-data

    :array_1
    .array-data 0x8
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0xdet 0x3ft
        0x46t 0xb6t 0xf3t 0xfdt 0xd4t 0x78t 0xe5t 0x3ft
        0x1dt 0x5at 0x64t 0x3bt 0xdft 0x4ft 0xe1t 0x3ft
        0xd7t 0xa3t 0x70t 0x3dt 0xat 0xd7t 0xe7t 0x3ft
    .end array-data

    :array_2
    .array-data 0x8
        0x62t 0x10t 0x58t 0x39t 0xb4t 0xc8t 0xdet 0x3ft
        0x60t 0xe5t 0xd0t 0x22t 0xdbt 0xf9t 0xe6t 0x3ft
        0x9et 0xeft 0xa7t 0xc6t 0x4bt 0x37t 0xe1t 0x3ft
        0xact 0x1ct 0x5at 0x64t 0x3bt 0xdft 0xe7t 0x3ft
    .end array-data
.end method
