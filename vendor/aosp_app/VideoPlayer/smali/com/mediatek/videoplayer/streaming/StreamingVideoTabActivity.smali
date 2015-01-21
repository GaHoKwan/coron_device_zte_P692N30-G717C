.class public Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;
.super Landroid/app/TabActivity;
.source "StreamingVideoTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDEX:I = 0x0

.field private static final SAVE_TAB:Ljava/lang/String; = "activitetab"

.field private static final TAG:Ljava/lang/String; = "StreamingVideoTabActivity"


# instance fields
.field private mActivityManager:Landroid/app/LocalActivityManager;

.field private mCurrentIndex:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPageChanged:Z

.field private mScreenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

.field private mViewPagerState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 74
    iput-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 75
    iput-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;

    .line 77
    iput-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    .line 78
    iput-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 79
    iput v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    .line 80
    iput v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerState:I

    .line 81
    iput-boolean v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mPageChanged:Z

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Landroid/app/LocalActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    return-object v0
.end method

.method private getView(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    invoke-virtual {v0, p1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initPager()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    invoke-virtual {v1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->getView(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method private initTab()V
    .locals 10

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    invoke-virtual {v6}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getTabCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 189
    iget-object v6, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    invoke-virtual {v6, v0}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getTabId(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, tabId:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    invoke-virtual {v6, v0}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getTabName(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, tabName:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030025

    iget-object v8, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 193
    .local v5, tabView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v6, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x1020011

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 203
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 205
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 206
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v6, 0x3

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const-string v6, "StreamingVideoTabActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initTab() widthPixels is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", width is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 210
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #tabId:Ljava/lang/String;
    .end local v4           #tabName:Ljava/lang/String;
    .end local v5           #tabView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 87
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 89
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-direct {v0, p0, v2}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 90
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 93
    new-instance v0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;-><init>(Landroid/content/Context;Landroid/app/LocalActivityManager;)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    .line 94
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 95
    invoke-direct {p0}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->initTab()V

    .line 96
    const-string v0, "activitetab"

    invoke-static {p0, v0, v2}, Lcom/mediatek/videoplayer/streaming/StreamingUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    .line 97
    const-string v0, "StreamingVideoTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() mCurrentIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 99
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->initPager()V

    .line 102
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 103
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;

    invoke-direct {v1, p0}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;-><init>(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 234
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 235
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 247
    const-string v0, "StreamingVideoTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged() state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput p1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerState:I

    .line 249
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mPageChanged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 250
    const-string v0, "StreamingVideoTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged() notify activity focus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    iget v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->notifyActivities(I)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mPageChanged:Z

    .line 254
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 258
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 262
    const-string v0, "StreamingVideoTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mPageChanged:Z

    .line 264
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 265
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "activitetab"

    iget v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    invoke-static {p0, v0, v1}, Lcom/mediatek/videoplayer/streaming/StreamingUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 222
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 216
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 228
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 229
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    invoke-virtual {v1, p1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, tabIndex:I
    const-string v1, "StreamingVideoTabActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged() tabId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tabIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 242
    iput v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I

    .line 243
    return-void
.end method
