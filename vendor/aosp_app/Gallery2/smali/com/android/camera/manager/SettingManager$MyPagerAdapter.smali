.class Lcom/android/camera/manager/SettingManager$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SettingManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/SettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private final mPageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/SettingListLayout;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/manager/SettingManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/manager/SettingManager;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/SettingListLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p2, pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    iput-object p1, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    .line 430
    return-void
.end method


# virtual methods
.method public collapse(Z)Z
    .locals 7
    .parameter "force"

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, collapse:Z
    iget-object v4, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 506
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 507
    iget-object v4, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SettingListLayout;

    .line 508
    .local v2, pageView:Lcom/android/camera/ui/SettingListLayout;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ui/SettingListLayout;->collapseChild()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    .line 509
    const/4 v0, 0x1

    .line 513
    .end local v2           #pageView:Lcom/android/camera/ui/SettingListLayout;
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/SettingManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 514
    const-string v4, "SettingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MyPagerAdapter.collapse("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    return v0

    .line 506
    .restart local v2       #pageView:Lcom/android/camera/ui/SettingListLayout;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 434
    invoke-static {}, Lcom/android/camera/manager/SettingManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyPagerAdapter.destroyItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 438
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 442
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .parameter "view"
    .parameter "position"

    .prologue
    .line 451
    invoke-static {}, Lcom/android/camera/manager/SettingManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyPagerAdapter.instantiateItem("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 460
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 494
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 495
    iget-object v2, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->mPageViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingListLayout;

    .line 496
    .local v1, page:Lcom/android/camera/ui/SettingListLayout;
    if-eqz v1, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->this$0:Lcom/android/camera/manager/SettingManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingListLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingListLayout$Listener;)V

    .line 498
    invoke-virtual {v1}, Lcom/android/camera/ui/SettingListLayout;->reloadPreference()V

    goto :goto_0

    .line 501
    .end local v1           #page:Lcom/android/camera/ui/SettingListLayout;
    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 479
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->collapse(Z)Z

    .line 484
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->this$0:Lcom/android/camera/manager/SettingManager;

    #calls: Lcom/android/camera/manager/SettingManager;->highlightCurrentSetting(I)V
    invoke-static {v0, p1}, Lcom/android/camera/manager/SettingManager;->access$100(Lcom/android/camera/manager/SettingManager;I)V

    .line 489
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->collapse(Z)Z

    .line 490
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 465
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 474
    return-void
.end method
