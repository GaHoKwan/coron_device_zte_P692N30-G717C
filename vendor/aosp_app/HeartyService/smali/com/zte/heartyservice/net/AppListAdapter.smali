.class public Lcom/zte/heartyservice/net/AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;,
        Lcom/zte/heartyservice/net/AppListAdapter$SetIpRuleTask;,
        Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;,
        Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListAdapter"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;",
            "Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/AppUsageItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/zte/heartyservice/net/AppListAdapter;->list:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter;->pm:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p1, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mCallback:Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;

    .line 60
    invoke-static {}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->getInstance()Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/AppListAdapter;->switchAppInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/AppListAdapter;)Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mCallback:Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/net/AppListAdapter;->switchWifiInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;Z)V

    return-void
.end method

.method private getWifiCheckedInt(Ljava/lang/String;I)I
    .locals 5
    .parameter "packageName"
    .parameter "def"

    .prologue
    .line 86
    iget-object v4, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 102
    .end local p2
    :goto_0
    return p2

    .line 90
    .restart local p2
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 92
    .local v1, miCount:I
    const/4 v3, 0x0

    .line 93
    .local v3, type:I
    if-lez v1, :cond_1

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    const-string v4, "num"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, nameColumn:I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 98
    .end local v2           #nameColumn:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move p2, v3

    .line 99
    goto :goto_0

    .line 101
    .end local v1           #miCount:I
    .end local v3           #type:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private putWifiCheckedInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "value"

    .prologue
    .line 107
    iget-object v4, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    .local v0, cur:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 109
    .local v2, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v3, -0x1

    .line 111
    .local v3, uid:I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 112
    const-string v4, "weijun"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app uid  found="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->updateMarkedData(Ljava/lang/String;I)V

    .line 121
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 122
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "weijun"

    const-string v5, "app uid can\'t be found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mDBHelper:Lcom/zte/heartyservice/net/WifiDataBaseAdapter;

    invoke-virtual {v4, p1, p2, v3}, Lcom/zte/heartyservice/net/WifiDataBaseAdapter;->insertData(Ljava/lang/String;II)J

    goto :goto_1
.end method

