.class public Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;
.super Lcom/android/mms/ui/EmoticonPanel;
.source "IpMessageEmoticonPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;,
        Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/IpMessageEmoticonPanel"


# instance fields
.field private mAdIndex:I

.field private mAdName:[Ljava/lang/String;

.field private mAdTab:Landroid/widget/RadioButton;

.field private mColumnArray:[I

.field private mContext:Landroid/content/Context;

.field private mDelEmoticon:Landroid/widget/Button;

.field private mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

.field private mDotFirst:Landroid/widget/RadioButton;

.field private mDotForth:Landroid/widget/RadioButton;

.field private mDotSec:Landroid/widget/RadioButton;

.field private mDotThird:Landroid/widget/RadioButton;

.field private mDynamicIndex:I

.field private mDynamicName:[Ljava/lang/String;

.field private mDynamicTab:Landroid/widget/RadioButton;

.field private mEmoticonName:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLargeIndex:I

.field private mLargeName:[Ljava/lang/String;

.field private mLargeTab:Landroid/widget/RadioButton;

.field private mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

.field private mNeedQuickDelete:Z

.field private mNormalIndex:I

.field private mNormalTab:Landroid/widget/RadioButton;

.field private mObject:Ljava/lang/Object;

.field private mOrientation:I

.field private mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;

.field private mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

.field private mSharePanelMain:Landroid/widget/LinearLayout;

.field private mXmIndex:I

.field private mXmName:[Ljava/lang/String;

.field private mXmTab:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonPanel;-><init>(Landroid/content/Context;)V

    .line 101
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 108
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalIndex:I

    .line 109
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    .line 110
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    .line 111
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    .line 112
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mObject:Ljava/lang/Object;

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNeedQuickDelete:Z

    .line 124
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/EmoticonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 108
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalIndex:I

    .line 109
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    .line 110
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    .line 111
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    .line 112
    iput v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mObject:Ljava/lang/Object;

    .line 118
    iput-boolean v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNeedQuickDelete:Z

    .line 129
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->startDelEmoticon()V

    return-void
.end method

.method static synthetic access$1002(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    return p1
.end method

.method static synthetic access$1102(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getEmoticonName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Lcom/mediatek/ipmsg/ui/EmoticonPreview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getLargeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getPreviewIcon(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNeedQuickDelete:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->stopDelEmoticon()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    return p1
.end method

.method static synthetic access$902(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    return p1
.end method

.method private addAdPage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 791
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040001

    iget-object v7, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 793
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f0004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 795
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 796
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 800
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 801
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 803
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 807
    :goto_1
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getAdIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;[I)V

    .line 808
    .local v0, adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    invoke-direct {p0, v4, v1, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->updateGridView(Landroid/view/View;Landroid/widget/GridView;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;)V

    .line 809
    return-void

    .line 798
    .end local v0           #adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 805
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addAdPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 431
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    .line 432
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 433
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 436
    :cond_0
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v2, v5, :cond_3

    .line 437
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateDynamicPageCount(I)I

    move-result v1

    .line 438
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 439
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addAdPage(I)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 446
    iput v6, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    .line 448
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 449
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$7;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$7;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 490
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 491
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    if-nez v2, :cond_5

    .line 492
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 500
    :goto_2
    return-void

    .line 465
    .end local v0           #i:I
    .end local v1           #num:I
    :cond_3
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateDynamicPageCount(I)I

    move-result v1

    .line 466
    .restart local v1       #num:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 467
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addAdPage(I)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 469
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 474
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$8;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    goto :goto_1

    .line 493
    :cond_5
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    if-ne v2, v5, :cond_6

    .line 494
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 495
    :cond_6
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    if-ne v2, v6, :cond_7

    .line 496
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 498
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private addDynamicPage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 726
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040023

    iget-object v7, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 728
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f0091

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 730
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 731
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 735
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 736
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 738
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 742
    :goto_1
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getDynamicIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;[I)V

    .line 743
    .local v0, adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    invoke-direct {p0, v4, v1, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->updateGridView(Landroid/view/View;Landroid/widget/GridView;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;)V

    .line 744
    return-void

    .line 733
    .end local v0           #adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 740
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addDynamicPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 359
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    .line 360
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 361
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 364
    :cond_0
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v2, v5, :cond_3

    .line 365
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateDynamicPageCount(I)I

    move-result v1

    .line 366
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 367
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addDynamicPage(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 374
    iput v6, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 377
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$5;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$5;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 418
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 419
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    if-nez v2, :cond_5

    .line 420
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 428
    :goto_2
    return-void

    .line 393
    .end local v0           #i:I
    .end local v1           #num:I
    :cond_3
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateDynamicPageCount(I)I

    move-result v1

    .line 394
    .restart local v1       #num:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 395
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addDynamicPage(I)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 397
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 402
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$6;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$6;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    goto :goto_1

    .line 421
    :cond_5
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    if-ne v2, v5, :cond_6

    .line 422
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 423
    :cond_6
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    if-ne v2, v6, :cond_7

    .line 424
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 426
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private addLargePage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 688
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040038

    iget-object v7, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 690
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f00d6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 692
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 693
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 697
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 698
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 700
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 704
    :goto_1
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getLargeIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;[I)V

    .line 705
    .local v0, adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    new-instance v5, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$12;

    invoke-direct {v5, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$12;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 716
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 717
    return-void

    .line 695
    .end local v0           #adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 702
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addLargePanel()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    .line 284
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 285
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 288
    :cond_0
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v2, v5, :cond_3

    .line 289
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateLargePageCount(I)I

    move-result v1

    .line 290
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 291
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addLargePage(I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 298
    iput v6, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 301
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$3;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$3;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 343
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 344
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    if-nez v2, :cond_5

    .line 345
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 353
    :goto_2
    return-void

    .line 317
    .end local v0           #i:I
    .end local v1           #num:I
    :cond_3
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateLargePageCount(I)I

    move-result v1

    .line 318
    .restart local v1       #num:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 319
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addLargePage(I)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 326
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 327
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$4;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$4;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    goto :goto_1

    .line 346
    :cond_5
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    if-ne v2, v5, :cond_6

    .line 347
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 348
    :cond_6
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    if-ne v2, v6, :cond_7

    .line 349
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 351
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private addNormalPage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 648
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04004f

    iget-object v7, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 650
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f0158

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 653
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 654
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 658
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 659
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 661
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 665
    :goto_1
    new-instance v0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getNormalIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;-><init>(Lcom/android/mms/ui/EmoticonPanel;[I)V

    .line 666
    .local v0, adapter:Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 667
    new-instance v5, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$11;

    invoke-direct {v5, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$11;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 678
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 679
    return-void

    .line 656
    .end local v0           #adapter:Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 663
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addNormalPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    .line 248
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 249
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 253
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateNormalPageCount(I)I

    move-result v1

    .line 258
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 259
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addNormalPage(I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 262
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$2;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$2;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 277
    return-void
.end method

.method private addXmPage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 812
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04007f

    iget-object v7, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 814
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f01b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 816
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 817
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 821
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 822
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v9, :cond_1

    .line 824
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 828
    :goto_1
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->getXmIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;[I)V

    .line 829
    .local v0, adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    invoke-direct {p0, v4, v1, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->updateGridView(Landroid/view/View;Landroid/widget/GridView;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;)V

    .line 830
    return-void

    .line 819
    .end local v0           #adapter:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 826
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addXmPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    .line 504
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    .line 505
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 508
    :cond_0
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v2, v5, :cond_3

    .line 509
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateDynamicPageCount(I)I

    move-result v1

    .line 510
    .local v1, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 511
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addXmPage(I)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 515
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 518
    iput v6, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    .line 520
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 521
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$9;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$9;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 562
    :goto_1
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 563
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    if-nez v2, :cond_5

    .line 564
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 572
    :goto_2
    return-void

    .line 537
    .end local v0           #i:I
    .end local v1           #num:I
    :cond_3
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    invoke-direct {p0, v2}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->calculateDynamicPageCount(I)I

    move-result v1

    .line 538
    .restart local v1       #num:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v1, :cond_4

    .line 539
    invoke-direct {p0, v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addXmPage(I)V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 541
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 546
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v3, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$10;

    invoke-direct {v3, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$10;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    goto :goto_1

    .line 565
    :cond_5
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    if-ne v2, v5, :cond_6

    .line 566
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 567
    :cond_6
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    if-ne v2, v6, :cond_7

    .line 568
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 570
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method private calculateDynamicPageCount(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 628
    if-ne p1, v4, :cond_1

    .line 629
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-int/lit8 v1, v3, 0x2

    .line 633
    .local v1, onePage:I
    :goto_0
    sget-object v3, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->DYNAMIC_ICON_ARR:[I

    array-length v2, v3

    .line 634
    .local v2, total:I
    div-int v0, v2, v1

    .line 635
    .local v0, count:I
    mul-int v3, v0, v1

    if-le v2, v3, :cond_0

    .line 636
    add-int/lit8 v0, v0, 0x1

    .line 638
    :cond_0
    return v0

    .line 631
    .end local v0           #count:I
    .end local v1           #onePage:I
    .end local v2           #total:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v1, v3, v4

    .restart local v1       #onePage:I
    goto :goto_0
.end method

.method private calculateLargePageCount(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 606
    if-ne p1, v4, :cond_1

    .line 607
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-int/lit8 v1, v3, 0x2

    .line 611
    .local v1, onePage:I
    :goto_0
    sget-object v3, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->LARGE_ICON_ARR:[I

    array-length v2, v3

    .line 612
    .local v2, total:I
    div-int v0, v2, v1

    .line 613
    .local v0, count:I
    mul-int v3, v0, v1

    if-le v2, v3, :cond_0

    .line 614
    add-int/lit8 v0, v0, 0x1

    .line 616
    :cond_0
    return v0

    .line 609
    .end local v0           #count:I
    .end local v1           #onePage:I
    .end local v2           #total:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v1, v3, v4

    .restart local v1       #onePage:I
    goto :goto_0
.end method

.method private calculateNormalPageCount(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 583
    if-ne p1, v4, :cond_1

    .line 584
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-int/lit8 v1, v3, 0x4

    .line 588
    .local v1, onePage:I
    :goto_0
    sget-object v3, Lcom/android/mms/util/MessageConsts;->emoticonIdList:[I

    array-length v2, v3

    .line 589
    .local v2, total:I
    div-int v0, v2, v1

    .line 590
    .local v0, count:I
    mul-int v3, v0, v1

    if-le v2, v3, :cond_0

    .line 591
    add-int/lit8 v0, v0, 0x1

    .line 593
    :cond_0
    return v0

    .line 586
    .end local v0           #count:I
    .end local v1           #onePage:I
    .end local v2           #total:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v3, v3, v4

    mul-int/lit8 v1, v3, 0x2

    .restart local v1       #onePage:I
    goto :goto_0
.end method

.method private getAdIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 911
    sget-object v4, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->AD_PNG_ICON_ARR:[I

    .line 913
    .local v4, source:[I
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 914
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit8 v3, v5, 0x2

    .line 918
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 919
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 920
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 921
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 926
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 916
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v3, v5, v6

    .restart local v3       #onePage:I
    goto :goto_0

    .line 924
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getDynamicIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 892
    sget-object v4, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->DYNAMIC_PNG_ICON_ARR:[I

    .line 894
    .local v4, source:[I
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 895
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit8 v3, v5, 0x2

    .line 899
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 900
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 901
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 902
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 907
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 897
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v3, v5, v6

    .restart local v3       #onePage:I
    goto :goto_0

    .line 905
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getEmoticonName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 957
    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 958
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-int/lit8 v1, v3, 0x4

    .line 962
    .local v1, onePage:I
    :goto_0
    const/16 v3, 0x14

    if-lt p1, v3, :cond_2

    .line 969
    :cond_0
    :goto_1
    return-object v2

    .line 960
    .end local v1           #onePage:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v3, v3, v4

    mul-int/lit8 v1, v3, 0x2

    .restart local v1       #onePage:I
    goto :goto_0

    .line 965
    :cond_2
    iget v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalIndex:I

    mul-int/2addr v3, v1

    add-int v0, p1, v3

    .line 966
    .local v0, index:I
    iget-object v3, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mEmoticonName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 969
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mEmoticonName:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1
.end method

.method private getLargeIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 866
    sget-object v4, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->LARGE_ICON_ARR:[I

    .line 868
    .local v4, source:[I
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 869
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit8 v3, v5, 0x2

    .line 873
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 874
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 875
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 876
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 881
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 871
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v3, v5, v6

    .restart local v3       #onePage:I
    goto :goto_0

    .line 879
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getLargeName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 981
    iget v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v1, v2, :cond_0

    .line 982
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/lit8 v0, v1, 0x2

    .line 986
    .local v0, onePage:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    if-lt p1, v0, :cond_1

    .line 988
    const-string v1, ""

    .line 1007
    :goto_1
    return-object v1

    .line 984
    .end local v0           #onePage:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v0, v1, v2

    .restart local v0       #onePage:I
    goto :goto_0

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeName:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    goto :goto_1

    .line 991
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 992
    if-lt p1, v0, :cond_3

    .line 993
    const-string v1, ""

    goto :goto_1

    .line 995
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicName:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    goto :goto_1

    .line 996
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 997
    if-lt p1, v0, :cond_5

    .line 998
    const-string v1, ""

    goto :goto_1

    .line 1000
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdName:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    goto :goto_1

    .line 1001
    :cond_6
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1002
    if-lt p1, v0, :cond_7

    .line 1003
    const-string v1, ""

    goto :goto_1

    .line 1005
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmName:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    goto :goto_1

    .line 1007
    :cond_8
    const-string v1, ""

    goto :goto_1
.end method

.method private getNormalIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 840
    sget-object v4, Lcom/android/mms/util/MessageConsts;->emoticonIdList:[I

    .line 842
    .local v4, source:[I
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 843
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit8 v3, v5, 0x4

    .line 847
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 848
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 849
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 850
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 855
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 845
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v5, v5, v6

    mul-int/lit8 v3, v5, 0x2

    .restart local v3       #onePage:I
    goto :goto_0

    .line 853
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getPreviewIcon(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1019
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v1

    .line 1023
    :cond_1
    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v2, v3, :cond_2

    .line 1024
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v2, v2, v1

    mul-int/lit8 v0, v2, 0x2

    .line 1029
    .local v0, onePage:I
    :goto_1
    if-ge p1, v0, :cond_0

    .line 1032
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1033
    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->DYNAMIC_ICON_ARR:[I

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget v1, v1, v2

    goto :goto_0

    .line 1026
    .end local v0           #onePage:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v0, v2, v3

    .restart local v0       #onePage:I
    goto :goto_1

    .line 1034
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1035
    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->AD_ICON_ARR:[I

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget v1, v1, v2

    goto :goto_0

    .line 1036
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->XM_ICON_ARR:[I

    iget v2, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmIndex:I

    mul-int/2addr v2, v0

    add-int/2addr v2, p1

    aget v1, v1, v2

    goto :goto_0
.end method

.method private getXmIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 930
    sget-object v4, Lcom/mediatek/mms/ipmessage/IpMessageConsts;->XM_PNG_ICON_ARR:[I

    .line 932
    .local v4, source:[I
    iget v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 933
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    mul-int/lit8 v3, v5, 0x2

    .line 937
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 938
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 939
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 940
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 945
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 935
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mColumnArray:[I

    aget v3, v5, v6

    .restart local v3       #onePage:I
    goto :goto_0

    .line 943
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 938
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private startDelEmoticon()V
    .locals 2

    .prologue
    .line 1087
    const-string v0, "Mms/IpMessageEmoticonPanel"

    const-string v1, "Delete one emoticon."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    monitor-enter v1

    .line 1090
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->stopDelEmoticon()V

    .line 1091
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNeedQuickDelete:Z

    .line 1094
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;)V

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    .line 1095
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    monitor-enter v1

    .line 1096
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1097
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1098
    return-void

    .line 1091
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1097
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private stopDelEmoticon()V
    .locals 2

    .prologue
    .line 1101
    const-string v0, "Mms/IpMessageEmoticonPanel"

    const-string v1, "Stop quick delete."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    if-nez v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNeedQuickDelete:Z

    .line 1110
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    monitor-enter v1

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    invoke-virtual {v0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;->stopThread()V

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticonThread:Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$DelEmoticonThread;

    .line 1109
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateGridView(Landroid/view/View;Landroid/widget/GridView;Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$LargeEmoticonAdapter;)V
    .locals 1
    .parameter "v"
    .parameter "gridView"
    .parameter "adapter"

    .prologue
    .line 747
    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 748
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;

    invoke-direct {v0, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$13;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 758
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;

    invoke-direct {v0, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$14;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {p2, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 772
    new-instance v0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$15;

    invoke-direct {v0, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$15;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 787
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 788
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 184
    .local v0, checkedId:I
    if-nez p2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const v1, 0x7f0f00b0

    if-ne v1, v0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 189
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 190
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 191
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 192
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 193
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addNormalPanel()V

    goto :goto_0

    .line 194
    :cond_2
    const v1, 0x7f0f00b4

    if-ne v1, v0, :cond_3

    .line 195
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 198
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 199
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 200
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addLargePanel()V

    goto :goto_0

    .line 201
    :cond_3
    const v1, 0x7f0f00b3

    if-ne v1, v0, :cond_4

    .line 202
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 203
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 204
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 207
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addDynamicPanel()V

    goto :goto_0

    .line 208
    :cond_4
    const v1, 0x7f0f00b1

    if-ne v1, v0, :cond_5

    .line 209
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 210
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 211
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 213
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 214
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addXmPanel()V

    goto/16 :goto_0

    .line 215
    :cond_5
    const v1, 0x7f0f00b2

    if-ne v1, v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 217
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 219
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 220
    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 221
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addAdPanel()V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f0f00a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/LevelControlLayout;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    .line 137
    iput-object p0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    .line 139
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    .line 140
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    .line 141
    const v0, 0x7f0f00a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    .line 142
    const v0, 0x7f0f00b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    .line 143
    const v0, 0x7f0f00b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    .line 144
    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    .line 145
    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    .line 146
    const v0, 0x7f0f00b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    .line 147
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mEmoticonName:[Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeName:[Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicName:[Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdName:[Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmName:[Ljava/lang/String;

    .line 152
    const v0, 0x7f0f00af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticon:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDelEmoticon:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel$1;-><init>(Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    new-instance v0, Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    iget-object v1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/ipmsg/ui/EmoticonPreview;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mPreview:Lcom/mediatek/ipmsg/ui/EmoticonPreview;

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->resetShareItem()V

    .line 179
    return-void
.end method

.method public recycleView()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1057
    :cond_0
    return-void
.end method

.method public resetShareItem()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mNormalTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addNormalPanel()V

    .line 240
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/LevelControlLayout;->autoRecovery()V

    .line 241
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mLargeTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addLargePanel()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mDynamicTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addDynamicPanel()V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mAdTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addAdPanel()V

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mXmTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->addXmPanel()V

    goto :goto_0
.end method

.method public setEditEmoticonListener(Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    .line 1084
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/IpMessageEmoticonPanel;->mHandler:Landroid/os/Handler;

    .line 1051
    return-void
.end method
