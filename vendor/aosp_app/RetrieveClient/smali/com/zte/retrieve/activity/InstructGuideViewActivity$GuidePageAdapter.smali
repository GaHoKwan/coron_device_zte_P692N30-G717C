.class Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InstructGuideViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/InstructGuideViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuidePageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 166
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$0(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 193
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$0(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 171
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$0(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/zte/retrieve/activity/InstructGuideViewActivity$GuidePageAdapter;->this$0:Lcom/zte/retrieve/activity/InstructGuideViewActivity;

    #getter for: Lcom/zte/retrieve/activity/InstructGuideViewActivity;->pageViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/retrieve/activity/InstructGuideViewActivity;->access$0(Lcom/zte/retrieve/activity/InstructGuideViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 156
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
    .line 178
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 188
    return-void
.end method