.method private switchAppInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;)V
    .locals 4
    .parameter "ap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 373
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 374
    .local v0, app_uid:I
    const/4 v1, 0x0

    .line 376
    .local v1, reject:Z
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPermissonType()I

    move-result v2

    if-nez v2, :cond_1

    .line 378
    invoke-virtual {p1, v3}, Lcom/zte/heartyservice/net/AppUsageItem;->setPermissonType(I)V

    .line 379
    const/4 v1, 0x1

    .line 385
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/zte/heartyservice/net/NetManagermentUtils;->setAppIpRule(IZ)V

    .line 386
    return-void

    .line 380
    :cond_1
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPermissonType()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 382
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/zte/heartyservice/net/AppUsageItem;->setPermissonType(I)V

    .line 383
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchAppInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;Z)V
    .locals 7
    .parameter "ap"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x0

    .line 336
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 337
    .local v3, app_uid:I
    const/4 v4, 0x0

    .line 338
    .local v4, reject:Z
    if-nez p2, :cond_0

    .line 339
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/heartyservice/net/AppUsageItem;->setPermissonType(I)V

    .line 340
    const/4 v4, 0x1

    .line 346
    :goto_0
    new-instance v0, Lcom/zte/heartyservice/net/AppListAdapter$SetIpRuleTask;

    iget-object v2, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/net/AppListAdapter$SetIpRuleTask;-><init>(Lcom/zte/heartyservice/net/AppListAdapter;Landroid/content/Context;IZLcom/zte/heartyservice/net/AppListAdapter$1;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/AppListAdapter$SetIpRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 347
    return-void

    .line 342
    :cond_0
    invoke-virtual {p1, v6}, Lcom/zte/heartyservice/net/AppUsageItem;->setPermissonType(I)V

    .line 343
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private switchWifiInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;Z)V
    .locals 7
    .parameter "ap"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 296
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 297
    .local v3, app_uid:I
    const-string v0, "LIXI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v4, 0x0

    .line 299
    .local v4, reject:Z
    if-nez p2, :cond_0

    .line 300
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/zte/heartyservice/net/AppListAdapter;->putWifiCheckedInt(Ljava/lang/String;I)V

    .line 301
    invoke-virtual {p1, v6}, Lcom/zte/heartyservice/net/AppUsageItem;->setWifiPermissonType(I)V

    .line 302
    const/4 v4, 0x1

    .line 309
    :goto_0
    new-instance v0, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;

    iget-object v2, p0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;-><init>(Lcom/zte/heartyservice/net/AppListAdapter;Landroid/content/Context;IZLcom/zte/heartyservice/net/AppListAdapter$1;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/AppListAdapter$SetWifiIpRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 310
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/zte/heartyservice/net/AppListAdapter;->putWifiCheckedInt(Ljava/lang/String;I)V

    .line 305
    invoke-virtual {p1, v5}, Lcom/zte/heartyservice/net/AppUsageItem;->setWifiPermissonType(I)V

    .line 306
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 128
    new-instance v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;-><init>()V

    .line 129
    .local v3, holder:Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030088

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    new-instance v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;

    .end local v3           #holder:Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
    invoke-direct {v3}, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;-><init>()V

    .line 132
    .restart local v3       #holder:Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
    const v11, 0x7f0e0010

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    .line 134
    const v11, 0x7f0e0012

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    .line 136
    const v11, 0x7f0e01be

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    .line 138
    const v11, 0x7f0e01c0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics2:Landroid/widget/TextView;

    .line 140
    const v11, 0x7f0e01c1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 148
    const v11, 0x7f0e01c2

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    iput-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    :goto_0
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    invoke-virtual/range {p0 .. p1}, Lcom/zte/heartyservice/net/AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/net/AppUsageItem;

    .line 167
    .local v1, ap:Lcom/zte/heartyservice/net/AppUsageItem;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getAppinfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/net/AppListAdapter;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getTrafficStats()J

    move-result-wide v6

    .line 207
    .local v6, mTraffics:J
    const-string v11, "TAG"

    const-string v12, " getView =========================="

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v8

    .line 209
    .local v8, netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getAppUidByte()J

    move-result-wide v4

    .line 210
    .local v4, mAppUidTraffics:J
    const-wide/16 v11, 0x2800

    cmp-long v11, v6, v11

    if-gez v11, :cond_2

    .line 211
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 212
    .local v9, tp:Landroid/text/TextPaint;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 213
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    const v12, -0x4d4d4e

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    const-string v12, "< 10K"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPermissonType()I

    move-result v11

    if-nez v11, :cond_3

    .line 244
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 252
    :goto_2
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPackageinfo()Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/zte/heartyservice/net/AppListAdapter;->getWifiCheckedInt(Ljava/lang/String;I)I

    move-result v2

    .line 254
    .local v2, enable:I
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 255
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;->setVisibility(I)V

    .line 268
    :goto_3
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 269
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    new-instance v12, Lcom/zte/heartyservice/net/AppListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/zte/heartyservice/net/AppListAdapter$1;-><init>(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;)V

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    new-instance v12, Lcom/zte/heartyservice/net/AppListAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/zte/heartyservice/net/AppListAdapter$2;-><init>(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;)V

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 291
    :cond_0
    return-object p2

    .line 162
    .end local v1           #ap:Lcom/zte/heartyservice/net/AppUsageItem;
    .end local v2           #enable:I
    .end local v4           #mAppUidTraffics:J
    .end local v6           #mTraffics:J
    .end local v8           #netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    .end local v9           #tp:Landroid/text/TextPaint;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #holder:Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
    check-cast v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;

    .restart local v3       #holder:Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 220
    .restart local v1       #ap:Lcom/zte/heartyservice/net/AppUsageItem;
    .restart local v4       #mAppUidTraffics:J
    .restart local v6       #mTraffics:J
    .restart local v8       #netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    :cond_2
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 221
    .restart local v9       #tp:Landroid/text/TextPaint;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 222
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    const/high16 v12, -0x100

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v8, v6, v7, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020013

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics2:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    .line 232
    .local v10, tp2:Landroid/text/TextPaint;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 233
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics2:Landroid/widget/TextView;

    const/high16 v12, -0x100

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics2:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v8, v4, v5, v12}, Lcom/zte/heartyservice/net/NetTrafficUtils;->convertBytes(JI)D

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->app_traffics2:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/net/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02001d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 245
    .end local v10           #tp2:Landroid/text/TextPaint;
    :cond_3
    invoke-virtual {v1}, Lcom/zte/heartyservice/net/AppUsageItem;->getPermissonType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 246
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_2

    .line 248
    :cond_4
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setVisibility(I)V

    goto/16 :goto_2

    .line 257
    .restart local v2       #enable:I
    :cond_5
    const/4 v11, 0x1

    if-ne v2, v11, :cond_6

    .line 258
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;->setChecked(Z)V

    goto/16 :goto_3

    .line 259
    :cond_6
    if-nez v2, :cond_7

    .line 260
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;->setChecked(Z)V

    goto/16 :goto_3

    .line 262
    :cond_7
    iget-object v11, v3, Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;->wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method public resetData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/net/AppUsageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/net/AppUsageItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/net/AppListAdapter;->list:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/AppListAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
