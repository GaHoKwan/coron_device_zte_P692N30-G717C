.class Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WeatherGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/WeatherGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SKPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/WeatherGroupActivity;


# direct methods
.method private constructor <init>(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/UI/WeatherGroupActivity;Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;-><init>(Lcom/hf/UI/WeatherGroupActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 699
    move-object v0, p3

    check-cast v0, Lcom/hf/UI/SKView;

    .line 700
    .local v0, view:Lcom/hf/UI/SKView;
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 701
    const-string v1, "destroyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "position = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hf/UI/SKView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    check-cast p1, Lcom/hf/UI/HFViewPager;

    .end local p1
    check-cast p3, Lcom/hf/UI/SKView;

    .end local p3
    invoke-virtual {p1, p3}, Lcom/hf/UI/HFViewPager;->removeView(Landroid/view/View;)V

    .line 705
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 735
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 709
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "SKPagerAdapter"

    const-string v1, "getCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 694
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 725
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "SKPagerAdapter"

    const-string v1, "instantiateItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    check-cast p1, Lcom/hf/UI/HFViewPager;

    .end local p1
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/hf/UI/HFViewPager;->addView(Landroid/view/View;)V

    .line 729
    iget-object v0, p0, Lcom/hf/UI/WeatherGroupActivity$SKPagerAdapter;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mSKViewList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/WeatherGroupActivity;->access$3(Lcom/hf/UI/WeatherGroupActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 717
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "SKPagerAdapter"

    const-string v1, "isViewFromObject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 739
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 740
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 741
    const-string v0, "SKPagerAdapter"

    const-string v1, "startUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    return-void
.end method
