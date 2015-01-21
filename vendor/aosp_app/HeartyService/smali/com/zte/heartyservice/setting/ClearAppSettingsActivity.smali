.class public Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "ClearAppSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;,
        Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;,
        Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;,
        Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;
    }
.end annotation


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;

.field private packageNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->packageNameSet:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->appList:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;

    .line 170
    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Lcom/zte/heartyservice/common/datatype/P3Switch;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->setSwitch(Lcom/zte/heartyservice/common/datatype/P3Switch;)V

    return-void
.end method

.method private setSwitch(Lcom/zte/heartyservice/common/datatype/P3Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, pName:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isInWhiteApps(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 46
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mListView:Landroid/widget/ListView;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 56
    invoke-super {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onResume()V

    .line 58
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 62
    .local v3, mainActivitys:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 63
    .local v2, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    .local v5, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->packageNameSet:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.zte.heartyservice"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->packageNameSet:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->appList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->appList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->appList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 71
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->appList:Ljava/util/List;

    new-instance v7, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    :cond_2
    new-instance v0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;

    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->appList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v6}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 75
    .local v0, adapter:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;
    iget-object v6, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method
