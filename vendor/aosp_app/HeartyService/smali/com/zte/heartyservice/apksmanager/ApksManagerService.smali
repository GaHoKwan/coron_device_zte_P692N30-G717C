.class public Lcom/zte/heartyservice/apksmanager/ApksManagerService;
.super Landroid/app/Service;
.source "ApksManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;,
        Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    }
.end annotation


# static fields
.field private static final FILTER_PACKAGE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ApksManagerService"


# instance fields
.field private mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

.field private mBinder:Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/IApksManagerCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

.field private mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

.field private mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

.field private mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

.field private mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

.field private mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

.field private mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

.field private mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 735
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.appwoo.txtw.activity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.zte.backup.mmi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->FILTER_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 49
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;

    .line 51
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 52
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    .line 53
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    .line 54
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    .line 57
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    .line 58
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    .line 59
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    .line 78
    new-instance v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$1;-><init>(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBinder:Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;

    .line 1147
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 1388
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApksManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mClearDefaultSettingTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$clearDefaultSettingTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBackupApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$backupApksTask;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->FILTER_PACKAGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mUninstallAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$uninstallAppTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/apksmanager/ApksManagerService;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/apksmanager/ApksManagerService;Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;)Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mBinder:Lcom/zte/heartyservice/apksmanager/IApksManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 1332
    const-string v0, "service create"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V

    .line 1333
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1334
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->packageManager:Landroid/content/pm/PackageManager;

    .line 1335
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1345
    const-string v0, "service on destroy"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V

    .line 1346
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1347
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;->cancel(Z)Z

    .line 1349
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListSDCardApksTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listSDCardApksTask;

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;->cancel(Z)Z

    .line 1353
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListUninstallableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listUninstallableAppTask;

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    if-eqz v0, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;->cancel(Z)Z

    .line 1357
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListDefaultSettingAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listDefaultSettingAppTask;

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    if-eqz v0, :cond_3

    .line 1360
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;->cancel(Z)Z

    .line 1361
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mListMoveableAppTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$listMoveableAppTask;

    .line 1364
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    if-eqz v0, :cond_4

    .line 1365
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;->cancel(Z)Z

    .line 1366
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoSDTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoSDTask;

    .line 1369
    :cond_4
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    if-eqz v0, :cond_5

    .line 1370
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;->cancel(Z)Z

    .line 1371
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->mMoveApptoInternalTask:Lcom/zte/heartyservice/apksmanager/ApksManagerService$moveApptoInternalTask;

    .line 1373
    :cond_5
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1383
    const-string v0, "service on rebind"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V

    .line 1384
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 1385
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service start id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V

    .line 1340
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 1341
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 1377
    const-string v0, "service on unbind"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/ApksManagerService;->Log(Ljava/lang/String;)V

    .line 1378
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
