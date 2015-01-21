.class Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/music/MusicBrowserActivity;Lcom/android/music/MusicBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;-><init>(Lcom/android/music/MusicBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 791
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 793
    .local v0, viewPager:Landroid/support/v4/view/ViewPager;
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 794
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 798
    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 799
    .local v1, viewPager:Landroid/support/v4/view/ViewPager;
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/music/MusicBrowserActivity;->access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 800
    .local v0, view:Landroid/view/View;
    const-string v2, "MusicBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem-position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-nez v0, :cond_0

    .line 802
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #calls: Lcom/android/music/MusicBrowserActivity;->getView(I)Landroid/view/View;
    invoke-static {v2, p2}, Lcom/android/music/MusicBrowserActivity;->access$1000(Lcom/android/music/MusicBrowserActivity;I)Landroid/view/View;

    move-result-object v0

    .line 803
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/music/MusicBrowserActivity;->access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 804
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/music/MusicBrowserActivity;->access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 805
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mActivityManager:Landroid/app/LocalActivityManager;
    invoke-static {v2}, Lcom/android/music/MusicBrowserActivity;->access$1100(Lcom/android/music/MusicBrowserActivity;)Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 807
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 808
    iget-object v2, p0, Lcom/android/music/MusicBrowserActivity$MusicPagerAdapter;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mPagers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/music/MusicBrowserActivity;->access$900(Lcom/android/music/MusicBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 817
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
