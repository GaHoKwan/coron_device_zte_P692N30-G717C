.class public Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewNotePagerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 15
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 73
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6
    .parameter "container"
    .parameter "position"

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, view:Landroid/view/View;
    new-instance v3, Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lzte/com/cn/cloudnotepad/ui/ViewNote;-><init>(Landroid/content/Context;)V

    .line 46
    .local v3, viewNote:Lzte/com/cn/cloudnotepad/ui/ViewNote;
    :try_start_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;

    iget-object v4, v4, Lzte/com/cn/cloudnotepad/ui/ViewNotePagerActivity;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 47
    invoke-virtual {v3, v2, p2}, Lzte/com/cn/cloudnotepad/ui/ViewNote;->initNote(Landroid/view/View;I)V

    .line 48
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local p1
    :goto_0
    return-object v2

    .line 49
    .restart local p1
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 26
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
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 59
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 69
    return-void
.end method
