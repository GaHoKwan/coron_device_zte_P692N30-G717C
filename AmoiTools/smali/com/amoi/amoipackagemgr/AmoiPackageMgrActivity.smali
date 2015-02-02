.class public Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;
.super Landroid/app/Activity;
.source "AmoiPackageMgrActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AmoiPackageMgrActivity"

.field public static final mProcessBL:[Ljava/lang/String;


# instance fields
.field private final MSG_APP_LOADED:I

.field private apkListView:Landroid/widget/ListView;

.field private mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInfo_Hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amoi/amoipackagemgr/Info_Item;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo_List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/amoipackagemgr/Info_Item;",
            ">;"
        }
    .end annotation
.end field

.field mPm:Landroid/content/pm/PackageManager;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.chaozh.iReaderFree15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mProcessBL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_List:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_Hash:Ljava/util/HashMap;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->MSG_APP_LOADED:I

    .line 187
    new-instance v0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;

    invoke-direct {v0, p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity$1;-><init>(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)V

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_List:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->refreshAdapter()V

    return-void
.end method

.method private checkPwrStartPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 89
    .local v0, permission:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 90
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const/4 v2, 0x1

    .line 96
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getInstalledPackages()V
    .locals 12

    .prologue
    .line 148
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 153
    .local v5, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 154
    .local v6, ris:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 155
    .local v3, inBlackList:Z
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    sget-object v7, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mProcessBL:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 157
    sget-object v7, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mProcessBL:[Ljava/lang/String;

    aget-object v7, v7, v4

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 158
    const/4 v3, 0x1

    .line 162
    :cond_1
    iget-boolean v7, v6, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v7, :cond_2

    if-eqz v3, :cond_0

    .line 163
    :cond_2
    const-string v7, "AmoiPackageMgrActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receivers app :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v7, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_Hash:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 165
    const-string v7, "AmoiPackageMgrActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "has same app already:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inBlackList:Z
    .end local v4           #index:I
    .end local v5           #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #ris:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    .line 177
    :cond_3
    iget-object v7, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void

    .line 156
    .restart local v1       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #inBlackList:Z
    .restart local v4       #index:I
    .restart local v5       #receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6       #ris:Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    :cond_5
    :try_start_1
    new-instance v0, Lcom/amoi/amoipackagemgr/Info_Item;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->getAppName(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p0, v1}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->getAppIcon(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v0, v7, v8, v9}, Lcom/amoi/amoipackagemgr/Info_Item;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 170
    .local v0, Info:Lcom/amoi/amoipackagemgr/Info_Item;
    iget-object v7, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_Hash:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v7, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_List:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 64
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    .line 65
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 66
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mTextView:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    new-instance v0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    iget-object v1, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_List:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    .line 69
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method private refreshAdapter()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    iget-object v1, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mInfo_List:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    .line 183
    invoke-direct {p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->updateListCheckBoxeState()V

    .line 184
    iget-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    invoke-virtual {v0}, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->notifyDataSetChanged()V

    .line 185
    return-void
.end method

.method private updateListCheckBoxeState()V
    .locals 7

    .prologue
    .line 75
    iget-object v4, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    invoke-virtual {v4}, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->getCount()I

    move-result v1

    .line 76
    .local v1, count:I
    const-string v4, "AmoiPackageMgrActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v3, 0x0

    .local v3, position:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 78
    iget-object v4, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    invoke-virtual {v4, v3}, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amoi/amoipackagemgr/Info_Item;

    .line 79
    .local v2, packageInfo:Lcom/amoi/amoipackagemgr/Info_Item;
    invoke-virtual {v2}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->checkPwrStartPermission(Ljava/lang/String;)Z

    move-result v0

    .line 80
    .local v0, checked:Z
    const-string v4, "AmoiPackageMgrActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "checked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0           #checked:Z
    .end local v2           #packageInfo:Lcom/amoi/amoipackagemgr/Info_Item;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppIcon(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "pContext"
    .parameter "appInfo"

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    .local v1, pRes:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    :cond_0
    return-object v0
.end method

.method public getAppName(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .parameter "appInfo"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    .local v0, lable:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->setTitle(I)V

    .line 55
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 57
    iput-object p0, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->initView()V

    .line 59
    invoke-direct {p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->getInstalledPackages()V

    .line 60
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "AmoiPackageMgrActivity"

    const-string v4, "onItemClick with adapterView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mAdapter:Lcom/amoi/amoipackagemgr/InfoListViewAdapter;

    invoke-virtual {v3, p3}, Lcom/amoi/amoipackagemgr/InfoListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amoi/amoipackagemgr/Info_Item;

    .line 104
    .local v1, packageInfo:Lcom/amoi/amoipackagemgr/Info_Item;
    iget-object v3, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v1}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 106
    const-string v3, "AmoiPackageMgrActivity"

    const-string v4, "onItemClick apk name is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 110
    .local v0, checked:Z
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v1}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yes"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    :goto_1
    iget-object v3, p0, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->apkListView:Landroid/widget/ListView;

    invoke-virtual {v3, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 116
    invoke-direct {p0}, Lcom/amoi/amoipackagemgr/AmoiPackageMgrActivity;->refreshAdapter()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcom/amoi/amoipackagemgr/Info_Item;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
