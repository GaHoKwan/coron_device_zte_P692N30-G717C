.class public Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ContactDetailViewPagerAdapter.java"


# static fields
.field public static final ABOUT_FRAGMENT_TAG:Ljava/lang/String; = "view-pager-about-fragment"

.field private static final INDEX_ABOUT_FRAGMENT:I = 0x0

.field private static final INDEX_UPDATES_FRAGMENT:I = 0x1

.field private static final MAX_FRAGMENT_VIEW_COUNT:I = 0x2

.field public static final UPDATES_FRAGMENT_TAG:Ljava/lang/String; = "view-pager-updates-fragment"


# instance fields
.field private mAboutFragmentView:Landroid/view/View;

.field private mFragmentViewCount:I

.field private mUpdatesFragmentView:Landroid/view/View;

.field private mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    .line 56
    new-instance v0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    .line 58
    return-void
.end method


# virtual methods
.method public addFragmentView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "tag"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->addFragmentView(Landroid/view/View;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 131
    check-cast p3, Landroid/view/View;

    .end local p3
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public enableSwipe(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    .line 75
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->updateOffset(I)V

    .line 77
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 78
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 136
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, pos:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 103
    .end local v0           #pos:I
    :goto_0
    return v0

    .line 95
    .restart local v0       #pos:I
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mFragmentViewCount:I

    if-le v2, v1, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "container"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mViewPagerAdapterEx:Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/detail/ContactDetailViewPagerAdapterEx;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 113
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .end local v0           #view:Landroid/view/View;
    :goto_0
    return-object v0

    .line 118
    .restart local v0       #view:Landroid/view/View;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 140
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p2, p1, :cond_0

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
    .line 150
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAboutFragmentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mAboutFragmentView:Landroid/view/View;

    .line 62
    return-void
.end method

.method public setUpdatesFragmentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailViewPagerAdapter;->mUpdatesFragmentView:Landroid/view/View;

    .line 66
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 108
    return-void
.end method
