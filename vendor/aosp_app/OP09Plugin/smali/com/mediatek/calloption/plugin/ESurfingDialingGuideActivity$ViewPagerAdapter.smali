.class Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ESurfingDialingGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;-><init>(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "v"
    .parameter "position"
    .parameter "arg2"

    .prologue
    .line 191
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$200(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 197
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$200(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "v"
    .parameter "position"

    .prologue
    .line 208
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$200(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity$ViewPagerAdapter;->this$0:Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;

    #getter for: Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->mStepViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;->access$200(Lcom/mediatek/calloption/plugin/ESurfingDialingGuideActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "v"
    .parameter "arg1"

    .prologue
    .line 215
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 234
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 223
    return-void
.end method
