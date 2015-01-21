.class public Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;
.super Ljava/lang/Object;
.source "AbsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/AbsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TabManager"
.end annotation


# instance fields
.field private final mBlankTab:Landroid/widget/Button;

.field private mCurFilePath:Ljava/lang/String;

.field private final mTabNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTabsHolder:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/mediatek/filemanager/AbsBaseActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/AbsBaseActivity;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 433
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    .line 429
    iput-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    .line 430
    iput-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    .line 434
    const v1, 0x7f0c0002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    .line 435
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    .line 436
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 441
    .local v0, mlp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 443
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->showPrevNavigationView(Ljava/lang/String;)V

    return-void
.end method

.method private showPrevNavigationView(Ljava/lang/String;)V
    .locals 1
    .parameter "newPath"

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v0, p1}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method private startActionBarScroll()V
    .locals 6

    .prologue
    .line 473
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 474
    .local v1, tabHostCount:I
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 475
    .local v0, navigationBarCount:I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    .line 476
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 477
    .local v2, width:I
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v3, v3, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v4, v4, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v5, v5, Lcom/mediatek/filemanager/AbsBaseActivity;->mNavigationBar:Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/filemanager/AbsBaseActivity$SlowHorizontalScrollView;->startHorizontalScroll(II)V

    .line 480
    .end local v2           #width:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected addTab(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 524
    const/4 v1, 0x0

    .line 526
    .local v1, mlp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 527
    const/4 v2, 0x0

    .line 528
    .local v2, viewLikeBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    new-instance v2, Landroid/widget/ImageButton;

    .end local v2           #viewLikeBtn:Landroid/view/View;
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 530
    .restart local v2       #viewLikeBtn:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #mlp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 533
    .restart local v1       #mlp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 534
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    :goto_0
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 552
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 553
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 557
    return-void

    .line 536
    :cond_0
    new-instance v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 537
    .local v0, button:Landroid/widget/Button;
    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 538
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    const/16 v3, 0xfa

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 540
    invoke-static {v0}, Lcom/mediatek/filemanager/utils/LongStringUtils;->fadeOutLongString(Landroid/widget/TextView;)V

    .line 541
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1           #mlp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 546
    .restart local v1       #mlp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 547
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    move-object v2, v0

    goto :goto_0
.end method

.method public refreshTab(Ljava/lang/String;)V
    .locals 10
    .parameter "initFileInfo"

    .prologue
    .line 448
    const-string v7, "AbsBaseActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshTab,initFileInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 450
    .local v1, count:I
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 451
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 453
    iput-object p1, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    .line 454
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 455
    const-string v7, "Home"

    invoke-virtual {p0, v7}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->addTab(Ljava/lang/String;)V

    .line 456
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v7, v7, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/filemanager/MountPointManager;->isRootPath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 457
    iget-object v7, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v7, v7, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v8, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/filemanager/MountPointManager;->getDescriptionPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, path:Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, result:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 460
    .local v6, string:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->addTab(Ljava/lang/String;)V

    .line 459
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    .end local v6           #string:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->startActionBarScroll()V

    .line 466
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #result:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->updateHomeButton()V

    .line 467
    return-void
.end method

.method protected updateHomeButton()V
    .locals 7

    .prologue
    const v6, 0x7f050004

    const v5, 0x7f02000c

    const/4 v4, 0x0

    .line 483
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 484
    .local v0, homeBtn:Landroid/widget/ImageButton;
    if-nez v0, :cond_0

    .line 485
    const-string v2, "AbsBaseActivity"

    const-string v3, "HomeBtm is null,return."

    invoke-static {v2, v3}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 489
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 492
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 498
    :cond_1
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected updateNavigationBar(I)V
    .locals 13
    .parameter "id"

    .prologue
    .line 566
    const-string v10, "AbsBaseActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNavigationBar,id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge p1, v10, :cond_2

    .line 569
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v0, v10, p1

    .line 570
    .local v0, count:I
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    add-int/lit8 v11, p1, 0x1

    invoke-virtual {v10, v11, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 572
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 574
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabNameList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_0
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mTabsHolder:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mBlankTab:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 578
    if-nez p1, :cond_3

    .line 579
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v10, v10, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    invoke-virtual {v10}, Lcom/mediatek/filemanager/MountPointManager;->getRootPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    .line 595
    :goto_1
    const/4 v8, -0x1

    .line 596
    .local v8, top:I
    const/4 v5, -0x1

    .line 597
    .local v5, pos:I
    const/4 v7, 0x0

    .line 598
    .local v7, selectedFileInfo:Lcom/mediatek/filemanager/FileInfo;
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v10, v10, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 599
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v10, v10, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 600
    .local v9, view:Landroid/view/View;
    if-eqz v9, :cond_1

    .line 601
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v10, v10, Lcom/mediatek/filemanager/AbsBaseActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v9}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    .line 602
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v10, v10, Lcom/mediatek/filemanager/AbsBaseActivity;->mAdapter:Lcom/mediatek/filemanager/FileInfoAdapter;

    invoke-virtual {v10, v5}, Lcom/mediatek/filemanager/FileInfoAdapter;->getItem(I)Lcom/mediatek/filemanager/FileInfo;

    move-result-object v7

    .line 603
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 604
    const-string v10, "AbsBaseActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateNavigationBar, pos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " top: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v11, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v11, v11, Lcom/mediatek/filemanager/AbsBaseActivity;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v10, v11, v7, v8}, Lcom/mediatek/filemanager/AbsBaseActivity;->addToNavigationList(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V

    .line 608
    .end local v9           #view:Landroid/view/View;
    :cond_1
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v11, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/AbsBaseActivity;->showDirectoryContent(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->updateHomeButton()V

    .line 611
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v5           #pos:I
    .end local v7           #selectedFileInfo:Lcom/mediatek/filemanager/FileInfo;
    .end local v8           #top:I
    :cond_2
    return-void

    .line 582
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_3
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->this$0:Lcom/mediatek/filemanager/AbsBaseActivity;

    iget-object v10, v10, Lcom/mediatek/filemanager/AbsBaseActivity;->mMountPointManager:Lcom/mediatek/filemanager/MountPointManager;

    iget-object v11, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/mediatek/filemanager/MountPointManager;->getRealMountPointPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, mntPointPath:Ljava/lang/String;
    const-string v10, "AbsBaseActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mntPointPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " for mCurFilepath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, pathParts:[Ljava/lang/String;
    const/4 v1, 0x2

    :goto_2
    if-gt v1, p1, :cond_4

    .line 589
    const-string v10, "/"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    add-int/lit8 v10, v1, -0x2

    aget-object v10, v4, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 592
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    .line 593
    const-string v10, "AbsBaseActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "to enter file path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/filemanager/AbsBaseActivity$TabManager;->mCurFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
