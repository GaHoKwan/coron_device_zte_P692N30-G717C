.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$ȃ;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$鷭;,
        Landroid/support/v4/view/ViewPager$櫯;,
        Landroid/support/v4/view/ViewPager$ˮ͈;,
        Landroid/support/v4/view/ViewPager$if;
    }
.end annotation


# static fields
.field private static final Ą:[I

.field private static final ą:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Landroid/support/v4/view/ViewPager$if;>;"
        }
    .end annotation
.end field

.field private static final Ć:Landroid/view/animation/Interpolator;


# instance fields
.field private final ć:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/support/v4/view/ViewPager$if;>;"
        }
    .end annotation
.end field

.field private ċ:Landroid/widget/Scroller;

.field private đ:I

.field private Ē:I

.field private ē:Z

.field private Ė:Z

.field private ė:I

.field private Ę:Z

.field private ę:Z

.field private ġ:I

.field private ģ:Z

.field private Ĥ:Lo/Ė;

.field private ĥ:Lo/Ė;

.field private Ħ:Z

.field private ħ:Z

.field private Ĩ:I

.field private Ī:I

.field ȃ:Landroid/support/v4/view/ViewPager$櫯;

.field private Ȋ:Ljava/lang/ClassLoader;

.field private Ƞ:I

.field ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

.field private ˮ͍:I

.field private ܕ:I

.field private ܨ:I

.field private ঽ্:F

.field private 㥳:Z

.field private 㱽:Landroid/view/VelocityTracker;

.field private 㵼:I

.field private 䒧:I

.field private 囃:F

.field private 岱:Landroid/os/Parcelable;

.field private 庸:I

.field private 廂:I

.field private 廅:F

.field private 廑:Landroid/support/v4/view/ViewPager$ˮ͈;

.field 櫯:I

.field private 纫:Landroid/support/v4/view/ViewPager$ȃ;

.field private 躆:Landroid/graphics/drawable/Drawable;

.field 鷭:Lo/ċ;

.field private 띥:Z


