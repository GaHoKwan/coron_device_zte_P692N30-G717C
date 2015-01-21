.class public Lcom/zte/retrieve/activity/InstructGuideViewActivity;
.super Landroid/app/Activity;
.source "InstructGuideViewActivity.java"

# interfaces
.implements Lcom/zte/retrieve/iview/IRemoteActiveBusinessView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;,
        Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;
    }
.end annotation


# instance fields
.field private groupdot:Landroid/view/ViewGroup;

.field private guideViews:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

.field private mainflipper:Landroid/view/ViewGroup;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewFlag:Z

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewFlag:Z

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)[Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private initImageView()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    .line 129
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 145
    return-void

    .line 132
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 134
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 136
    if-nez v0, :cond_1

    .line 137
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f02001f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->groupdot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v4, v4}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->getLinearLayout(Landroid/view/View;II)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->guideViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x7f02001e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private initPageView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    .line 105
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    const v3, 0x7f03000c

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    const v3, 0x7f03000e

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    const v3, 0x7f03000b

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    const v3, 0x7f03000a

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const v2, 0x7f03000d

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mainflipper:Landroid/view/ViewGroup;

    .line 111
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mainflipper:Landroid/view/ViewGroup;

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 112
    .local v1, sendInstructbtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->setBtnVisiblity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mainflipper:Landroid/view/ViewGroup;

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 119
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mainflipper:Landroid/view/ViewGroup;

    const v3, 0x7f090026

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->groupdot:Landroid/view/ViewGroup;

    .line 121
    invoke-direct {p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->setLockGuidViewforMTK()V

    .line 122
    return-void

    .line 115
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLockGuidViewforMTK()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, lockInfo:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/controller/Controller;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ZTE Q801U"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    :cond_1
    const-string v1, "mtk platform, delete take picture function"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 94
    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 96
    :cond_2
    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public clickController(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090028

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->handleListenClick()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090027

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->sendSmsCommand()V

    goto :goto_0
.end method

.method public getLinearLayout(Landroid/view/View;II)Landroid/view/View;
    .locals 5
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 229
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, linerLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, p2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 231
    .local v1, linerLayoutParames:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->stopPreListen()V

    .line 249
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->getViewFrom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->jumpToRetrieveMasterView()V

    .line 252
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 253
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x10

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 59
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 62
    iput-object p0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mContext:Landroid/content/Context;

    .line 63
    new-instance v2, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-direct {v2}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;-><init>()V

    iput-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    .line 64
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    iget-object v3, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->setContext(Landroid/content/Context;)V

    .line 65
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v2, p0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->setView(Lcom/zte/retrieve/iview/IView;)V

    .line 67
    invoke-direct {p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->initPageView()V

    .line 68
    invoke-direct {p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->initImageView()V

    .line 69
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mainflipper:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->setContentView(Landroid/view/View;)V

    .line 70
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;

    invoke-direct {v3, p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;-><init>(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;

    invoke-direct {v3, p0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageChangeListener;-><init>(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 73
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->setBtnVisiblity()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewFlag:Z

    .line 74
    iget-boolean v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewFlag:Z

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->getViewNumber()I

    move-result v1

    .line 76
    .local v1, itemIndex:I
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 79
    .end local v1           #itemIndex:I
    :cond_0
    iget-object v2, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v2}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->init()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->groupdot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 286
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 288
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->mPresenter:Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;

    invoke-virtual {v0}, Lcom/zte/retrieve/presenter/InstructGuideViewPresenter;->stopPreListen()V

    .line 263
    return-void
.end method

.method public setTextAndImage(II)V
    .locals 2
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 273
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    .local v0, listenView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
