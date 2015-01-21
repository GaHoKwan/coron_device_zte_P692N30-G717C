.class public Lcom/zte/heartyservice/power/ClearBackGroundProcess;
.super Ljava/lang/Object;
.source "ClearBackGroundProcess.java"


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private AppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ThirdAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/app/ActivityManager;

.field private maxTaskNum:I

.field private pm:Landroid/content/pm/PackageManager;

.field private runningAppProcessInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private runningTaskInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "ClearBackGroundProcess"

    sput-object v0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x3c

    iput v0, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->maxTaskNum:I

    .line 23
    iput-object v1, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->AppInfoList:Ljava/util/List;

    .line 24
    iput-object v1, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->ThirdAppInfoList:Ljava/util/List;

    .line 36
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->am:Landroid/app/ActivityManager;

    .line 37
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->initData(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private getInstalledApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->pm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #installedAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :cond_0
    return-object v0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    sget-object v0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    const-string v1, "InitData Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->pm:Landroid/content/pm/PackageManager;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->ThirdAppInfoList:Ljava/util/List;

    .line 94
    invoke-direct {p0}, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->getInstalledApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->AppInfoList:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->LoadThirdAppNameList()V

    .line 101
    return-void
.end method


# virtual methods
.method public IsAppRunning(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->am:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    .line 128
    iget-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 129
    .local v1, runningListSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    const-string v3, "Is App Running return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x1

    .line 135
    :goto_1
    return v2

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public LoadThirdAppNameList()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->AppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 115
    iget-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->AppInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 116
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->ThirdAppInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    return-void
.end method

.method public clearProcess()I
    .locals 8

    .prologue
    .line 43
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->am:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    .line 44
    sget-object v5, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before clear runningProcess:Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 52
    .local v1, BeforeClear:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->ThirdAppInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 53
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->ThirdAppInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 57
    .local v2, appPackageName:Ljava/lang/String;
    const-string v5, "com.zte.tpowermanager"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_1
    sget-object v5, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->IsAppRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    sget-object v5, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kill packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->am:Landroid/app/ActivityManager;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v2           #appPackageName:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->am:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    .line 75
    sget-object v5, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after clear runningProcess:Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Lcom/zte/heartyservice/power/ClearBackGroundProcess;->runningAppProcessInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 77
    .local v0, AfterClear:I
    sub-int v4, v1, v0

    .line 80
    .local v4, killedNum:I
    return v4
.end method
