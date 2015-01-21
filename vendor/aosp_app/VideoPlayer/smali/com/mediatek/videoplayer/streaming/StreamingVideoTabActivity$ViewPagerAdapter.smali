.class Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "StreamingVideoTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mFirstLaunchNotified:Z

.field final synthetic this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->mFirstLaunchNotified:Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 134
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 135
    .local v0, viewPager:Landroid/support/v4/view/ViewPager;
    iget-object v1, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;
    invoke-static {v1}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 141
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 150
    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 151
    .local v1, viewPager:Landroid/support/v4/view/ViewPager;
    const-string v2, "StreamingVideoTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem() position is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 153
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #calls: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->getView(I)Landroid/view/View;
    invoke-static {v2, p2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$100(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;I)Landroid/view/View;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mActivityManager:Landroid/app/LocalActivityManager;
    invoke-static {v2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$200(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 159
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    iget-boolean v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->mFirstLaunchNotified:Z

    if-nez v2, :cond_1

    .line 162
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->mFirstLaunchNotified:Z

    .line 163
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mViewPagerHelper:Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;
    invoke-static {v2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$400(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mCurrentIndex:I
    invoke-static {v3}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$300(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->notifyActivities(I)V

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;

    #getter for: Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->mScreenViews:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;->access$000(Lcom/mediatek/videoplayer/streaming/StreamingVideoTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 170
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 175
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 184
    return-void
.end method
