.class public Lcom/mediatek/mtklogger/taglog/TagLogManager;
.super Ljava/lang/Object;
.source "TagLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;,
        Lcom/mediatek/mtklogger/taglog/TagLogManager$TagLogThread;,
        Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    }
.end annotation


# static fields
.field private static final COMPRESS_SPEED:D = 0.5

.field private static final DIALOG_ALL_LOGTOOL_STOPED:I = 0x12e

.field private static final DIALOG_INPUT:I = 0x12d

.field private static final DIALOG_LACK_OF_SDSPACE:I = 0x12f

.field private static final DIALOG_START_PROGRESS:I = 0x132

.field private static final DIALOG_ZIP_LOG_FAIL:I = 0x131

.field private static final EVENT_CHECK_INPUTDIALOG_TIMEOUT:I = 0xd1

.field private static final EVENT_TRIGGER_TAG:I = 0xcb

.field private static final EVENT_ZIP_LOG_FAIL:I = 0xcf

.field private static final EVENT_ZIP_LOG_SUCCESS:I = 0xce

.field private static final INPUT_TIMEOUT:I = 0x1d4c0

.field private static final LOGPATHKEY:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MONITOR_TIMER:I = 0xc8

.field private static final STOPPED_TIMEOUT:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "MTKLogger/TagLogManager"

.field private static final WAIT_MODEM_INTENT:I = 0x3e8

.field private static instance:Lcom/mediatek/mtklogger/taglog/TagLogManager;

.field private static isTagingLog:Z


# instance fields
.field private mBootTimeString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLogFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mtklogger/taglog/LogInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mDataFromExtras:Landroid/os/Bundle;

.field private mDbPathFromAee:Ljava/lang/String;

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIgnoreMdLog:Z

.field private mIsAndroidReboot:Z

.field private mIsFromMainActivity:Z

.field private mIsFromReboot:Z

.field private mIsInputDialogClicked:Z

.field private mIsModemExp:Z

.field private mIsTagInputNull:Z

.field private mIsTaglogClicked:Z

.field private mIsTimeoutEE:Z

.field private mIsWaitingLogStateChange:Z

.field private mLogPathInTagLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

.field private mLogStateReceiver:Landroid/content/BroadcastReceiver;

.field private mLogToolStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mManualSaveLog:Z

.field private mMonitorTimer:Ljava/util/Timer;

.field mNeedMoreSpace:J

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTag:Ljava/lang/String;

.field private mTagLogResult:Ljava/lang/String;

.field private mTotalFilesCount:I

.field private mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->instance:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->LOGPATHKEY:Landroid/util/SparseArray;

    .line 132
    sget-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->LOGPATHKEY:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "ModemLogPath"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->LOGPATHKEY:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "MobileLogPath"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->LOGPATHKEY:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "NetLogPath"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    .line 87
    iput-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mNeedMoreSpace:J

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;

    .line 105
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromMainActivity:Z

    .line 106
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    .line 107
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTagInputNull:Z

    .line 108
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z

    .line 110
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromReboot:Z

    .line 111
    iput-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mBootTimeString:Ljava/lang/String;

    .line 115
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsAndroidReboot:Z

    .line 119
    iput v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    .line 138
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z

    .line 143
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z

    .line 158
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsWaitingLogStateChange:Z

    .line 159
    new-instance v0, Lcom/mediatek/mtklogger/taglog/TagLogManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$1;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogStateReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "<init>"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->init()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsWaitingLogStateChange:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsWaitingLogStateChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->initToolStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->createProgressDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->getLogPath()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/framework/MTKLoggerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsAndroidReboot:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mBootTimeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    return p1
.end method

