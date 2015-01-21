.class Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PowerManagerPhoneActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerAdapter"
.end annotation


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mTabPagerAdapterSearchMode:Z

.field final synthetic this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 86
    invoke-virtual {p1}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 87
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    #getter for: Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;
    invoke-static {v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->access$000(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/BatteryInfoFragment;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    #getter for: Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;
    invoke-static {v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->access$100(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/NewStaticsFragment;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    #getter for: Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;
    invoke-static {v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->access$200(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/ModeSettingsFragment;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_2
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
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 156
    :cond_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem =============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 158
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 165
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 167
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x3

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    #getter for: Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mBatteryInfoFragment:Lcom/zte/heartyservice/power/BatteryInfoFragment;
    invoke-static {v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->access$000(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/BatteryInfoFragment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    #getter for: Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mStaticsFragment:Lcom/zte/heartyservice/power/NewStaticsFragment;
    invoke-static {v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->access$100(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/NewStaticsFragment;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    #getter for: Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mModeSettingsFragment:Lcom/zte/heartyservice/power/ModeSettingsFragment;
    invoke-static {v0}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->access$200(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)Lcom/zte/heartyservice/power/ModeSettingsFragment;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter "container"
    .parameter "position"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 143
    :cond_0
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 144
    .local v0, f:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 147
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 148
    return-object v0

    .line 147
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 91
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
    .line 190
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 172
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 173
    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v1, v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 180
    :cond_1
    iput-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 182
    :cond_2
    return-void
.end method