# direct methods
.method static <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/ViewPager;->Ą:[I

    .line 100
    new-instance v0, Lo/Ē;

    invoke-direct {v0}, Lo/Ē;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->ą:Ljava/util/Comparator;

    .line 106
    new-instance v0, Lo/띥;

    invoke-direct {v0}, Lo/띥;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->Ć:Landroid/view/animation/Interpolator;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xb3t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͍:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->岱:Landroid/os/Parcelable;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ȋ:Ljava/lang/ClassLoader;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ė:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ħ:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    .line 272
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ˮ͈()V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͍:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->岱:Landroid/os/Parcelable;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ȋ:Ljava/lang/ClassLoader;

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ė:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ħ:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    .line 277
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ˮ͈()V

    .line 278
    return-void
.end method

.method private Ą()V
    .locals 7

    .line 0
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->Ė:Z

    .line 1257
    if-eqz v2, :cond_3

    .line 1259
    move-object v3, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/support/v4/view/ViewPager;->띥:Z

    .line 1260
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1261
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1262
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1263
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1264
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1265
    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 1266
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1268
    :cond_2
    move-object v3, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, v3, Landroid/support/v4/view/ViewPager;->Ī:I

    iget-object v0, v3, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_3

    iget-object v0, v3, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$ˮ͈;->櫯(I)V

    .line 1270
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->㥳:Z

    .line 1271
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ė:Z

    .line 1272
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1273
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v4, v0

    .line 1274
    iget-boolean v0, v4, Landroid/support/v4/view/ViewPager$if;->ˮ͈:Z

    if-eqz v0, :cond_4

    .line 1275
    const/4 v2, 0x1

    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager$if;->ˮ͈:Z

    .line 1272
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1279
    :cond_5
    if-eqz v2, :cond_6

    .line 1280
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 1282
    :cond_6
    return-void
.end method

.method private ą()Z
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v1}, Lo/ċ;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1913
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1914
    const/4 v0, 0x1

    return v0

    .line 1916
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ȃ()V
    .locals 8

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-nez v0, :cond_0

    .line 721
    return-void

    .line 728
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->㥳:Z

    if-eqz v0, :cond_1

    .line 730
    return-void

    .line 736
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 737
    return-void

    .line 740
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0}, Lo/ċ;->startUpdate(Landroid/view/ViewGroup;)V

    .line 742
    iget v3, p0, Landroid/support/v4/view/ViewPager;->ė:I

    .line 743
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    sub-int/2addr v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 744
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    .line 745
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 750
    const/4 v5, -0x1

    .line 751
    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 752
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v7, v0

    .line 753
    iget v0, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    if-lt v0, v4, :cond_3

    iget v0, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    if-le v0, v3, :cond_4

    :cond_3
    iget-boolean v0, v7, Landroid/support/v4/view/ViewPager$if;->ˮ͈:Z

    if-nez v0, :cond_4

    .line 755
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    add-int/lit8 v6, v6, -0x1

    .line 757
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget v1, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget-object v2, v7, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lo/ċ;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_2

    .line 758
    :cond_4
    if-ge v5, v3, :cond_6

    iget v0, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    if-le v0, v4, :cond_6

    .line 762
    add-int/lit8 v5, v5, 0x1

    .line 763
    if-ge v5, v4, :cond_5

    .line 764
    move v5, v4

    .line 766
    :cond_5
    :goto_1
    if-gt v5, v3, :cond_6

    iget v0, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    if-ge v5, v0, :cond_6

    .line 768
    invoke-direct {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->櫯(II)V

    .line 769
    add-int/lit8 v5, v5, 0x1

    .line 770
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 773
    :cond_6
    :goto_2
    iget v5, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    .line 751
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 777
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    iget v5, v0, Landroid/support/v4/view/ViewPager$if;->櫯:I

    goto :goto_3

    :cond_8
    const/4 v5, -0x1

    .line 778
    :goto_3
    if-ge v5, v3, :cond_a

    .line 779
    add-int/lit8 v5, v5, 0x1

    .line 780
    if-le v5, v4, :cond_9

    goto :goto_4

    :cond_9
    move v5, v4

    .line 781
    :goto_4
    if-gt v5, v3, :cond_a

    .line 783
    const/4 v0, -0x1

    invoke-direct {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->櫯(II)V

    .line 784
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 795
    :cond_a
    const/4 v6, 0x0

    .line 796
    const/4 v7, 0x0

    :goto_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_c

    .line 797
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    iget v0, v0, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_b

    .line 798
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v6, v0

    .line 799
    goto :goto_6

    .line 796
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 802
    :cond_c
    :goto_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-eqz v6, :cond_d

    iget-object v2, v6, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v0, p0, v1, v2}, Lo/ċ;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 804
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0}, Lo/ċ;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 806
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 807
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 808
    if-eqz v7, :cond_e

    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->櫯(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v3

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 809
    :goto_8
    if-eqz v3, :cond_f

    iget v0, v3, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-eq v0, v1, :cond_11

    .line 810
    :cond_f
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_11

    .line 811
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 812
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v3

    .line 813
    if-eqz v3, :cond_10

    iget v0, v3, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_10

    .line 814
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 815
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 821
    :cond_11
    return-void
.end method

.method private ˮ͈()V
    .locals 4

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 282
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 285
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Landroid/support/v4/view/ViewPager;->Ć:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    .line 286
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 287
    invoke-static {v3}, Lo/庸;->鷭(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->廂:I

    .line 288
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ƞ:I

    .line 289
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ġ:I

    .line 290
    new-instance v0, Lo/Ė;

    invoke-direct {v0, v2}, Lo/Ė;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    .line 291
    new-instance v0, Lo/Ė;

    invoke-direct {v0, v2}, Lo/Ė;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 294
    const/high16 v0, 0x41c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ܨ:I

    .line 295
    return-void
.end method

.method private 櫯(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;
    .locals 2

    .line 0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 945
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_1

    .line 946
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 948
    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 950
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v0

    return-object v0
.end method

.method private 櫯(II)V
    .locals 2

    .line 0
    new-instance v1, Landroid/support/v4/view/ViewPager$if;

    invoke-direct {v1}, Landroid/support/v4/view/ViewPager$if;-><init>()V

    .line 648
    iput p1, v1, Landroid/support/v4/view/ViewPager$if;->櫯:I

    .line 649
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0, p1}, Lo/ċ;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    .line 650
    if-gez p2, :cond_0

    .line 651
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 655
    return-void
.end method

.method private 櫯(I)Z
    .locals 5

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1866
    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    .line 1868
    :cond_0
    const/4 v3, 0x0

    .line 1870
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1872
    if-eqz v4, :cond_5

    if-eq v4, v2, :cond_5

    .line 1873
    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    .line 1876
    if-eqz v2, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1877
    move-object v2, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-lez v0, :cond_1

    iget v0, v2, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    goto/16 :goto_2

    .line 1879
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto/16 :goto_2

    .line 1881
    :cond_3
    const/16 v0, 0x42

    if-ne p1, v0, :cond_a

    .line 1884
    if-eqz v2, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v0, v1, :cond_9

    .line 1885
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v3

    goto :goto_2

    .line 1890
    :cond_5
    const/16 v0, 0x11

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 1892
    :cond_6
    move-object v2, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-lez v0, :cond_7

    iget v0, v2, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    goto :goto_2

    .line 1893
    :cond_8
    const/16 v0, 0x42

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 1895
    :cond_9
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ą()Z

    move-result v3

    .line 1897
    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    .line 1898
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 1900
    :cond_b
    return v3
.end method

.method static synthetic 櫯()[I
    .locals 1

    .line 0
    sget-object v0, Landroid/support/v4/view/ViewPager;->Ą:[I

    return-object v0
.end method

.method private 鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;
    .locals 4

    .line 0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 934
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v3, v0

    .line 935
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget-object v1, v3, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/ċ;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    return-object v3

    .line 933
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private 鷭(I)V
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int v2, v0, v1

    .line 1181
    div-int v3, p1, v2

    .line 1182
    rem-int v0, p1, v2

    .line 1183
    int-to-float v0, v0

    int-to-float v1, v2

    div-float v2, v0, v1

    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ħ:Z

    .line 1186
    invoke-direct {p0, v3, v2}, Landroid/support/v4/view/ViewPager;->鷭(IF)V

    .line 1187
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ħ:Z

    if-nez v0, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_0
    return-void
.end method

.method private 鷭(IF)V
    .locals 10

    .line 0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ĩ:I

    if-lez v0, :cond_1

    .line 1208
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1209
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    .line 1211
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1212
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1213
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 1214
    invoke-virtual {p0, v7}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1215
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v9, v0

    .line 1216
    iget-boolean v0, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    if-eqz v0, :cond_0

    .line 1218
    iget v0, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->櫯:I

    and-int/lit8 v0, v0, 0x7

    .line 1219
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1222
    :goto_1
    :pswitch_0
    move v9, v3

    .line 1223
    goto :goto_2

    .line 1225
    :pswitch_1
    move v9, v3

    .line 1226
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v3, v0

    .line 1227
    goto :goto_2

    .line 1229
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1231
    goto :goto_2

    .line 1233
    :pswitch_3
    sub-int v0, v5, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v9, v0, v1

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v4, v0

    .line 1237
    :goto_2
    add-int v0, v9, v2

    .line 1239
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v9, v0, v1

    .line 1240
    if-eqz v9, :cond_0

    .line 1241
    invoke-virtual {v8, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1213
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1246
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/ViewPager$ˮ͈;->鷭(IF)V

    .line 1249
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_3

    .line 1250
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/ViewPager$ˮ͈;->鷭(IF)V

    .line 1252
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ħ:Z

    .line 1253
    return-void
.end method

.method private 鷭(II)V
    .locals 12

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 609
    move-object v10, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/support/v4/view/ViewPager;->띥:Z

    .line 610
    :cond_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v7

    .line 614
    sub-int/2addr p1, v6

    .line 615
    rsub-int/lit8 v8, v7, 0x0

    .line 616
    if-nez p1, :cond_3

    if-nez v8, :cond_3

    .line 617
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Ą()V

    .line 618
    move-object v10, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, v10, Landroid/support/v4/view/ViewPager;->Ī:I

    iget-object v0, v10, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_2

    iget-object v0, v10, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$ˮ͈;->櫯(I)V

    .line 619
    :cond_2
    return-void

    .line 622
    :cond_3
    move-object v10, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/support/v4/view/ViewPager;->띥:Z

    .line 623
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ė:Z

    .line 624
    move-object v10, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v0, 0x2

    iput v0, v10, Landroid/support/v4/view/ViewPager;->Ī:I

    iget-object v0, v10, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_5

    iget-object v0, v10, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$ˮ͈;->櫯(I)V

    .line 626
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v9

    .line 627
    div-int/lit8 v10, v9, 0x2

    .line 628
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    int-to-float v1, v9

    div-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 629
    int-to-float v0, v10

    int-to-float v1, v10

    const/high16 v2, 0x3f00

    sub-float v2, v11, v2

    float-to-double v2, v2

    const-wide v4, 0x3fde28c7460698c7L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float v10, v0, v1

    .line 632
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 634
    if-lez p2, :cond_6

    .line 635
    int-to-float v0, p2

    div-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 p2, v0, 0x4

    goto :goto_0

    .line 637
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v1, v9

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 638
    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 640
    :goto_0
    const/16 v0, 0x258

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 642
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    move v1, v6

    move v2, v7

    move v3, p1

    move v4, v8

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 643
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 644
    return-void
.end method

.method private 鷭(IIII)V
    .locals 6

    .line 0
    add-int/2addr p1, p3

    .line 1047
    if-lez p2, :cond_1

    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p3

    .line 1049
    add-int/2addr p2, p4

    .line 1050
    div-int p4, p3, p2

    .line 1051
    rem-int v0, p3, p2

    int-to-float v0, v0

    int-to-float v1, p2

    div-float p2, v0, v1

    .line 1052
    int-to-float v0, p4

    add-float/2addr v0, p2

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 1053
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1054
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->timePassed()I

    move-result v1

    sub-int p3, v0, v1

    .line 1057
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    move v1, p2

    iget v2, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    mul-int v3, v2, p1

    move v5, p3

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1059
    :cond_0
    return-void

    .line 1060
    :cond_1
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    mul-int p3, v0, p1

    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 1062
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Ą()V

    .line 1063
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1066
    :cond_2
    return-void
.end method

.method private 鷭(IZZI)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 410
    :cond_0
    move-object p1, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/view/ViewPager;->띥:Z

    .line 411
    :cond_1
    return-void

    .line 413
    :cond_2
    if-nez p3, :cond_4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 414
    move-object p1, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/view/ViewPager;->띥:Z

    .line 415
    :cond_3
    return-void

    .line 417
    :cond_4
    if-gez p1, :cond_5

    .line 418
    const/4 p1, 0x0

    goto :goto_0

    .line 419
    :cond_5
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_6

    .line 420
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 422
    :cond_6
    :goto_0
    iget p3, p0, Landroid/support/v4/view/ViewPager;->ė:I

    .line 423
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/2addr v0, p3

    if-gt p1, v0, :cond_7

    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_8

    .line 427
    :cond_7
    const/4 p3, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_8

    .line 428
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$if;->ˮ͈:Z

    .line 427
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 431
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-eq v0, p1, :cond_9

    const/4 p3, 0x1

    goto :goto_2

    :cond_9
    const/4 p3, 0x0

    .line 432
    :goto_2
    iput p1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    .line 433
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 434
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v0, v1

    mul-int v2, v0, p1

    .line 435
    if-eqz p2, :cond_b

    .line 436
    invoke-direct {p0, v2, p4}, Landroid/support/v4/view/ViewPager;->鷭(II)V

    .line 437
    if-eqz p3, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$ˮ͈;->鷭(I)V

    .line 440
    :cond_a
    if-eqz p3, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_e

    .line 441
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$ˮ͈;->鷭(I)V

    return-void

    .line 444
    :cond_b
    if-eqz p3, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_c

    .line 445
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$ˮ͈;->鷭(I)V

    .line 447
    :cond_c
    if-eqz p3, :cond_d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_d

    .line 448
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͈:Landroid/support/v4/view/ViewPager$ˮ͈;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$ˮ͈;->鷭(I)V

    .line 450
    :cond_d
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Ą()V

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 453
    :cond_e
    return-void
.end method

.method private 鷭(Landroid/view/MotionEvent;)V
    .locals 3

    .line 0
    invoke-static {p1}, Lo/岱;->鷭(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1752
    invoke-static {p1, v2}, Lo/岱;->櫯(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1753
    iget v1, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    if-ne v0, v1, :cond_1

    .line 1756
    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1757
    :goto_0
    invoke-static {p1, v2}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1758
    invoke-static {p1, v2}, Lo/岱;->櫯(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1759
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1763
    :cond_1
    return-void
.end method

.method private 鷭(Landroid/view/View;ZIII)Z
    .locals 11

    .line 0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1803
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    .line 1804
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 1805
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 1806
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1808
    add-int/lit8 v9, v0, -0x1

    :goto_0
    if-ltz v9, :cond_1

    .line 1811
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1812
    add-int v0, p4, v7

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int v0, p4, v7

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v0, p5, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int v0, p5, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v0, p0

    move-object v1, v10

    move v3, p3

    add-int v2, p4, v7

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v2, v4

    add-int v2, p5, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v2, v5

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    const/4 v0, 0x1

    return v0

    .line 1808
    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 1821
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Lo/䒧;->鷭(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Landroid/view/View;>;II)V"
        }
    .end annotation

    .line 0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1926
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v3

    .line 1928
    const/high16 v0, 0x6

    if-eq v3, v0, :cond_1

    .line 1929
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 1930
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1931
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1932
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v6

    .line 1933
    if-eqz v6, :cond_0

    iget v0, v6, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_0

    .line 1934
    invoke-virtual {v5, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1929
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1944
    :cond_1
    const/high16 v0, 0x4

    if-ne v3, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 1950
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1951
    return-void

    .line 1953
    :cond_3
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1955
    return-void

    .line 1957
    :cond_4
    if-eqz p1, :cond_5

    .line 1958
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1961
    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/ArrayList<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1972
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1973
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v4

    .line 1975
    if-eqz v4, :cond_0

    iget v0, v4, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_0

    .line 1976
    invoke-virtual {v3, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1971
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1980
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 0
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 911
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v2, v0

    .line 912
    iget-boolean v0, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    instance-of v1, p1, Landroid/support/v4/view/ViewPager$鷭;

    or-int/2addr v0, v1

    iput-boolean v0, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    .line 913
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ē:Z

    if-eqz v0, :cond_2

    .line 914
    if-eqz v2, :cond_1

    iget-boolean v0, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    if-eqz v0, :cond_1

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 918
    iget v0, p0, Landroid/support/v4/view/ViewPager;->đ:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Ē:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void

    .line 920
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 930
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 0
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public computeScroll()V
    .locals 5

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1157
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1160
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 1161
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1162
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ċ:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1164
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 1165
    :cond_0
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1166
    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->鷭(I)V

    .line 1170
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1171
    return-void

    .line 1176
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Ą()V

    .line 1177
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v2, p1

    move-object p1, p0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch

    :sswitch_0
    const/16 v0, 0x11

    invoke-direct {p1, v0}, Landroid/support/v4/view/ViewPager;->櫯(I)Z

    move-result v3

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x42

    invoke-direct {p1, v0}, Landroid/support/v4/view/ViewPager;->櫯(I)Z

    move-result v3

    goto :goto_0

    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-static {v2}, Lo/Ć;->鷭(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/support/v4/view/ViewPager;->櫯(I)Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lo/Ć;->鷭(Landroid/view/KeyEvent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/support/v4/view/ViewPager;->櫯(I)Z

    move-result v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 2023
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2024
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2025
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2026
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v5

    .line 2027
    if-eqz v5, :cond_0

    iget v0, v5, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_0

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    const/4 v0, 0x1

    return v0

    .line 2023
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2034
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1575
    const/4 v3, 0x0

    .line 1577
    invoke-static {p0}, Lo/䒧;->鷭(Landroid/view/View;)I

    move-result v4

    .line 1578
    if-eqz v4, :cond_0

    const/4 v0, 0x1

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1581
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    invoke-virtual {v0}, Lo/Ė;->鷭()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1583
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1585
    const/high16 v0, 0x4387

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1586
    neg-int v0, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1587
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Lo/Ė;->鷭(II)V

    .line 1588
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    invoke-virtual {v0, p1}, Lo/Ė;->鷭(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v3, v0, 0x0

    .line 1589
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1591
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    invoke-virtual {v0}, Lo/Ė;->鷭()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1593
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1594
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 1595
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    .line 1597
    :goto_0
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1598
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v7

    iget v2, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v2, v5

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1600
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    invoke-virtual {v0, v6, v5}, Lo/Ė;->鷭(II)V

    .line 1601
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    invoke-virtual {v0, p1}, Lo/Ė;->鷭(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v3, v0

    .line 1602
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1603
    goto :goto_1

    .line 1605
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    invoke-virtual {v0}, Lo/Ė;->櫯()V

    .line 1606
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    invoke-virtual {v0}, Lo/Ė;->櫯()V

    .line 1609
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 1611
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1613
    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 573
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->躆:Landroid/graphics/drawable/Drawable;

    .line 574
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 577
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 0
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 0
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ħ:Z

    .line 957
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1620
    iget v0, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->躆:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1622
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1623
    iget v0, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v0, v5

    rem-int v6, v4, v0

    .line 1624
    if-eqz v6, :cond_0

    .line 1626
    sub-int v0, v4, v6

    add-int v4, v0, v5

    .line 1627
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->躆:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v4/view/ViewPager;->ܕ:I

    iget v2, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v2, v4

    iget v3, p0, Landroid/support/v4/view/ViewPager;->庸:I

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1629
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->躆:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1295
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ę:Z

    .line 1300
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1301
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1302
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    .line 1305
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1310
    :cond_2
    if-eqz v6, :cond_4

    .line 1311
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    if-eqz v0, :cond_3

    .line 1313
    const/4 v0, 0x1

    return v0

    .line 1315
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ę:Z

    if-eqz v0, :cond_4

    .line 1317
    const/4 v0, 0x0

    return v0

    .line 1321
    :cond_4
    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch

    .line 1332
    :sswitch_0
    iget v6, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1333
    const/4 v0, -0x1

    if-eq v6, v0, :cond_b

    .line 1335
    invoke-static {p1, v6}, Lo/岱;->鷭(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1339
    invoke-static {p1, v6}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1340
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    sub-float v8, v7, v0

    .line 1341
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1342
    invoke-static {p1, v6}, Lo/岱;->ȃ(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1343
    iget v0, p0, Landroid/support/v4/view/ViewPager;->廅:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1346
    move-object v0, p0

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v6

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1348
    iput v7, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->囃:F

    .line 1349
    iput v6, p0, Landroid/support/v4/view/ViewPager;->廅:F

    .line 1350
    const/4 v0, 0x0

    return v0

    .line 1352
    :cond_5
    iget v0, p0, Landroid/support/v4/view/ViewPager;->廂:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_8

    cmpl-float v0, v9, v10

    if-lez v0, :cond_8

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    .line 1355
    move-object v6, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    iput v0, v6, Landroid/support/v4/view/ViewPager;->Ī:I

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_6

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$ˮ͈;->櫯(I)V

    .line 1356
    :cond_6
    iput v7, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1357
    move-object v6, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/support/v4/view/ViewPager;->띥:Z

    :cond_7
    goto/16 :goto_0

    .line 1359
    :cond_8
    iget v0, p0, Landroid/support/v4/view/ViewPager;->廂:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_b

    .line 1365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ę:Z

    goto/16 :goto_0

    .line 1376
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->囃:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->廅:F

    .line 1378
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/岱;->櫯(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1380
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    .line 1383
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ę:Z

    .line 1384
    move-object v6, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    iput v0, v6, Landroid/support/v4/view/ViewPager;->Ī:I

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_9

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$ˮ͈;->櫯(I)V

    :cond_9
    goto :goto_0

    .line 1386
    :cond_a
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Ą()V

    .line 1387
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    .line 1388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ę:Z

    .line 1394
    goto :goto_0

    .line 1398
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/MotionEvent;)V

    .line 1402
    :cond_b
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    if-nez v0, :cond_d

    .line 1405
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    if-nez v0, :cond_c

    .line 1406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    .line 1408
    :cond_c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1415
    :cond_d
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ē:Z

    .line 1071
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ē:Z

    .line 1074
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result p1

    .line 1075
    sub-int p2, p4, p2

    .line 1076
    sub-int p3, p5, p3

    .line 1077
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result p4

    .line 1078
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result p5

    .line 1079
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1080
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1081
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1083
    const/4 v5, 0x0

    .line 1085
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p1, :cond_2

    .line 1086
    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1087
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1088
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v8, v0

    .line 1090
    iget-boolean v0, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    if-eqz v0, :cond_0

    .line 1093
    iget v0, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->櫯:I

    and-int/lit8 v9, v0, 0x7

    .line 1094
    iget v0, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->櫯:I

    and-int/lit8 v10, v0, 0x70

    .line 1095
    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1097
    :goto_1
    :pswitch_0
    move v8, p4

    .line 1098
    goto :goto_2

    .line 1100
    :pswitch_1
    move v8, p4

    .line 1101
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p4, v0

    .line 1102
    goto :goto_2

    .line 1104
    :pswitch_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1106
    goto :goto_2

    .line 1108
    :pswitch_3
    sub-int v0, p2, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v8, v0, v1

    .line 1109
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v2, v0

    .line 1112
    :goto_2
    sparse-switch v10, :sswitch_data_0

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 1114
    :goto_3
    move/from16 v9, p5

    .line 1115
    goto :goto_4

    .line 1117
    :sswitch_0
    move/from16 v9, p5

    .line 1118
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int p5, p5, v0

    .line 1119
    goto :goto_4

    .line 1121
    :sswitch_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1123
    goto :goto_4

    .line 1125
    :sswitch_2
    sub-int v0, p3, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v9, v0, v1

    .line 1126
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    .line 1129
    :goto_4
    add-int/2addr v8, v4

    .line 1130
    add-int/lit8 v5, v5, 0x1

    .line 1131
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1134
    goto :goto_5

    :cond_0
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1135
    iget v0, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int/2addr v0, p2

    iget v1, v8, Landroid/support/v4/view/ViewPager$if;->櫯:I

    mul-int v9, v0, v1

    .line 1136
    add-int v8, p4, v9

    .line 1137
    move/from16 v9, p5

    .line 1141
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1085
    :cond_1
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1147
    :cond_2
    move/from16 v0, p5

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ܕ:I

    .line 1148
    sub-int v0, p3, v3

    iput v0, p0, Landroid/support/v4/view/ViewPager;->庸:I

    .line 1149
    iput v5, p0, Landroid/support/v4/view/ViewPager;->Ĩ:I

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ħ:Z

    .line 1151
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 970
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    .line 971
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int p2, v0, v1

    .line 978
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 979
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    .line 980
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 981
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 982
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v6, v0

    .line 983
    if-eqz v6, :cond_7

    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    if-eqz v0, :cond_7

    .line 984
    iget v0, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->櫯:I

    and-int/lit8 v7, v0, 0x7

    .line 985
    iget v0, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->櫯:I

    and-int/lit8 v8, v0, 0x70

    .line 986
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gravity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->櫯:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hgrav: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vgrav: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/high16 v6, -0x8000

    .line 988
    const/high16 v9, -0x8000

    .line 989
    const/16 v0, 0x30

    if-eq v8, v0, :cond_0

    const/16 v0, 0x50

    if-ne v8, v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 990
    :goto_1
    const/4 v0, 0x3

    if-eq v7, v0, :cond_2

    const/4 v0, 0x5

    if-ne v7, v0, :cond_3

    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 992
    :goto_2
    if-eqz v8, :cond_4

    .line 993
    const/high16 v6, 0x4000

    goto :goto_3

    .line 994
    :cond_4
    if-eqz v7, :cond_5

    .line 995
    const/high16 v9, 0x4000

    .line 998
    :cond_5
    :goto_3
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 999
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1000
    invoke-virtual {v5, v6, v9}, Landroid/view/View;->measure(II)V

    .line 1002
    if-eqz v8, :cond_6

    .line 1003
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_4

    .line 1004
    :cond_6
    if-eqz v7, :cond_7

    .line 1005
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 979
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1011
    :cond_8
    const/high16 v0, 0x4000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->đ:I

    .line 1012
    const/high16 v0, 0x4000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Ē:I

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ē:Z

    .line 1016
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ē:Z

    .line 1020
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    .line 1021
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_b

    .line 1022
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1023
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    .line 1027
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    move-object v6, v0

    .line 1028
    if-eqz v6, :cond_9

    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    if-nez v0, :cond_a

    .line 1029
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->đ:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->Ē:I

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1021
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1033
    :cond_b
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 7

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1992
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1993
    const/4 v2, 0x0

    .line 1994
    const/4 v3, 0x1

    .line 1995
    goto :goto_0

    .line 1997
    :cond_0
    add-int/lit8 v2, v4, -0x1

    .line 1998
    const/4 v3, -0x1

    .line 1999
    const/4 v4, -0x1

    .line 2001
    :goto_0
    if-eq v2, v4, :cond_2

    .line 2002
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2004
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/View;)Landroid/support/v4/view/ViewPager$if;

    move-result-object v6

    .line 2005
    if-eqz v6, :cond_1

    iget v0, v6, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_1

    .line 2006
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2007
    const/4 v0, 0x1

    return v0

    .line 2001
    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    .line 2012
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 0
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 890
    return-void

    .line 893
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    move-object p1, v0

    .line 894
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 896
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->櫯:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->ˮ͈:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lo/ċ;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 898
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->鷭:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    return-void

    .line 900
    :cond_1
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->鷭:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͍:I

    .line 901
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->櫯:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->岱:Landroid/os/Parcelable;

    .line 902
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->ˮ͈:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ȋ:Ljava/lang/ClassLoader;

    .line 904
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 0
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 878
    new-instance v0, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 879
    move-object v2, v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    iput v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->鷭:I

    .line 880
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v2, Landroid/support/v4/view/ViewPager$SavedState;->櫯:Landroid/os/Parcelable;

    .line 883
    :cond_0
    return-object v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1040
    if-eq p1, p3, :cond_0

    .line 1041
    iget v0, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->鷭(IIII)V

    .line 1043
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->ģ:Z

    if-eqz v0, :cond_0

    .line 1424
    const/4 v0, 0x1

    return v0

    .line 1427
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    const/4 v0, 0x0

    return v0

    .line 1433
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1435
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1438
    :cond_3
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1439
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    .line 1441
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1444
    const/4 v5, 0x0

    .line 1446
    and-int/lit16 v0, v4, 0xff

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1452
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->Ą()V

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->囃:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1456
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/岱;->櫯(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1457
    goto/16 :goto_3

    .line 1460
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    if-nez v0, :cond_6

    .line 1461
    iget v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    invoke-static {p1, v0}, Lo/岱;->鷭(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1462
    invoke-static {p1, v4}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1463
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    sub-float v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1464
    invoke-static {p1, v4}, Lo/岱;->ȃ(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1465
    iget v1, p0, Landroid/support/v4/view/ViewPager;->廅:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1467
    iget v0, p0, Landroid/support/v4/view/ViewPager;->廂:I

    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_6

    cmpl-float v0, v7, v8

    if-lez v0, :cond_6

    .line 1469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    .line 1470
    iput v6, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1471
    move-object v4, p0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Ī:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    iput v0, v4, Landroid/support/v4/view/ViewPager;->Ī:I

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    if-eqz v0, :cond_5

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$ˮ͈;->櫯(I)V

    .line 1472
    :cond_5
    move-object v4, p0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->띥:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager;->띥:Z

    .line 1475
    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    if-eqz v0, :cond_f

    .line 1477
    iget v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    invoke-static {p1, v0}, Lo/岱;->鷭(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1479
    invoke-static {p1, v4}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1480
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    sub-float v7, v0, v6

    .line 1481
    iput v6, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1482
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 1483
    add-float v8, v0, v7

    .line 1484
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    .line 1485
    iget v0, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int v7, v4, v0

    .line 1487
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0}, Lo/ċ;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 1488
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v7

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v9, v0

    .line 1489
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v10, v0

    .line 1491
    cmpg-float v0, v8, v9

    if-gez v0, :cond_8

    .line 1492
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-nez v0, :cond_7

    .line 1493
    neg-float p1, v8

    .line 1494
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    int-to-float v1, v4

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lo/Ė;->鷭(F)Z

    move-result v5

    .line 1496
    :cond_7
    move v8, v9

    goto :goto_0

    .line 1497
    :cond_8
    cmpl-float v0, v8, v10

    if-lez v0, :cond_a

    .line 1498
    mul-int v0, p1, v7

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-nez v0, :cond_9

    .line 1499
    sub-float p1, v8, v10

    .line 1500
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    int-to-float v1, v4

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lo/Ė;->鷭(F)Z

    move-result v5

    .line 1502
    :cond_9
    move v8, v10

    .line 1505
    :cond_a
    :goto_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    float-to-int v1, v8

    int-to-float v1, v1

    sub-float v1, v8, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1506
    float-to-int v0, v8

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1507
    float-to-int v0, v8

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->鷭(I)V

    .line 1508
    goto/16 :goto_3

    .line 1511
    :pswitch_2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    if-eqz v0, :cond_f

    .line 1512
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    .line 1513
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ġ:I

    int-to-float v0, v0

    const/16 v1, 0x3e8

    invoke-virtual {v4, v1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1514
    iget v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    invoke-static {v4, v0}, Lo/纫;->鷭(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v6, v0

    .line 1516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->㥳:Z

    .line 1517
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    add-int v7, v0, v1

    .line 1518
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1519
    div-int v8, v4, v7

    .line 1520
    rem-int v0, v4, v7

    int-to-float v0, v0

    int-to-float v1, v7

    div-float v4, v0, v1

    .line 1521
    iget v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    invoke-static {p1, v0}, Lo/岱;->鷭(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1523
    invoke-static {p1, v7}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1524
    iget v1, p0, Landroid/support/v4/view/ViewPager;->囃:F

    sub-float/2addr v0, v1

    float-to-int v9, v0

    .line 1525
    move v0, v8

    move v8, v9

    move v5, v4

    move v4, v0

    move-object p1, p0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p1, Landroid/support/v4/view/ViewPager;->ܨ:I

    if-le v0, v1, :cond_c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p1, Landroid/support/v4/view/ViewPager;->Ƞ:I

    if-le v0, v1, :cond_c

    if-lez v6, :cond_b

    move p1, v4

    goto :goto_1

    :cond_b
    add-int/lit8 p1, v4, 0x1

    :goto_1
    goto :goto_2

    :cond_c
    int-to-float v0, v4

    add-float/2addr v0, v5

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int p1, v0

    :goto_2
    move v10, p1

    .line 1527
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v10, v0, v1, v6}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    .line 1529
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1530
    move-object v4, p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager;->ę:Z

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v4, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    .line 1531
    :cond_d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    invoke-virtual {v0}, Lo/Ė;->ˮ͈()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    invoke-virtual {v1}, Lo/Ė;->ˮ͈()Z

    move-result v1

    or-int v5, v0, v1

    .line 1532
    goto/16 :goto_3

    .line 1535
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    if-eqz v0, :cond_f

    .line 1536
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    .line 1537
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1538
    move-object v4, p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ę:Z

    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager;->ę:Z

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    iget-object v0, v4, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, v4, Landroid/support/v4/view/ViewPager;->㱽:Landroid/view/VelocityTracker;

    .line 1539
    :cond_e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->Ĥ:Lo/Ė;

    invoke-virtual {v0}, Lo/Ė;->ˮ͈()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->ĥ:Lo/Ė;

    invoke-virtual {v1}, Lo/Ė;->ˮ͈()Z

    move-result v1

    or-int v5, v0, v1

    goto :goto_3

    .line 1543
    :pswitch_4
    invoke-static {p1}, Lo/岱;->鷭(Landroid/view/MotionEvent;)I

    move-result v4

    .line 1544
    invoke-static {p1, v4}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1545
    iput v6, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1546
    invoke-static {p1, v4}, Lo/岱;->櫯(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    .line 1547
    goto :goto_3

    .line 1550
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->鷭(Landroid/view/MotionEvent;)V

    .line 1551
    iget v0, p0, Landroid/support/v4/view/ViewPager;->㵼:I

    invoke-static {p1, v0}, Lo/岱;->鷭(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Lo/岱;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ঽ্:F

    .line 1555
    :cond_f
    :goto_3
    :pswitch_6
    if-eqz v5, :cond_10

    .line 1556
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1558
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Lo/ċ;)V
    .locals 6

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->纫:Landroid/support/v4/view/ViewPager$ȃ;

    invoke-virtual {v0, v1}, Lo/ċ;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0}, Lo/ċ;->startUpdate(Landroid/view/ViewGroup;)V

    .line 317
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v5, v0

    .line 319
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget v1, v5, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget-object v2, v5, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lo/ċ;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0}, Lo/ċ;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 322
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    move-object v4, p0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_2

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->鷭:Z

    if-nez v0, :cond_1

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 324
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 328
    :cond_3
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    .line 329
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    .line 331
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->纫:Landroid/support/v4/view/ViewPager$ȃ;

    if-nez v0, :cond_4

    .line 333
    new-instance v0, Landroid/support/v4/view/ViewPager$ȃ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/view/ViewPager$ȃ;-><init>(Landroid/support/v4/view/ViewPager;Lo/Ē;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->纫:Landroid/support/v4/view/ViewPager$ȃ;

    .line 335
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->纫:Landroid/support/v4/view/ViewPager$ȃ;

    invoke-virtual {v0, v1}, Lo/ċ;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->㥳:Z

    .line 337
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͍:I

    if-ltz v0, :cond_5

    .line 338
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->岱:Landroid/os/Parcelable;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->Ȋ:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lo/ċ;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 339
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͍:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->ˮ͍:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->岱:Landroid/os/Parcelable;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->Ȋ:Ljava/lang/ClassLoader;

    goto :goto_2

    .line 344
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 348
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ȃ:Landroid/support/v4/view/ViewPager$櫯;

    if-eqz v0, :cond_7

    if-eq v4, p1, :cond_7

    .line 349
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ȃ:Landroid/support/v4/view/ViewPager$櫯;

    invoke-interface {v0, v4, p1}, Landroid/support/v4/view/ViewPager$櫯;->鷭(Lo/ċ;Lo/ċ;)V

    .line 351
    :cond_7
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 3

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->㥳:Z

    .line 386
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Ħ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    .line 387
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->㥳:Z

    .line 397
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    .line 398
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 0
    if-gtz p1, :cond_0

    .line 507
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 p1, 0x1

    .line 511
    :cond_0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->ė:I

    if-eq p1, v0, :cond_1

    .line 512
    iput p1, p0, Landroid/support/v4/view/ViewPager;->ė:I

    .line 513
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 515
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$ˮ͈;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->廑:Landroid/support/v4/view/ViewPager$ˮ͈;

    .line 463
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    .line 527
    iput p1, p0, Landroid/support/v4/view/ViewPager;->䒧:I

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 530
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->鷭(IIII)V

    .line 532
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 533
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 0
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->躆:Landroid/graphics/drawable/Drawable;

    .line 551
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 552
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 553
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 554
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->躆:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final 鷭()V
    .locals 9

    .line 0
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v1}, Lo/ċ;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 661
    :goto_0
    const/4 v4, -0x1

    .line 663
    const/4 v5, 0x0

    .line 664
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 665
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$if;

    move-object v7, v0

    .line 666
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget-object v1, v7, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lo/ċ;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 668
    const/4 v0, -0x1

    if-eq v8, v0, :cond_4

    .line 669
    const/4 v0, -0x2

    if-ne v8, v0, :cond_2

    .line 673
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 674
    add-int/lit8 v6, v6, -0x1

    .line 676
    if-nez v5, :cond_1

    .line 677
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0}, Lo/ċ;->startUpdate(Landroid/view/ViewGroup;)V

    .line 678
    const/4 v5, 0x1

    .line 681
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    iget v1, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget-object v2, v7, Landroid/support/v4/view/ViewPager$if;->鷭:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lo/ċ;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 682
    const/4 v3, 0x1

    .line 684
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    iget v1, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    if-ne v0, v1, :cond_4

    .line 686
    iget v0, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v1}, Lo/ċ;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 691
    :cond_2
    iget v0, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    if-eq v0, v8, :cond_4

    .line 692
    iget v0, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->櫯:I

    if-ne v0, v1, :cond_3

    .line 694
    move v4, v8

    .line 697
    :cond_3
    iput v8, v7, Landroid/support/v4/view/ViewPager$if;->櫯:I

    .line 698
    const/4 v3, 0x1

    .line 664
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 702
    :cond_5
    if-eqz v5, :cond_6

    .line 703
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->鷭:Lo/ċ;

    invoke-virtual {v0, p0}, Lo/ċ;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 706
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->ć:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->ą:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    if-ltz v4, :cond_7

    .line 710
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v4, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->鷭(IZZI)V

    .line 711
    const/4 v3, 0x1

    .line 713
    :cond_7
    if-eqz v3, :cond_8

    .line 714
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->ȃ()V

    .line 715
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 717
    :cond_8
    return-void
.end method
