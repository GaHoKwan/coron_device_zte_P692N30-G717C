.class public Lcom/zte/heartyservice/privacy/AppLockWatchDog;
.super Ljava/lang/Object;
.source "AppLockWatchDog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private isPause:Z

.field private mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

.field private mAppLockStrategyUtils:Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;

.field private wait:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    .line 22
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAppLockStrategyUtils:Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->wait:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPause:Z

    .line 27
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->am:Landroid/app/ActivityManager;

    .line 28
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAppLockSettingsAdapter()Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    .line 29
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;-><init>(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAppLockStrategyUtils:Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;

    .line 31
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;-><init>(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)V

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog$1;->start()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->wait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->am:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAppLockStrategyUtils:Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;

    return-object v0
.end method

.method private checkCallerIsValidate()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "android.permission.ZTE_HEARTYSERVICE_MANAGEMENT"

    const-string v2, "AppLockService"

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public addLockedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->checkCallerIsValidate()V

    .line 80
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->addLockedPackage(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public addT(Ljava/lang/String;JJJ)V
    .locals 8
    .parameter "n"
    .parameter "t_add"
    .parameter "t1_add"
    .parameter "t2_add"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->checkCallerIsValidate()V

    .line 99
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->addT(Ljava/lang/String;JJJ)V

    .line 100
    return-void
.end method

.method public clearAllLockedPackages()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->checkCallerIsValidate()V

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->clearAllLockedPackages()V

    .line 91
    return-void
.end method

.method public getAllLockedPackages()Ljava/util/List;
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
    .line 94
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->getAllLockedPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getT(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "n"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->checkCallerIsValidate()V

    .line 104
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->getT(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public pauseWatch()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPause:Z

    .line 123
    return-void
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->checkCallerIsValidate()V

    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->removeLockedPackage(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public resumeWatch()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPause:Z

    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