.method static synthetic access$2212(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iget v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromReboot:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->startOrStopAllLogTool(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->rememberCurrentTaggingLogFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->tagSelectedLogFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/taglog/TagLogManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->createDialog(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTagInputNull:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTagInputNull:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/mtklogger/taglog/TagLogManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsInputDialogClicked:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsInputDialogClicked:Z

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/mtklogger/taglog/TagLogManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V

    return-void
.end method

.method private createDialog(I)V
    .locals 12
    .parameter "id"

    .prologue
    .line 952
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 953
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sparse-switch p1, :sswitch_data_0

    .line 1131
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    .line 1132
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1133
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1134
    .local v3, win:Landroid/view/Window;
    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1135
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1136
    return-void

    .line 955
    .end local v3           #win:Landroid/view/Window;
    :sswitch_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsInputDialogClicked:Z

    .line 956
    new-instance v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 957
    .local v2, inputText:Landroid/widget/EditText;
    new-instance v4, Lcom/mediatek/mtklogger/taglog/TagLogManager$4;

    invoke-direct {v4, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$4;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 974
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 975
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 977
    new-instance v4, Lcom/mediatek/mtklogger/taglog/TagLogManager$5;

    invoke-direct {v4, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$5;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 993
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    const-string v5, "taglogInputName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, fromPreInputName:Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1           #fromPreInputName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 995
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTaglogClicked:Z

    .line 996
    const v4, 0x7f070071

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070075

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/mtklogger/taglog/TagLogManager$7;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$6;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1044
    .end local v2           #inputText:Landroid/widget/EditText;
    :sswitch_1
    const v4, 0x7f070071

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070076

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$9;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$8;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$8;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1065
    :sswitch_2
    const v4, 0x7f070073

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    const v6, 0x7f070074

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, ".00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mNeedMoreSpace:J

    long-to-float v10, v10

    const/high16 v11, 0x4480

    div-float/2addr v10, v11

    const/high16 v11, 0x4480

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$11;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$10;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$10;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1100
    :sswitch_3
    const v4, 0x7f070072

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070077

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$12;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$12;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1111
    :sswitch_4
    const v4, 0x7f070072

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070078

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$13;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$13;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1120
    :sswitch_5
    const v4, 0x7f070072

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070079

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/mediatek/mtklogger/taglog/TagLogManager$14;

    invoke-direct {v6, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$14;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 953
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x12f -> :sswitch_2
        0x131 -> :sswitch_3
        0x193 -> :sswitch_4
        0x194 -> :sswitch_5
    .end sparse-switch
.end method

.method private createProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 873
    const/4 v0, 0x0

    .line 886
    .local v0, timer:I
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    if-eqz v2, :cond_2

    .line 887
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 888
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_4

    .line 889
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 890
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f070071

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 891
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 893
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 894
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/mediatek/mtklogger/taglog/TagLogManager$2;

    invoke-direct {v5, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$2;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 907
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 908
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 909
    iget-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromMainActivity:Z

    if-eqz v2, :cond_1

    .line 910
    :cond_0
    const-string v2, "MTKLogger/TagLogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mManualSaveLog?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mIsFromMainActivity?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromMainActivity:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 914
    :cond_1
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 915
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/mediatek/mtklogger/taglog/ZipManager;->getZippedFilesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 916
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->monitorProgressDialogBar()V

    .line 921
    .end local v1           #win:Landroid/view/Window;
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromMainActivity:Z

    if-nez v2, :cond_3

    .line 922
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V

    .line 924
    :cond_3
    return-void

    .line 918
    :cond_4
    const-string v2, "MTKLogger/TagLogManager"

    const-string v3, "new mProgressDialog failed"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deInit(Z)V
    .locals 3
    .parameter "needNotifyLog2Server"

    .prologue
    const/4 v2, 0x0

    .line 202
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "-->deInit()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 207
    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDialog:Landroid/app/AlertDialog;

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->dismissProgressDialog()V

    .line 211
    sput-object v2, Lcom/mediatek/mtklogger/taglog/TagLogManager;->instance:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    .line 212
    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    .line 215
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    if-nez v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->notifyToLog2Server()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_1
    const-string v0, "MTKLogger/TagLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<-- Not need to notify Log2Server, mManualSaveLog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 931
    :cond_0
    return-void
.end method

.method private forgetCachedTaggingLogFolder()V
    .locals 5

    .prologue
    .line 861
    const-string v3, "MTKLogger/TagLogManager"

    const-string v4, "-->forgetCachedTaggingLogFolder()"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 863
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 864
    .local v2, logType:I
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 866
    .end local v2           #logType:I
    :cond_0
    const-string v3, "tagging_dest"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tagging_db"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tag_log_compressing"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 870
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/mtklogger/taglog/TagLogManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 152
    sget-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->instance:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->instance:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    .line 155
    :cond_0
    sget-object v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->instance:Lcom/mediatek/mtklogger/taglog/TagLogManager;

    return-object v0
.end method

.method private getLogPath()Landroid/util/SparseArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 780
    .local v2, logToolPath:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mtklog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 781
    .local v4, mtkLogPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 789
    :cond_0
    return-object v2

    .line 784
    :cond_1
    const-string v5, "MTKLogger/TagLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMTKLogPath :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 786
    .local v3, logType:Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 170
    const-string v2, "MTKLogger/TagLogManager"

    const-string v3, "-->init()"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    const v3, 0x103006e

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 172
    sput-boolean v4, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    .line 173
    new-instance v2, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    .line 174
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    const-string v3, "log_settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 176
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 178
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, modes:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 180
    aget-object v2, v1, v4

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "log_mode"

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    const v6, 0x7f07007f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z

    .line 184
    :cond_0
    const-string v2, "MTKLogger/TagLogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIgnoreMdLog?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, logStateFilter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    iput-object v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v2, "MTKLogger/TagLogManager"

    const-string v3, "Wrong parameter to construct TagLogManager"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTaglog()Z
    .locals 17

    .prologue
    .line 262
    const-string v14, "MTKLogger/TagLogManager"

    const-string v15, "-->initTaglog()"

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    const-string v15, "path"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    .local v6, expPath:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 265
    const-string v14, "MTKLogger/TagLogManager"

    const-string v15, "params are not valid! exp_path is null"

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V

    .line 267
    const/4 v14, 0x0

    .line 338
    :goto_0
    return v14

    .line 270
    :cond_0
    const-string v14, "SaveLogManually"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 271
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    const/16 v15, 0xcb

    invoke-virtual {v14, v15}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 338
    const/4 v14, 0x1

    goto :goto_0

    .line 273
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    const-string v15, "from_reboot"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 274
    .local v9, isFromReboot:Ljava/lang/String;
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isFromReboot ? "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    const-string v15, "db_filename"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, expFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    const-string v15, "zz_filename"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, zzFileName:Ljava/lang/String;
    if-eqz v3, :cond_3

    if-nez v12, :cond_4

    .line 281
    :cond_3
    const-string v14, "MTKLogger/TagLogManager"

    const-string v15, "params are not valid! exp_file name is null"

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V

    .line 283
    const/4 v14, 0x0

    goto :goto_0

    .line 285
    :cond_4
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    .line 286
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, zzFilePath:Ljava/lang/String;
    new-instance v5, Lcom/mediatek/mtklogger/utils/ExceptionInfo;

    invoke-direct {v5}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;-><init>()V

    .line 288
    .local v5, expInfo:Lcom/mediatek/mtklogger/utils/ExceptionInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, expFilePath:Ljava/lang/String;
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exp_path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exp_file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v5, v4}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->setmPath(Ljava/lang/String;)V

    .line 293
    :try_start_0
    invoke-virtual {v5, v13}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->initFieldsFromZZ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    invoke-virtual {v5}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->getmType()Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, expType:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->getmDiscription()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, expDiscription:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mediatek/mtklogger/utils/ExceptionInfo;->getmProcess()Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, expProcess:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 304
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exp_info.getmType(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_5
    if-eqz v2, :cond_6

    .line 307
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exp_info.getmDiscription(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_6
    if-eqz v7, :cond_7

    .line 310
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exp_info.getmProcess(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_7
    if-eqz v8, :cond_8

    const-string v14, "Externel (EE)"

    invoke-virtual {v8, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 314
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "expType == External (EE) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z

    .line 316
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z

    .line 318
    :cond_8
    if-eqz v8, :cond_9

    const-string v14, "Kernel (KE)"

    invoke-virtual {v8, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 319
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "expType == Kernel (KE) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromReboot:Z

    .line 325
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 326
    const-string v14, "MTKLogger/TagLogManager"

    const-string v15, "Encount an exception at boot time, just wait 5s for log ready"

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-wide/16 v10, 0x1388

    .line 328
    .local v10, waitLogDelay:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromReboot:Z

    if-eqz v14, :cond_a

    .line 329
    const-wide/16 v14, 0x1388

    add-long/2addr v10, v14

    .line 331
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    const/16 v15, 0xcb

    invoke-virtual {v14, v15, v10, v11}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "boot_time"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mBootTimeString:Ljava/lang/String;

    .line 333
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsAndroidReboot:Z

    .line 334
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 294
    .end local v2           #expDiscription:Ljava/lang/String;
    .end local v7           #expProcess:Ljava/lang/String;
    .end local v8           #expType:Ljava/lang/String;
    .end local v10           #waitLogDelay:J
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/io/IOException;
    const-string v14, "MTKLogger/TagLogManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail to init exception info:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V

    .line 297
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private initToolStatus()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 768
    sget-object v2, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 769
    .local v1, logType:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_0

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 772
    .end local v1           #logType:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private monitorProgressDialogBar()V
    .locals 6

    .prologue
    .line 934
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 937
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;

    .line 938
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mMonitorTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager$3;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private notifyToLog2Server()V
    .locals 8

    .prologue
    .line 1244
    const-string v4, "MTKLogger/TagLogManager"

    const-string v5, "-->notifyToLog2Server()"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1246
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.syslogger.taglog"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1248
    const-string v4, "TaglogResult"

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    const-string v4, "MTKLogger/TagLogManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TaglogResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTagLogResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :goto_0
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    .line 1257
    sget-object v4, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1258
    .local v3, logType:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1259
    sget-object v4, Lcom/mediatek/mtklogger/taglog/TagLogManager;->LOGPATHKEY:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1260
    const-string v5, "MTKLogger/TagLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mediatek/mtklogger/taglog/TagLogManager;->LOGPATHKEY:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1252
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #logType:Ljava/lang/Integer;
    :cond_0
    const-string v4, "MTKLogger/TagLogManager"

    const-string v5, "mTagLogResult is null!"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1262
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #logType:Ljava/lang/Integer;
    :cond_1
    const-string v4, "MTKLogger/TagLogManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLogPathInTagLog["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= null!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1266
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #logType:Ljava/lang/Integer;
    :cond_2
    const-string v4, "MTKLogger/TagLogManager"

    const-string v5, "mLogPathInTagLog is null"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_3
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 1269
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1285
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1287
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mediatek/mtklogger/exceptionreporter/ExceptionReportManager;->beginException(Landroid/content/Intent;)Z

    .line 1288
    const-string v4, "MTKLogger/TagLogManager"

    const-string v5, "send intent to Log2Server"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void

    .line 1271
    :cond_5
    const-string v4, "MTKLogger/TagLogManager"

    const-string v5, "Data From Aee is null, maybe this is a resume progress"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v4, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1273
    const-string v4, "MTKLogger/TagLogManager"

    const-string v5, "Cached value is not empty, try to restore them"

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v4, "path"

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    .line 1277
    .local v0, dbFolderPath:Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1278
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1280
    :cond_6
    const-string v4, "db_filename"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dbg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string v4, "zz_filename"

    const-string v5, "ZZ_INTERNAL"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private rememberCurrentTaggingLogFolder(Ljava/lang/String;)V
    .locals 6
    .parameter "targetFolderName"

    .prologue
    .line 846
    const-string v3, "MTKLogger/TagLogManager"

    const-string v4, "-->rememberCurrentTaggingLogFolder()"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 848
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 849
    .local v2, info:Lcom/mediatek/mtklogger/taglog/LogInformation;
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 852
    .end local v2           #info:Lcom/mediatek/mtklogger/taglog/LogInformation;
    :cond_0
    const-string v3, "tagging_dest"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tagging_db"

    iget-object v5, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    return-void
.end method

.method private startOrStopAllLogTool(Z)V
    .locals 11
    .parameter "isStart"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 799
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startOrStopAllLogTool() -> isStart?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, allLogType:I
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 802
    .local v3, logType:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    iget-boolean v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z

    if-eqz v6, :cond_0

    :cond_1
    iget-boolean v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIgnoreMdLog:Z

    if-nez v6, :cond_0

    .line 805
    :cond_2
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogToolStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    or-int/2addr v0, v6

    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    .line 807
    .end local v3           #logType:Ljava/lang/Integer;
    :cond_4
    if-nez v0, :cond_5

    .line 838
    :goto_2
    return-void

    .line 811
    :cond_5
    const/4 v4, 0x0

    .line 812
    .local v4, result:Z
    const/4 v5, 0x0

    .line 813
    .local v5, retryNum:I
    :goto_3
    const/16 v6, 0xa

    if-ge v5, v6, :cond_6

    .line 814
    if-eqz p1, :cond_7

    .line 815
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-virtual {v6, v0, v10}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->startRecording(ILjava/lang/String;)Z

    move-result v4

    .line 819
    :goto_4
    if-eqz v4, :cond_8

    .line 820
    const-string v6, "MTKLogger/TagLogManager"

    const-string v7, "Control command executing successfully"

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_6
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startOrStopAllLogTool() -> result?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    if-eqz v4, :cond_9

    .line 834
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsWaitingLogStateChange:Z

    goto :goto_2

    .line 817
    :cond_7
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogService:Lcom/mediatek/mtklogger/framework/MTKLoggerService;

    invoke-virtual {v6, v0, v10}, Lcom/mediatek/mtklogger/framework/MTKLoggerService;->stopRecording(ILjava/lang/String;)Z

    move-result v4

    goto :goto_4

    .line 823
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 824
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Control command executing fail, retry later. retryNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 836
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_9
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->startOrStopAllLogTool(), isStart="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operation fail!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private tagSelectedLogFolder(Ljava/lang/String;)V
    .locals 10
    .parameter "targetFolderName"

    .prologue
    .line 721
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->tagSelectedLogFolder(), targetFolderName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "tag_log_compressing"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 724
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    invoke-direct {p0, v6, p1}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->zipAllLogAndDelete(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    .line 726
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 727
    .local v5, logType:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 728
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLogPathInTagLog["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_0
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLogPathInTagLog["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    .end local v5           #logType:Ljava/lang/Integer;
    :cond_1
    iget-boolean v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    if-nez v6, :cond_2

    .line 735
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->writeFolderToTagFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "checksop.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 739
    .local v0, checkSopFile:Ljava/io/File;
    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 741
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 744
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_1
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->writeCheckSOPToFile(Landroid/content/Context;Ljava/io/File;)Z

    .line 751
    :cond_4
    const/4 v3, 0x1

    .line 752
    .local v3, isZipSuccess:Z
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 753
    .local v4, logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mLogPathInTagLog:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 754
    const-string v6, "MTKLogger/TagLogManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLogPathInTagLog["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const/4 v3, 0x0

    goto :goto_2

    .line 745
    .end local v3           #isZipSuccess:Z
    .end local v4           #logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    :catch_0
    move-exception v1

    .line 746
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 758
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #isZipSuccess:Z
    :cond_6
    if-eqz v3, :cond_7

    .line 759
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    const/16 v7, 0xce

    invoke-virtual {v6, v7}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 763
    :goto_3
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "tag_log_compressing"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->forgetCachedTaggingLogFolder()V

    .line 765
    return-void

    .line 761
    :cond_7
    iget-object v6, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    const/16 v7, 0xcf

    invoke-virtual {v6, v7}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method private zipAllLogAndDelete(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 13
    .parameter
    .parameter "tagLogFolderName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mtklogger/taglog/LogInformation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, currentLogFolderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/mtklogger/taglog/LogInformation;>;"
    const-string v10, "MTKLogger/TagLogManager"

    const-string v11, "-->zipAllLogAndDelete()"

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1149
    .local v3, currentTaglogPaths:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1152
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v8, targetFolder:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1154
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1155
    .local v5, formerZipFiles:[Ljava/io/File;
    if-eqz v5, :cond_4

    array-length v10, v5

    if-lez v10, :cond_4

    .line 1157
    const-string v10, "MTKLogger/TagLogManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Before zip log folder, found some old zip file in target folder, num="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v9, v0, v6

    .line 1159
    .local v9, zipFile:Ljava/io/File;
    if-eqz v9, :cond_0

    .line 1160
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1161
    .local v4, filePath:Ljava/lang/String;
    const-string v10, "MTKLogger/TagLogManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found a old zip file["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] in target folder"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v10, "NTLog_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, ".zip"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1163
    const/4 v10, 0x4

    invoke-virtual {v3, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1158
    .end local v4           #filePath:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1164
    .restart local v4       #filePath:Ljava/lang/String;
    :cond_1
    const-string v10, "APLog_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, ".zip"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1165
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1166
    :cond_2
    const-string v10, "MDLog"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, ".zip"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1167
    const/4 v10, 0x2

    invoke-virtual {v3, v10, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1169
    :cond_3
    const-string v10, "MTKLogger/TagLogManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown zip file["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1174
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #zipFile:Ljava/io/File;
    :cond_4
    const-string v10, "MTKLogger/TagLogManager"

    const-string v11, " Target tag log folder is still empty till now."

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    .end local v5           #formerZipFiles:[Ljava/io/File;
    .end local v8           #targetFolder:Ljava/io/File;
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 1182
    .local v1, currentLogFolder:Lcom/mediatek/mtklogger/taglog/LogInformation;
    invoke-direct {p0, v1, p2}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->zipLogAndDelete(Lcom/mediatek/mtklogger/taglog/LogInformation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1183
    .local v2, currentTaglogPath:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1184
    invoke-virtual {v1}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v10

    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1185
    const-string v10, "MTKLogger/TagLogManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentTaglogPaths["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1177
    .end local v1           #currentLogFolder:Lcom/mediatek/mtklogger/taglog/LogInformation;
    .end local v2           #currentTaglogPath:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v8       #targetFolder:Ljava/io/File;
    :cond_7
    const-string v10, "MTKLogger/TagLogManager"

    const-string v11, " tagLogFolderName still not exist, need to make it later"

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1189
    .end local v8           #targetFolder:Ljava/io/File;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_8
    return-object v3
.end method

.method private zipLogAndDelete(Lcom/mediatek/mtklogger/taglog/LogInformation;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "currentLogFolder"
    .parameter "tagLogFolderName"

    .prologue
    const/4 v8, 0x0

    .line 1198
    invoke-virtual {p1}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogFile()Ljava/io/File;

    move-result-object v1

    .line 1199
    .local v1, neededLogFolder:Ljava/io/File;
    if-nez v1, :cond_0

    .line 1200
    const-string v7, "MTKLogger/TagLogManager"

    const-string v9, "Needed log folder path is null!!"

    invoke-static {v7, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 1240
    :goto_0
    return-object v6

    .line 1203
    :cond_0
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-->zipLog() Folder : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const/4 v6, 0x0

    .line 1206
    .local v6, zipResultPath:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1208
    const-string v7, "dualmdlog"

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1210
    .local v0, isDualModemLog:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v0, :cond_3

    const-string v7, "Dual"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".zip"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, targetLogFileName:Ljava/lang/String;
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetLogFileName :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v4, targetTagFile:Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1216
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "target taglog file ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] already exist, delete it first"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1220
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/mediatek/mtklogger/taglog/ZipManager;->zipFileOrFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1221
    .local v5, zipResult:Z
    if-nez v5, :cond_4

    .line 1222
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to zip log folder: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v2, targetLogFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1225
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    move-object v6, v8

    .line 1227
    goto/16 :goto_0

    .line 1210
    .end local v2           #targetLogFile:Ljava/io/File;
    .end local v3           #targetLogFileName:Ljava/lang/String;
    .end local v4           #targetTagFile:Ljava/io/File;
    .end local v5           #zipResult:Z
    :cond_3
    const-string v7, ""

    goto/16 :goto_1

    .line 1229
    .restart local v3       #targetLogFileName:Ljava/lang/String;
    .restart local v4       #targetTagFile:Ljava/io/File;
    .restart local v5       #zipResult:Z
    :cond_4
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Zip log success, target log file="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    move-object v6, v3

    .line 1232
    iget-boolean v7, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsModemExp:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsTimeoutEE:Z

    if-nez v7, :cond_5

    invoke-virtual {p1}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1233
    const-string v7, "MTKLogger/TagLogManager"

    const-string v8, "It is a ModemExp and not delete primary log folder"

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1236
    :cond_5
    invoke-static {v1}, Lcom/mediatek/mtklogger/utils/Utils;->deleteFolder(Ljava/io/File;)V

    .line 1239
    .end local v0           #isDualModemLog:Z
    .end local v3           #targetLogFileName:Ljava/lang/String;
    .end local v4           #targetTagFile:Ljava/io/File;
    .end local v5           #zipResult:Z
    :cond_6
    const-string v7, "MTKLogger/TagLogManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<--zipLog(), zipResultPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public beginTag(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "-->beginTag()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromMainActivity:Z

    .line 230
    const-string v0, "extra_key_from_main_activity"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    sget-boolean v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "EXTRA_KEY_FROM_MAIN_ACTIVITY"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    if-eqz v0, :cond_0

    .line 234
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mIsFromMainActivity:Z

    .line 235
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mUIHandler:Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/taglog/TagLogManager$UIHandler;->sendEmptyMessage(I)Z

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tag_log_compressing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 243
    :cond_2
    sget-boolean v0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "Try to begin TagLog, but it is already on process, reject new request!"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07007c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 248
    :cond_3
    sput-boolean v3, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    .line 250
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDataFromExtras:Landroid/os/Bundle;

    .line 252
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->initTaglog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "MTKLogger/TagLogManager"

    const-string v1, "Init taglog fail, not tag any more"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeTag()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 346
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tag_log_compressing"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 347
    .local v2, isLastTaggingNotFinished:Z
    const-string v9, "MTKLogger/TagLogManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-->resumeTag(), isLastTaggingNotFinished="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    if-eqz v2, :cond_b

    .line 349
    sget-boolean v9, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    if-eqz v9, :cond_0

    .line 350
    const-string v9, "MTKLogger/TagLogManager"

    const-string v10, "Try to resume TagLog, buy it\'s already on process, reject new request!"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 353
    :cond_0
    sput-boolean v13, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    .line 354
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tagging_dest"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 355
    .local v8, targetFolderName:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "tagging_db"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, dbFolder:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 357
    const-string v9, "MTKLogger/TagLogManager"

    const-string v10, "Last tagging flag is not null, but can not find target folder, ignore"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "tag_log_compressing"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    sput-boolean v12, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    goto :goto_0

    .line 362
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v7, targetFolder:Ljava/io/File;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 364
    :cond_2
    const-string v9, "MTKLogger/TagLogManager"

    const-string v10, "Last tagging target folder does not exist, ignore"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "tag_log_compressing"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 368
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 369
    const-string v9, "MTKLogger/TagLogManager"

    const-string v10, "At resume time, find no db file, treat this as user trigger event"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput-boolean v13, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    .line 375
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    .line 376
    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 377
    .local v6, logType:I
    iget-object v10, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v9, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, ""

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, logFolderStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 379
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v3, logFolder:Ljava/io/File;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 381
    const-string v9, "MTKLogger/TagLogManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add not finished log folder: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    new-instance v10, Lcom/mediatek/mtklogger/taglog/LogInformation;

    invoke-direct {v10, v6, v3}, Lcom/mediatek/mtklogger/taglog/LogInformation;-><init>(ILjava/io/File;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 372
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #logFolder:Ljava/io/File;
    .end local v4           #logFolderStr:Ljava/lang/String;
    .end local v6           #logType:I
    :cond_4
    iput-boolean v12, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mManualSaveLog:Z

    .line 373
    iput-object v0, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mDbPathFromAee:Ljava/lang/String;

    goto :goto_1

    .line 384
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #logFolder:Ljava/io/File;
    .restart local v4       #logFolderStr:Ljava/lang/String;
    .restart local v6       #logType:I
    :cond_5
    const-string v9, "MTKLogger/TagLogManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Log folder ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] not exist, maybe already tag finish."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 387
    .end local v3           #logFolder:Ljava/io/File;
    :cond_6
    const-string v9, "MTKLogger/TagLogManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Log folder for type ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] is empty or null."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 391
    .end local v4           #logFolderStr:Ljava/lang/String;
    .end local v6           #logType:I
    :cond_7
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 392
    iput v12, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    .line 393
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mCurrentLogFolderList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .line 394
    .local v5, logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    iget v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    invoke-virtual {v5}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getLogFilesCount()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    goto :goto_3

    .line 396
    .end local v5           #logInformation:Lcom/mediatek/mtklogger/taglog/LogInformation;
    :cond_8
    const-string v9, "MTKLogger/TagLogManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total taglog files count after resumeTag is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v9, :cond_9

    .line 398
    iget-object v9, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v10, p0, Lcom/mediatek/mtklogger/taglog/TagLogManager;->mTotalFilesCount:I

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 400
    :cond_9
    new-instance v9, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;

    invoke-direct {v9, p0, v8}, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;-><init>(Lcom/mediatek/mtklogger/taglog/TagLogManager;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/mediatek/mtklogger/taglog/TagLogManager$ResumeTagThread;->start()V

    goto/16 :goto_0

    .line 402
    :cond_a
    const-string v9, "MTKLogger/TagLogManager"

    const-string v10, "From taglog flag, need to resume tagging, but find no log folder that need tag, ignore"

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->forgetCachedTaggingLogFolder()V

    goto/16 :goto_0

    .line 408
    .end local v0           #dbFolder:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #targetFolder:Ljava/io/File;
    .end local v8           #targetFolderName:Ljava/lang/String;
    :cond_b
    sget-boolean v9, Lcom/mediatek/mtklogger/taglog/TagLogManager;->isTagingLog:Z

    if-nez v9, :cond_c

    .line 409
    invoke-direct {p0, v12}, Lcom/mediatek/mtklogger/taglog/TagLogManager;->deInit(Z)V

    goto/16 :goto_0

    .line 411
    :cond_c
    const-string v9, "MTKLogger/TagLogManager"

    const-string v10, "Not need to resume Taglog, but Taglog was already running."

    invoke-static {v9, v10}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
