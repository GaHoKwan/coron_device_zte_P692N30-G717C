.class Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EngineerMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/EngineerMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field private mCurPrimaryItem:Landroid/app/Fragment;

.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/mediatek/engineermode/EngineerMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/EngineerMode;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->this$0:Lcom/mediatek/engineermode/EngineerMode;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 117
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 176
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->this$0:Lcom/mediatek/engineermode/EngineerMode;

    #getter for: Lcom/mediatek/engineermode/EngineerMode;->mTabs:[Lcom/mediatek/engineermode/PrefsFragment;
    invoke-static {v0}, Lcom/mediatek/engineermode/EngineerMode;->access$100(Lcom/mediatek/engineermode/EngineerMode;)[Lcom/mediatek/engineermode/PrefsFragment;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 130
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 155
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 157
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x6

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->this$0:Lcom/mediatek/engineermode/EngineerMode;

    invoke-static {}, Lcom/mediatek/engineermode/EngineerMode;->access$000()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 142
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 143
    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 146
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 147
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 161
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

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 166
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 167
    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 171
    :cond_0
    iput-object v0, p0, Lcom/mediatek/engineermode/EngineerMode$MyPagerAdapter;->mCurPrimaryItem:Landroid/app/Fragment;

    .line 173
    :cond_1
    return-void
.end method
