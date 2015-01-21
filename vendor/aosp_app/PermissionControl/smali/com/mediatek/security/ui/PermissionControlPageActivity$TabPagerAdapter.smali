.class Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PermissionControlPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionControlPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field final synthetic this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/ui/PermissionControlPageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 120
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$100(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/PermissionsFragment;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 147
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$200(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/AppsFragment;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
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
    .line 165
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 168
    :cond_0
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 175
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 177
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x2

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionControlPageActivity;->mPermissionsFragment:Lcom/mediatek/security/ui/PermissionsFragment;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$100(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/PermissionsFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->this$0:Lcom/mediatek/security/ui/PermissionControlPageActivity;

    #getter for: Lcom/mediatek/security/ui/PermissionControlPageActivity;->mAppsFragment:Lcom/mediatek/security/ui/AppsFragment;
    invoke-static {v0}, Lcom/mediatek/security/ui/PermissionControlPageActivity;->access$200(Lcom/mediatek/security/ui/PermissionControlPageActivity;)Lcom/mediatek/security/ui/AppsFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 159
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 160
    .local v0, f:Landroid/app/Fragment;
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 181
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
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 205
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 186
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 187
    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v1, v0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 191
    :cond_0
    if-eqz v0, :cond_1

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 194
    :cond_1
    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionControlPageActivity$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 196
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 142
    return-void
.end method
