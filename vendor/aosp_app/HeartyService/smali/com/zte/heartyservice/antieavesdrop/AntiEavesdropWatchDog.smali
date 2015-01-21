.class public Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;
.super Ljava/lang/Object;
.source "AntiEavesdropWatchDog.java"


# static fields
.field private static final SAFE_PACKAGE:[Ljava/lang/String;


# instance fields
.field public am:Landroid/app/ActivityManager;

.field private isPause:Z

.field private mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

.field private mAntiEavesdropStrategyUtils:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;

.field public pm:Landroid/content/pm/PackageManager;

.field private wait:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.UCMobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.autonavi.minimap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.BaiduMap"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.baidu.searchbox_tianyi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.tencent.WBlog"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tencent.mtt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.zte.browser"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->SAFE_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    .line 27
    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAntiEavesdropStrategyUtils:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->wait:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z

    .line 45
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->am:Landroid/app/ActivityManager;

    .line 46
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->pm:Landroid/content/pm/PackageManager;

    .line 48
    new-instance v0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;-><init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    .line 49
    new-instance v0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;-><init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAntiEavesdropStrategyUtils:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;

    .line 51
    new-instance v0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;-><init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)V

    invoke-virtual {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->start()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAntiEavesdropStrategyUtils:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;

    return-object v0
.end method

.method private checkCallerIsValidate()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "android.permission.ZTE_HEARTYSERVICE_MANAGEMENT"

    const-string v2, "AntiEavesdropService"

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public AddUncertainEavesdropPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkCallerIsValidate()V

    .line 144
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->AddUncertainEavesdropPackage(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public checkAndUpdatePackages()V
    .locals 11

    .prologue
    .line 96
    iget-object v9, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->pm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x1000

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 97
    .local v5, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 98
    .local v4, info:Landroid/content/pm/PackageInfo;
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.zte.heartyservice"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/zte/heartyservice/common/contant/HeartyServiceIntent;->BUILT_IN_PACKAGE:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->SAFE_PACKAGE:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 103
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 122
    .local v8, permissions:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, hasPermissionRecordAudio:Z
    if-eqz v8, :cond_1

    array-length v9, v8

    if-lez v9, :cond_1

    .line 124
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v7, v0, v3

    .line 125
    .local v7, permission:Ljava/lang/String;
    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 126
    const/4 v1, 0x1

    .line 131
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #permission:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_0

    .line 132
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->AddUncertainEavesdropPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #permission:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 136
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #hasPermissionRecordAudio:Z
    .end local v3           #i$:I
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #len$:I
    .end local v7           #permission:Ljava/lang/String;
    .end local v8           #permissions:[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getRunningUncertainEavesdropAppsOrderByProbability()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkCallerIsValidate()V

    .line 149
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->getRunningUncertainEavesdropAppsOrderByProbability()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public pauseWatch()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z

    .line 93
    return-void
.end method

.method public recordCheckedUncertainEavesdropApp(Ljava/lang/String;)V
    .locals 3
    .parameter "uncertainEavesdropApp"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkCallerIsValidate()V

    .line 154
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->recordCheckedUncertainEavesdropApp(Ljava/lang/String;)V

    .line 155
    const-string v0, "record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordCheckedUncertainEavesdropApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public recordEavesdropApp(Ljava/lang/String;)V
    .locals 3
    .parameter "eavesdropApp"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkCallerIsValidate()V

    .line 160
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->recordEavesdropApp(Ljava/lang/String;)V

    .line 161
    const-string v0, "record"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordEavesdropApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public recordSafeApps(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkCallerIsValidate()V

    .line 166
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAdapter:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;->recordSafeApps(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method public resumeWatch()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
