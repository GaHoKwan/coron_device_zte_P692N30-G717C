.class public Lcom/android/mms/ui/EmoticonPanel;
.super Landroid/widget/LinearLayout;
.source "EmoticonPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;,
        Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;,
        Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/EmoticonPanel"


# instance fields
.field private mColumnArray:[I

.field private mContext:Landroid/content/Context;

.field private mDefaultIndex:I

.field private mDefaultName:[Ljava/lang/String;

.field private mDefaultTab:Landroid/widget/RadioButton;

.field private mDelEmoticon:Landroid/widget/Button;

.field private mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

.field private mDeleteRunnable:Ljava/lang/Runnable;

.field private mDotFirst:Landroid/widget/RadioButton;

.field private mDotForth:Landroid/widget/RadioButton;

.field private mDotSec:Landroid/widget/RadioButton;

.field private mDotThird:Landroid/widget/RadioButton;

.field private mGiftIndex:I

.field private mGiftName:[Ljava/lang/String;

.field private mGiftTab:Landroid/widget/RadioButton;

.field private mHandler:Landroid/os/Handler;

.field private mLandEmotionColumnNumber:I

.field private mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

.field private mNeedQuickDelete:Z

.field private mObject:Ljava/lang/Object;

.field private mOrientation:I

.field private mPortEmotionColumnNumber:I

.field private mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

.field private mSharePanelMain:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    .line 99
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I

    .line 100
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mObject:Ljava/lang/Object;

    .line 105
    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mNeedQuickDelete:Z

    .line 106
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    .line 107
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    .line 375
    new-instance v0, Lcom/android/mms/ui/EmoticonPanel$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonPanel$3;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 113
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    .line 99
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I

    .line 100
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mObject:Ljava/lang/Object;

    .line 105
    iput-boolean v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mNeedQuickDelete:Z

    .line 106
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    .line 107
    iput v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    .line 375
    new-instance v0, Lcom/android/mms/ui/EmoticonPanel$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EmoticonPanel$3;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 118
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/EmoticonPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/EmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/EmoticonPanel;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/EmoticonPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/EmoticonPanel;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonPanel;->getDefaultName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/EmoticonPanel;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonPanel;->getGiftName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/EmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/EmoticonPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->startDelEmoticon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/EmoticonPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->stopDelEmoticon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/EmoticonPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/EmoticonPanel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/EmoticonPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mNeedQuickDelete:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/EmoticonPanel;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDeleteRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addDefaultPage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 577
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04001d

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f0084

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 581
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 582
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_0

    .line 583
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 594
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 595
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    iget v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    if-ne v5, v9, :cond_3

    .line 597
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 601
    :goto_1
    new-instance v0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonPanel;->getDefaultIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;-><init>(Lcom/android/mms/ui/EmoticonPanel;[I)V

    .line 602
    .local v0, adapter:Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 603
    new-instance v5, Lcom/android/mms/ui/EmoticonPanel$6;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/EmoticonPanel$6;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 614
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 615
    return-void

    .line 585
    .end local v0           #adapter:Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 588
    .end local v2           #height:I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_2

    .line 589
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 591
    .end local v2           #height:I
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 599
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addDefaultPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 388
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    .line 389
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    .line 390
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 393
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 394
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    .line 395
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 399
    const/4 v3, 0x4

    new-array v0, v3, [Landroid/widget/RadioButton;

    .line 400
    .local v0, DotGroup:[Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    aput-object v3, v0, v6

    .line 401
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 402
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 403
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 404
    iget v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/android/mms/ui/EmoticonPanel;->calculateDefaultPageCount(I)I

    move-result v2

    .line 405
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 406
    invoke-direct {p0, v1}, Lcom/android/mms/ui/EmoticonPanel;->addDefaultPage(I)V

    .line 407
    aget-object v3, v0, v1

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 410
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v4, Lcom/android/mms/ui/EmoticonPanel$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/EmoticonPanel$4;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 425
    return-void
.end method

.method private addGiftPage(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 624
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040034

    iget-object v7, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 626
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0f00d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 628
    .local v1, gridView:Landroid/widget/GridView;
    iget v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 629
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_0

    .line 630
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 641
    .local v2, height:I
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 642
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    if-eq v5, v9, :cond_3

    .line 644
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 648
    :goto_1
    new-instance v0, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/EmoticonPanel;->getGiftIconArray(I)[I

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;-><init>(Lcom/android/mms/ui/EmoticonPanel;[I)V

    .line 649
    .local v0, adapter:Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 650
    new-instance v5, Lcom/android/mms/ui/EmoticonPanel$7;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/EmoticonPanel$7;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    invoke-virtual {v1, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 661
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 662
    return-void

    .line 632
    .end local v0           #adapter:Lcom/android/mms/ui/EmoticonPanel$EmoticonAdapter;
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 635
    .end local v2           #height:I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_2

    .line 636
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 638
    .end local v2           #height:I
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .restart local v2       #height:I
    goto :goto_0

    .line 646
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v5, v5, v8

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_1
.end method

.method private addGiftPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 431
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    .line 432
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    .line 433
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/LevelControlLayout;->setDefaultScreen(I)V

    .line 437
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    .line 438
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const/4 v3, 0x4

    new-array v0, v3, [Landroid/widget/RadioButton;

    .line 443
    .local v0, DotGroup:[Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    aput-object v3, v0, v6

    .line 444
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 445
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 446
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    aput-object v4, v0, v3

    .line 447
    iget v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/android/mms/ui/EmoticonPanel;->calculateGiftPageCount(I)I

    move-result v2

    .line 448
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 449
    invoke-direct {p0, v1}, Lcom/android/mms/ui/EmoticonPanel;->addGiftPage(I)V

    .line 450
    aget-object v3, v0, v1

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/LevelControlLayout;->setToScreen(I)V

    .line 453
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    new-instance v4, Lcom/android/mms/ui/EmoticonPanel$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/EmoticonPanel$5;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/LevelControlLayout;->setOnScrollToScreen(Lcom/android/mms/ui/LevelControlLayout$OnScrollToScreenListener;)V

    .line 468
    return-void
.end method

.method private calculateDefaultPageCount(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 672
    if-ne p1, v4, :cond_1

    .line 673
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    mul-int v1, v3, v4

    .line 677
    .local v1, onePage:I
    :goto_0
    sget-object v3, Lcom/android/mms/util/MessageConsts;->defaultIconArr:[I

    array-length v2, v3

    .line 678
    .local v2, total:I
    div-int v0, v2, v1

    .line 679
    .local v0, count:I
    mul-int v3, v0, v1

    if-le v2, v3, :cond_0

    .line 680
    add-int/lit8 v0, v0, 0x1

    .line 682
    :cond_0
    return v0

    .line 675
    .end local v0           #count:I
    .end local v1           #onePage:I
    .end local v2           #total:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    mul-int v1, v3, v4

    .restart local v1       #onePage:I
    goto :goto_0
.end method

.method private calculateGiftPageCount(I)I
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x1

    .line 693
    if-ne p1, v4, :cond_1

    .line 694
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    mul-int v1, v3, v4

    .line 698
    .local v1, onePage:I
    :goto_0
    sget-object v3, Lcom/android/mms/util/MessageConsts;->giftIconArr:[I

    array-length v2, v3

    .line 699
    .local v2, total:I
    div-int v0, v2, v1

    .line 700
    .local v0, count:I
    mul-int v3, v0, v1

    if-le v2, v3, :cond_0

    .line 701
    add-int/lit8 v0, v0, 0x1

    .line 703
    :cond_0
    return v0

    .line 696
    .end local v0           #count:I
    .end local v1           #onePage:I
    .end local v2           #total:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    mul-int v1, v3, v4

    .restart local v1       #onePage:I
    goto :goto_0
.end method

.method private getDefaultIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 478
    sget-object v4, Lcom/android/mms/util/MessageConsts;->defaultIconArr:[I

    .line 480
    .local v4, source:[I
    iget v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 481
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget v6, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    mul-int v3, v5, v6

    .line 485
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 486
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 487
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 488
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 493
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 483
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v5, v5, v6

    iget v6, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    mul-int v3, v5, v6

    .restart local v3       #onePage:I
    goto :goto_0

    .line 491
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getDefaultName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 531
    iget v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 532
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    mul-int v1, v3, v4

    .line 536
    .local v1, onePage:I
    :goto_0
    const/16 v3, 0x14

    if-lt p1, v3, :cond_2

    .line 543
    :cond_0
    :goto_1
    return-object v2

    .line 534
    .end local v1           #onePage:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    mul-int v1, v3, v4

    .restart local v1       #onePage:I
    goto :goto_0

    .line 539
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultIndex:I

    mul-int/2addr v3, v1

    add-int v0, p1, v3

    .line 540
    .local v0, index:I
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 543
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultName:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1
.end method

.method private getGiftIconArray(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    .line 504
    sget-object v4, Lcom/android/mms/util/MessageConsts;->giftIconArr:[I

    .line 506
    .local v4, source:[I
    iget v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    if-ne v5, v6, :cond_1

    .line 507
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget v6, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    mul-int v3, v5, v6

    .line 511
    .local v3, onePage:I
    :goto_0
    new-array v0, v3, [I

    .line 512
    .local v0, arr:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 513
    mul-int v5, p1, v3

    add-int v2, v5, v1

    .line 514
    .local v2, index1:I
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 519
    .end local v2           #index1:I
    :cond_0
    return-object v0

    .line 509
    .end local v0           #arr:[I
    .end local v1           #i:I
    .end local v3           #onePage:I
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v5, v5, v6

    iget v6, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    mul-int v3, v5, v6

    .restart local v3       #onePage:I
    goto :goto_0

    .line 517
    .restart local v0       #arr:[I
    .restart local v1       #i:I
    .restart local v2       #index1:I
    :cond_2
    mul-int v5, p1, v3

    add-int/2addr v5, v1

    aget v5, v4, v5

    aput v5, v0, v1

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getGiftName(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 555
    iget v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mOrientation:I

    if-ne v3, v4, :cond_1

    .line 556
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    mul-int v1, v3, v4

    .line 560
    .local v1, onePage:I
    :goto_0
    const/16 v3, 0x14

    if-lt p1, v3, :cond_2

    .line 567
    :cond_0
    :goto_1
    return-object v2

    .line 558
    .end local v1           #onePage:I
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mColumnArray:[I

    aget v3, v3, v4

    iget v4, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    mul-int v1, v3, v4

    .restart local v1       #onePage:I
    goto :goto_0

    .line 563
    :cond_2
    iget v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftIndex:I

    mul-int/2addr v3, v1

    add-int v0, p1, v3

    .line 564
    .local v0, index:I
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftName:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_1
.end method

.method private startDelEmoticon()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "Mms/EmoticonPanel"

    const-string v1, "Delete one emoticon."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->stopDelEmoticon()V

    .line 316
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mNeedQuickDelete:Z

    .line 319
    new-instance v0, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;-><init>(Lcom/android/mms/ui/EmoticonPanel;Lcom/android/mms/ui/EmoticonPanel$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    monitor-enter v1

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 322
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    return-void

    .line 316
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 322
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
    .line 326
    const-string v0, "Mms/EmoticonPanel"

    const-string v1, "Stop quick delete."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mNeedQuickDelete:Z

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    invoke-virtual {v0}, Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;->stopThread()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticonThread:Lcom/android/mms/ui/EmoticonPanel$DelEmoticonThread;

    .line 334
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v5, 0x7f0f00ae

    const v4, 0x7f0f00ac

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 187
    .local v0, checkedId:I
    if-nez p2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v1}, Lcom/android/mms/ui/LevelControlLayout;->isScrolling()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    if-ne v4, v0, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 194
    :cond_2
    if-ne v5, v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 200
    :cond_3
    if-ne v4, v0, :cond_4

    .line 201
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 203
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->addDefaultPanel()V

    goto :goto_0

    .line 204
    :cond_4
    if-ne v5, v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 207
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->addGiftPanel()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 123
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 125
    const v3, 0x7f0f00a4

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/LevelControlLayout;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    .line 126
    iput-object p0, p0, Lcom/android/mms/ui/EmoticonPanel;->mSharePanelMain:Landroid/widget/LinearLayout;

    .line 127
    const v3, 0x7f0f00a6

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotFirst:Landroid/widget/RadioButton;

    .line 128
    const v3, 0x7f0f00a7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotSec:Landroid/widget/RadioButton;

    .line 129
    const v3, 0x7f0f00a8

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotThird:Landroid/widget/RadioButton;

    .line 130
    const v3, 0x7f0f00a9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDotForth:Landroid/widget/RadioButton;

    .line 131
    const v3, 0x7f0f00ac

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    .line 132
    const v3, 0x7f0f00ae

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    .line 133
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultName:[Ljava/lang/String;

    .line 134
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftName:[Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    .line 140
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    .line 145
    :goto_1
    new-instance v2, Lcom/android/mms/ui/EmoticonPanel$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/EmoticonPanel$1;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    .line 155
    .local v2, panelClickListener:Landroid/view/View$OnClickListener;
    const v3, 0x7f0f00ab

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 156
    .local v0, defaultPanel:Landroid/widget/LinearLayout;
    const v3, 0x7f0f00ad

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 158
    .local v1, giftPanel:Landroid/widget/LinearLayout;
    const v3, 0x7f0f00af

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticon:Landroid/widget/Button;

    .line 159
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDelEmoticon:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/EmoticonPanel$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/EmoticonPanel$2;-><init>(Lcom/android/mms/ui/EmoticonPanel;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    iget-object v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/EmoticonPanel;->resetShareItem()V

    .line 182
    return-void

    .line 138
    .end local v0           #defaultPanel:Landroid/widget/LinearLayout;
    .end local v1           #giftPanel:Landroid/widget/LinearLayout;
    .end local v2           #panelClickListener:Landroid/view/View$OnClickListener;
    :cond_0
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mPortEmotionColumnNumber:I

    goto :goto_0

    .line 143
    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/mms/ui/EmoticonPanel;->mLandEmotionColumnNumber:I

    goto :goto_1
.end method

.method public recycleView()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 227
    :cond_0
    return-void
.end method

.method public resetShareItem()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mDefaultTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->addDefaultPanel()V

    .line 220
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mScrollLayout:Lcom/android/mms/ui/LevelControlLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/LevelControlLayout;->autoRecovery()V

    .line 221
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel;->mGiftTab:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonPanel;->addGiftPanel()V

    goto :goto_0
.end method

.method public setEditEmoticonListener(Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    .line 281
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel;->mHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method
