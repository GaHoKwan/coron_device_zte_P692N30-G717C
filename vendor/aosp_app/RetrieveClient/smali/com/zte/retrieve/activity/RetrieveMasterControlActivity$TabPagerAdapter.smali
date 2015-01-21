.class Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RetrieveMasterControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 255
    invoke-virtual {p1}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 256
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->localFragment:Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$4(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/activity/RetrieveLocalTabViewFragment;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->this$0:Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;

    #getter for: Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->cloudFragment:Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;->access$5(Lcom/zte/retrieve/activity/RetrieveMasterControlActivity;)Lcom/zte/retrieve/activity/RetrieveCloudTabViewFragment;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "object"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 272
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 273
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 285
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 287
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, count:I
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->isSupportCloud()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x2

    .line 299
    :cond_0
    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 313
    :cond_0
    invoke-direct {p0, p2}, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 314
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/zte/retrieve/activity/RetrieveMasterControlActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 318
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 338
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

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
    .line 350
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 369
    return-void
.end method
