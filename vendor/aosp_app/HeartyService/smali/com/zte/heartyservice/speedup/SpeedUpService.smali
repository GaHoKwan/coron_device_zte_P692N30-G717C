.class public Lcom/zte/heartyservice/speedup/SpeedUpService;
.super Landroid/app/Service;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;,
        Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    }
.end annotation


# static fields
.field public static final APPFILEINFODBNAME:Ljava/lang/String; = "app_file_info.db"

.field private static final REMOVE_PROTECT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpeedUpService"

.field private static mAppCacheInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mAutoRunAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mAvailableMem:J

.field private static mBackgroundAutoRunAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemoveProtection:Z

.field private static mRunningProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private context:Landroid/content/Context;

.field private mBinder:Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

.field private mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

.field private mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

.field private mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

.field private mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

.field private mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

.field private mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

.field private mHandler:Landroid/os/Handler;

.field private mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

.field private mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

.field private mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

.field private mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

.field private mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

.field private mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

.field private mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

.field private mProtectTime:I

.field private mStatfs:Landroid/os/StatFs;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private unCheckedPkgSet:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRunningProcessList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAutoRunAppInfoList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAppCacheInfoList:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAppFileInfoList:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRemoveProtection:Z

    .line 122
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAvailableMem:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 76
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;

    .line 78
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;

    .line 80
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    .line 82
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    .line 84
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    .line 86
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    .line 88
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    .line 90
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    .line 92
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    .line 96
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    .line 99
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    .line 101
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    .line 103
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    .line 105
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    .line 107
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    .line 109
    iput-object v1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    .line 125
    const v0, 0xea60

    iput v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mProtectTime:I

    .line 127
    new-instance v0, Lcom/zte/heartyservice/speedup/SpeedUpService$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/SpeedUpService$1;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->unCheckedPkgSet:Ljava/util/HashSet;

    .line 145
    new-instance v0, Lcom/zte/heartyservice/speedup/SpeedUpService$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/speedup/SpeedUpService$2;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mBinder:Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;

    .line 1992
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 2136
    const-string v0, "SpeedUpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------ "

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

    .line 2137
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListSysGarbageTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listSysGarbageTask;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppDataTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppDataTask;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/zte/heartyservice/speedup/SpeedUpService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->unCheckedPkgSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    return-object p1
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppFileInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppFileInfoByPackageNameTask;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listBackgroundAutoRunAppTask;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableBackgroundAutoRunAppTask;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableBackgroundAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableBackgroundAutoRunAppTask;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRunningProcessList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3102(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mRunningProcessList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/zte/heartyservice/speedup/SpeedUpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500()J
    .locals 2

    .prologue
    .line 66
    sget-wide v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAvailableMem:J

    return-wide v0
.end method

.method static synthetic access$3502(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-wide p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAvailableMem:J

    return-wide p0
.end method

.method static synthetic access$3600()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAutoRunAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3602(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAutoRunAppInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3700()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    return-object p1
.end method

.method static synthetic access$4500()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAppCacheInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4502(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAppCacheInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4600()Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAppFileInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4602(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mAppFileInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/zte/heartyservice/speedup/SpeedUpService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->getTopApp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/zte/heartyservice/speedup/SpeedUpService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mProtectTime:I

    return v0
.end method

.method static synthetic access$5600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    return-object p1
.end method

.method private getTopApp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2143
    iget-object v3, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2144
    .local v2, runningTasksInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2145
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2146
    .local v1, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2147
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2149
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 141
    const-string v0, "service on bind"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mBinder:Lcom/zte/heartyservice/speedup/ISpeedUpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 2079
    const-string v0, "service create"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    .line 2080
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2081
    iput-object p0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->context:Landroid/content/Context;

    .line 2082
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->activityManager:Landroid/app/ActivityManager;

    .line 2083
    invoke-virtual {p0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->packageManager:Landroid/content/pm/PackageManager;

    .line 2084
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addRef()V

    .line 2085
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2096
    const-string v0, "service on destroy"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    .line 2097
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListRunningProcessTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listRunningProcessTask;->cancel(Z)Z

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    if-eqz v0, :cond_1

    .line 2101
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAutoRunAppTask;->cancel(Z)Z

    .line 2103
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    if-eqz v0, :cond_2

    .line 2104
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppCacheTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppCacheTask;->cancel(Z)Z

    .line 2106
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    if-eqz v0, :cond_3

    .line 2107
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mCloseProcessInListTask:Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$closeProcessInListTask;->cancel(Z)Z

    .line 2109
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    if-eqz v0, :cond_4

    .line 2110
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mDisableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$disableAutoRunAppTask;->cancel(Z)Z

    .line 2112
    :cond_4
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    if-eqz v0, :cond_5

    .line 2113
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mEnableAutoRunAppTask:Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$enableAutoRunAppTask;->cancel(Z)Z

    .line 2115
    :cond_5
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    if-eqz v0, :cond_6

    .line 2116
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mClearAppCacheInfoTask:Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$clearAppCacheInfoByPackageNameTask;->cancel(Z)Z

    .line 2119
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->releaseRef()V

    .line 2120
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2121
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 2131
    const-string v0, "service on rebind"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    .line 2132
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 2133
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service start id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    .line 2090
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 2091
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService;->mStatfs:Landroid/os/StatFs;

    .line 2092
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 2125
    const-string v0, "service on unbind"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/speedup/SpeedUpService;->Log(Ljava/lang/String;)V

    .line 2126
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
