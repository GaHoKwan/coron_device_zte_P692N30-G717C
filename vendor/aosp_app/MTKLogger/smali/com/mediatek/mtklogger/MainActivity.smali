.class public Lcom/mediatek/mtklogger/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;
    }
.end annotation


# static fields
.field private static final ALPHA_FULL:I = 0xff

.field private static final ALPHA_GRAY:I = 0x4b

.field private static final DLG_WAITING_SERVICE:I = 0xa

.field private static final IS_LOG_START:I = 0x1

.field private static final IS_LOG_STOP:I = 0x0

.field private static final MESSAGE_DELAY_TIME:I = 0x190

.field private static final MESSAGE_DELAY_WAITING_SERVICE:I = 0x1f4

.field private static final MSG_MONITOR_SDCARD_BAR:I = 0x3

.field private static final MSG_TIMER:I = 0x1

.field private static final MSG_WAITING_DIALOG_TIMER:I = 0x2

.field private static final MSG_WAITING_SERVICE_READY:I = 0x5

.field private static final SDCARD_RATIO_BAR_TIMER:I = 0x7530

.field private static final START_STOP_TIMER:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "MTKLogger/MainActivity"

.field private static final TIMER_PERIOD:I = 0x3e8

.field private static final WAITING_SERVICE_MAX_NUMBER:I = 0x14

.field private static WAITING_SERVICE_PAST_TIME:I


# instance fields
.field private iAlreadyNotifyUserSDNotReady:Z

.field private iWaitingRefreshStatusBar:Z

.field private mClearLogImageButton:Landroid/widget/ImageButton;

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mFreeStorageText:Landroid/widget/TextView;

.field private mLogImageViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLogTextViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

.field private mMessageHandler:Landroid/os/Handler;

.field private mMobileLogImage:Landroid/widget/ImageView;

.field private mMobileLogText:Landroid/widget/TextView;

.field private mModemLogImage:Landroid/widget/ImageView;

.field private mModemLogText:Landroid/widget/TextView;

.field private mMonitorTimer:Ljava/util/Timer;

.field private mNetworkLogImage:Landroid/widget/ImageView;

.field private mNetworkLogText:Landroid/widget/TextView;

.field mRefreshStorageTask:Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

.field private mSDCardPathStr:Ljava/lang/String;

.field private mSavePathStr:Ljava/lang/String;

.field private mSavePathText:Landroid/widget/TextView;

.field private mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;

.field private mServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsImageButton:Landroid/widget/ImageButton;

.field private mSettingsMenuItem:Landroid/view/MenuItem;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStartStopToggleButton:Landroid/widget/ToggleButton;

.field private mStorageChartLabelText:Landroid/widget/TextView;

.field private mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mTagImageButton:Landroid/widget/ImageButton;

.field private mTimeMillisecond:J

.field private mTimeText:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mUsedStorageText:Landroid/widget/TextView;

.field private mWaitingDialog:Landroid/app/ProgressDialog;

.field private mWaitingDialogTimer:Ljava/util/Timer;

.field private mWaitingServiceDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/mtklogger/MainActivity;->WAITING_SERVICE_PAST_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v2, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    .line 112
    iput-object v2, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingServiceDialog:Landroid/app/ProgressDialog;

    .line 113
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/MainActivity;->iAlreadyNotifyUserSDNotReady:Z

    .line 114
    iput-object v2, p0, Lcom/mediatek/mtklogger/MainActivity;->mRefreshStorageTask:Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

    .line 120
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/MainActivity;->iWaitingRefreshStatusBar:Z

    .line 122
    new-instance v0, Lcom/mediatek/mtklogger/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/MainActivity$1;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/mediatek/mtklogger/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/MainActivity$2;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Lcom/mediatek/mtklogger/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/MainActivity$4;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;

    .line 823
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->stopWaitingDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/MainActivity;->analyzeReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/mtklogger/MainActivity;Lcom/mediatek/mtklogger/framework/MTKLoggerManager;)Lcom/mediatek/mtklogger/framework/MTKLoggerManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->hideWaitingServiceDialog()V

    return-void
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/mediatek/mtklogger/MainActivity;->WAITING_SERVICE_PAST_TIME:I

    return v0
.end method

.method static synthetic access$1208()I
    .locals 2

    .prologue
    .line 47
    sget v0, Lcom/mediatek/mtklogger/MainActivity;->WAITING_SERVICE_PAST_TIME:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/mtklogger/MainActivity;->WAITING_SERVICE_PAST_TIME:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->clearLogs()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->tagLogs()V

    return-void
.end method

.method static synthetic access$1602(Lcom/mediatek/mtklogger/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/MainActivity;->iWaitingRefreshStatusBar:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/LinearColorBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/mtklogger/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mUsedStorageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/mtklogger/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mFreeStorageText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->changeWaitingDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/mtklogger/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$614(Lcom/mediatek/mtklogger/MainActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->calculateTimer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/mtklogger/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->refreshSdcardBar()V

    return-void
.end method

.method private alertLowStorageDialog()V
    .locals 5

    .prologue
    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070020

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/mtklogger/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/mtklogger/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/mediatek/mtklogger/MainActivity$5;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 475
    return-void
.end method

.method private analyzeReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "reason"

    .prologue
    const/4 v9, -0x1

    .line 172
    const-string v6, ""

    .line 173
    .local v6, rsReason:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 174
    const-string v7, ":"

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 175
    .local v2, index:I
    if-ne v2, v9, :cond_1

    .line 210
    .end local v2           #index:I
    :cond_0
    :goto_1
    return-object v6

    .line 178
    .restart local v2       #index:I
    :cond_1
    const/4 v3, -0x1

    .line 180
    .local v3, logType:I
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 184
    :goto_2
    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 187
    add-int/lit8 v1, v2, 0x1

    .line 188
    const-string v7, ";"

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 189
    if-eq v2, v9, :cond_0

    .line 192
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, reasonType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 197
    .local v4, reasonKey:I
    :try_start_1
    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 201
    :goto_3
    if-ne v4, v9, :cond_2

    .line 202
    add-int/lit8 v1, v2, 0x1

    .line 203
    goto :goto_1

    .line 181
    .end local v4           #reasonKey:I
    .end local v5           #reasonType:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_2

    .line 198
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #reasonKey:I
    .restart local v5       #reasonType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_3

    .line 206
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v7, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    add-int/lit8 v1, v2, 0x1

    .line 209
    goto/16 :goto_0
.end method

.method private calculateTimer()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    .line 741
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "system_time_reset"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 743
    .local v6, timeResetFlag:I
    if-eqz v6, :cond_0

    .line 744
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "system_time_reset"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 746
    const v8, 0x7f070098

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 749
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v9, "begin_recording_time"

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 751
    .local v4, startTime:J
    cmp-long v8, v4, v12

    if-nez v8, :cond_3

    .line 752
    iput-wide v12, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    .line 757
    .end local v4           #startTime:J
    :cond_0
    :goto_0
    iget-wide v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    cmp-long v8, v8, v12

    if-gez v8, :cond_1

    .line 758
    const-string v8, "MTKLogger/MainActivity"

    const-string v9, "System time adjust to past, just reset log time to 0, to avoid UI show incorrect"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iput-wide v12, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    .line 762
    :cond_1
    iget-wide v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    long-to-int v8, v8

    div-int/lit16 v0, v8, 0xe10

    .line 763
    .local v0, hour:I
    const/16 v8, 0x270f

    if-le v0, v8, :cond_2

    .line 764
    const-string v8, "MTKLogger/MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There is something wrong with time record! The hour is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iput-wide v12, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    .line 766
    const-string v8, "MTKLogger/MainActivity"

    const-string v9, "There is something wrong with time record!"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_2
    if-lt v0, v14, :cond_4

    const/16 v8, 0x63

    if-gt v0, v8, :cond_4

    .line 770
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    const/high16 v9, 0x428c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 778
    :goto_1
    iget-wide v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    long-to-int v8, v8

    div-int/lit8 v8, v8, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 779
    .local v1, minute:I
    iget-wide v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 780
    .local v2, second:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ge v1, v14, :cond_7

    const-string v8, "0"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0xa

    cmp-long v8, v2, v10

    if-gez v8, :cond_8

    const-string v8, "0"

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 784
    .local v7, timerStr:Ljava/lang/String;
    return-object v7

    .line 754
    .end local v0           #hour:I
    .end local v1           #minute:I
    .end local v2           #second:J
    .end local v7           #timerStr:Ljava/lang/String;
    .restart local v4       #startTime:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    goto/16 :goto_0

    .line 771
    .end local v4           #startTime:J
    .restart local v0       #hour:I
    :cond_4
    const/16 v8, 0x64

    if-lt v0, v8, :cond_5

    const/16 v8, 0x3e7

    if-gt v0, v8, :cond_5

    .line 772
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    const/high16 v9, 0x4270

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 773
    :cond_5
    const/16 v8, 0x3e8

    if-lt v0, v8, :cond_6

    .line 774
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    const/high16 v9, 0x4248

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 776
    :cond_6
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    const/high16 v9, 0x42a0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 780
    .restart local v1       #minute:I
    .restart local v2       #second:J
    :cond_7
    const-string v8, ""

    goto :goto_2

    :cond_8
    const-string v8, ""

    goto :goto_3
.end method

.method private changeWaitingDialog()V
    .locals 10

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v5, 0x1

    .line 214
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "-->changeWaitingDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    if-nez v0, :cond_1

    .line 216
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "Log manager is not ready yet, try later"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->getCurrentRunningStage()I

    move-result v6

    .line 220
    .local v6, currentRunningStage:I
    const-string v0, "MTKLogger/MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeWaitingDialog() -> currentRunningStage is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    if-nez v6, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->stopWaitingDialog()V

    goto :goto_0

    .line 224
    :cond_2
    const-string v9, ""

    .line 225
    .local v9, title:Ljava/lang/String;
    const-string v8, ""

    .line 226
    .local v8, message:Ljava/lang/String;
    if-ne v6, v5, :cond_5

    .line 227
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 228
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/MainActivity;->isFinishing()Z

    move-result v7

    .line 240
    .local v7, isFinishingFlag:Z
    const-string v0, "MTKLogger/MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before show dialog, isFinishingFlag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    if-nez v7, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-static {p0, v9, v8, v5, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 244
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    .line 248
    :cond_4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v5}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    .line 249
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$3;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 229
    .end local v7           #isFinishingFlag:Z
    :cond_5
    const/4 v0, 0x2

    if-ne v6, v0, :cond_6

    .line 230
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 231
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 232
    :cond_6
    const/4 v0, 0x3

    if-ne v6, v0, :cond_3

    .line 233
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 234
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private checkPath()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 937
    const/4 v0, 0x1

    .line 938
    .local v0, isExist:Z
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 939
    const v4, 0x7f07001e

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/mtklogger/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 941
    const/4 v0, 0x0

    .line 943
    :cond_0
    iget-object v4, p0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/mediatek/mtklogger/utils/Utils;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, mountStatus:Ljava/lang/String;
    const-string v4, "MTKLogger/MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->checkPath(), path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exist?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", volumeState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    if-eqz v0, :cond_2

    const-string v4, "/data"

    iget-object v5, p0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private checkTaglogCompressing()V
    .locals 4

    .prologue
    .line 952
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "tag_log_compressing"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "MTKLogger/MainActivity"

    const-string v2, "checkTaglogCompressing() ? true"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 956
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.log2server.EXCEPTION_HAPPEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string v1, "extra_key_from_main_activity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 961
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private clearLogs()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 876
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->checkPath()Z

    move-result v8

    if-nez v8, :cond_0

    .line 923
    :goto_0
    return-void

    .line 879
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/mediatek/mtklogger/LogFolderListActivity;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 880
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "rootpath"

    iget-object v11, p0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mStartStopToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 882
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 883
    .local v7, logType:Ljava/lang/Integer;
    iget-object v11, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v11, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v10, v8, :cond_5

    move v3, v10

    .line 885
    .local v3, isLogStart:Z
    :goto_2
    if-eqz v3, :cond_1

    .line 886
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v14, :cond_8

    .line 888
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v8}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->getModemLogRunningDetailStatus()I

    move-result v0

    .line 889
    .local v0, currentRunningStage:I
    const-string v8, "MTKLogger/MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "modemLogRunningDetailStatus : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    if-eq v0, v10, :cond_2

    if-ne v0, v13, :cond_6

    :cond_2
    move v4, v10

    .line 892
    .local v4, isModem1Running:Z
    :goto_3
    if-eqz v4, :cond_3

    .line 893
    const-string v8, "MTKLogger/MainActivity"

    const-string v11, "Modem one is running!"

    invoke-static {v8, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getCurrentLogFolderFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 895
    .local v6, logFile:Ljava/io/File;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 896
    sget-object v8, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    .end local v6           #logFile:Ljava/io/File;
    :cond_3
    if-eq v0, v14, :cond_4

    if-ne v0, v13, :cond_7

    :cond_4
    move v5, v10

    .line 902
    .local v5, isModem2Running:Z
    :goto_4
    if-eqz v5, :cond_1

    .line 903
    const-string v8, "MTKLogger/MainActivity"

    const-string v11, "DualModem is running!"

    invoke-static {v8, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "dualmdlog"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getCurrentLogFolderFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 905
    .restart local v6       #logFile:Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 906
    const-string v8, "filterDualModemFile"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .end local v0           #currentRunningStage:I
    .end local v3           #isLogStart:Z
    .end local v4           #isModem1Running:Z
    .end local v5           #isModem2Running:Z
    .end local v6           #logFile:Ljava/io/File;
    :cond_5
    move v3, v9

    .line 883
    goto/16 :goto_2

    .restart local v0       #currentRunningStage:I
    .restart local v3       #isLogStart:Z
    :cond_6
    move v4, v9

    .line 890
    goto/16 :goto_3

    .restart local v4       #isModem1Running:Z
    :cond_7
    move v5, v9

    .line 900
    goto :goto_4

    .line 913
    .end local v0           #currentRunningStage:I
    .end local v4           #isModem1Running:Z
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getCurrentLogFolderFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 914
    .restart local v6       #logFile:Ljava/io/File;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 915
    sget-object v8, Lcom/mediatek/mtklogger/LogFolderListActivity;->EXTRA_FILTER_FILES_KEY:Landroid/util/SparseArray;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 921
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #isLogStart:Z
    .end local v6           #logFile:Ljava/io/File;
    .end local v7           #logType:Ljava/lang/Integer;
    :cond_9
    invoke-virtual {p0, v2}, Lcom/mediatek/mtklogger/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 922
    iget-object v8, p0, Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private findViews()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 413
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsImageButton:Landroid/widget/ImageButton;

    .line 415
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mModemLogImage:Landroid/widget/ImageView;

    .line 416
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mModemLogText:Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mModemLogImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mModemLogText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMobileLogImage:Landroid/widget/ImageView;

    .line 420
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMobileLogText:Landroid/widget/TextView;

    .line 421
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mMobileLogImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mMobileLogText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mNetworkLogImage:Landroid/widget/ImageView;

    .line 424
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mNetworkLogText:Landroid/widget/TextView;

    .line 425
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mNetworkLogImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mNetworkLogText:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathText:Landroid/widget/TextView;

    .line 431
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mtklogger/LinearColorBar;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;

    .line 432
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStorageChartLabelText:Landroid/widget/TextView;

    .line 433
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mUsedStorageText:Landroid/widget/TextView;

    .line 434
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mFreeStorageText:Landroid/widget/TextView;

    .line 435
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    .line 436
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStartStopToggleButton:Landroid/widget/ToggleButton;

    .line 437
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    .line 438
    return-void
.end method

.method private hideWaitingServiceDialog()V
    .locals 2

    .prologue
    .line 1000
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "-->hideWaitingServiceDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->removeDialog(I)V

    .line 1006
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "<--hideWaitingServiceDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 441
    const-string v3, "MTKLogger/MainActivity"

    const-string v4, "-->initViews()"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 443
    const-string v3, "log_settings"

    invoke-virtual {p0, v3, v8}, Lcom/mediatek/mtklogger/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 445
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 446
    .local v1, logType:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f070017

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/mtklogger/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 449
    .end local v1           #logType:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "reason_start"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, startReason:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "low_storage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/mediatek/mtklogger/utils/Utils;->checkLogStarted(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->alertLowStorageDialog()V

    .line 455
    :cond_1
    sput v8, Lcom/mediatek/mtklogger/MainActivity;->WAITING_SERVICE_PAST_TIME:I

    .line 456
    sget-boolean v3, Lcom/mediatek/mtklogger/framework/LogReceiver;->canKillSelf:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->needStartLogAtBootTime()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    const-string v3, "MTKLogger/MainActivity"

    const-string v4, "Log service was not ready yet, block UI a little to wait its initialization"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/mtklogger/MainActivity;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 461
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->showWaitingServiceDialog()V

    .line 465
    :goto_1
    return-void

    .line 463
    :cond_2
    new-instance v3, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-direct {v3, p0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    goto :goto_1
.end method

.method private isAutoTest()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 684
    const-string v3, "ro.monkey"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 685
    .local v0, isMonkeyRunning:Z
    const-string v3, "MTKLogger/MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoTest()-> Monkey running flag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    .line 689
    .local v1, isUserAMonkey:Z
    const-string v3, "MTKLogger/MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAutoTest()-> isUserAMonkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private monitorSdcardRatioBar()V
    .locals 6

    .prologue
    .line 788
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMonitorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 798
    :goto_0
    return-void

    .line 791
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMonitorTimer:Ljava/util/Timer;

    .line 792
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMonitorTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$11;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7530

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private needStartLogAtBootTime()Z
    .locals 8

    .prologue
    .line 970
    const/4 v2, 0x0

    .line 971
    .local v2, needStart:Z
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 972
    .local v1, logType:Ljava/lang/Integer;
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v6, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v5, v3, :cond_0

    .line 975
    const/4 v2, 0x1

    .line 979
    .end local v1           #logType:Ljava/lang/Integer;
    :cond_1
    const-string v3, "MTKLogger/MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->needStartLogAtBootTime(), needStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return v2
.end method

.method private refreshSdcardBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 801
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "-->refreshSdcardBar()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->checkPath()Z

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "Selected log path is unavailable, reset storage info"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;

    invoke-virtual {v0, v2, v2}, Lcom/mediatek/mtklogger/LinearColorBar;->setGradientPaint(FF)V

    .line 805
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;

    invoke-virtual {v0, v2, v2, v2}, Lcom/mediatek/mtklogger/LinearColorBar;->setRatios(FFF)V

    .line 806
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mUsedStorageText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0M "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {p0, v2}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mFreeStorageText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0M "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/MainActivity;->iWaitingRefreshStatusBar:Z

    if-eqz v0, :cond_1

    .line 812
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, " Last refresh request not finished yet, just wait a moment."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_1
    new-instance v0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

    invoke-direct {v0, p0}, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mRefreshStorageTask:Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

    .line 815
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mRefreshStorageTask:Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private removeManualTitle()V
    .locals 2

    .prologue
    .line 408
    const v1, 0x7f09001d

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 409
    .local v0, mainLinearLayout:Landroid/widget/LinearLayout;
    const v1, 0x7f09001e

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 410
    return-void
.end method

.method private setButtonStatus(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 699
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStartStopToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 700
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 701
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$6;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStartStopToggleButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$7;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$8;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$9;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    return-void
.end method

.method private showWaitingServiceDialog()V
    .locals 2

    .prologue
    .line 987
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "-->showWaitingServiceDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->showDialog(I)V

    .line 996
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "<--showWaitingServiceDialog()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-void
.end method

.method private startTimer()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    .line 704
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "begin_recording_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 706
    .local v6, startTime:J
    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 707
    iput-wide v4, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    .line 712
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "system_time_reset"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 714
    .local v8, timeResetFlag:I
    if-eqz v8, :cond_0

    .line 715
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "system_time_reset"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    const v0, 0x7f070098

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 719
    :cond_0
    const-string v0, "MTKLogger/MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->startTimer(), startTime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", timeResetFlag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->calculateTimer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->stopTimer()V

    .line 724
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v10}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimer:Ljava/util/Timer;

    .line 725
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/mtklogger/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/MainActivity$10;-><init>(Lcom/mediatek/mtklogger/MainActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 731
    return-void

    .line 709
    .end local v8           #timeResetFlag:I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimeMillisecond:J

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mTimer:Ljava/util/Timer;

    .line 738
    :cond_0
    return-void
.end method

.method private stopWaitingDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 865
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 867
    iput-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 871
    iput-object v1, p0, Lcom/mediatek/mtklogger/MainActivity;->mWaitingDialogTimer:Ljava/util/Timer;

    .line 873
    :cond_1
    return-void
.end method

.method private tagLogs()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStartStopToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->tagLog()Z

    goto :goto_0
.end method

.method private updateUI()V
    .locals 18

    .prologue
    .line 580
    const-string v12, "MTKLogger/MainActivity"

    const-string v13, "-->updateUI(), Update UI Start"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static/range {p0 .. p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    .line 584
    const-string v12, "MTKLogger/MainActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mSDCardPathStr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/mtklog/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathText:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f070013

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mStorageChartLabelText:Landroid/widget/TextView;

    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathTypeLabelRes()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mtklogger/MainActivity;->isAutoTest()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 591
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/mtklogger/MainActivity;->setButtonStatus(Z)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/mtklogger/MainActivity;->setButtonStatus(Z)V

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mtklogger/MainActivity;->changeWaitingDialog()V

    .line 599
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v12}, Lcom/mediatek/mtklogger/utils/Utils;->checkLogStarted(Landroid/content/SharedPreferences;)Z

    move-result v6

    .line 600
    .local v6, isStart:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mStartStopToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v12, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 603
    if-eqz v6, :cond_2

    .line 604
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mtklogger/MainActivity;->startTimer()V

    .line 610
    :goto_1
    sget-object v12, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 611
    .local v9, logType:Ljava/lang/Integer;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v12, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v13, v12, :cond_3

    const/4 v5, 0x1

    .line 613
    .local v5, isLogStart:Z
    :goto_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f02000c

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v14, 0x7f070016

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v13, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/mediatek/mtklogger/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/high16 v13, 0x437f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_2

    .line 606
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #isLogStart:Z
    .end local v9           #logType:Ljava/lang/Integer;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mtklogger/MainActivity;->stopTimer()V

    goto/16 :goto_1

    .line 611
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v9       #logType:Ljava/lang/Integer;
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 619
    .restart local v5       #isLogStart:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/MainActivity;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v12, Lcom/mediatek/mtklogger/settings/SettingsActivity;->KEY_LOG_SWITCH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x1

    invoke-interface {v13, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 621
    .local v4, isLogOn:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f02000b

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 622
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    const v13, 0x7f070017

    move v14, v13

    :goto_4
    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v13, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/mediatek/mtklogger/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogImageViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    const/16 v13, 0xff

    :goto_5
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mLogTextViews:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    const/high16 v13, 0x437f

    :goto_6
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_2

    .line 622
    :cond_5
    const v13, 0x7f070018

    move v14, v13

    goto :goto_4

    .line 624
    :cond_6
    const/16 v13, 0x4b

    goto :goto_5

    .line 625
    :cond_7
    const/high16 v13, 0x4296

    goto :goto_6

    .line 630
    .end local v4           #isLogOn:Z
    .end local v5           #isLogStart:Z
    .end local v9           #logType:Ljava/lang/Integer;
    :cond_8
    const/4 v7, 0x0

    .line 631
    .local v7, isTagLogEnabled:Z
    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v13, "eng"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 632
    const-string v12, "MTKLogger/MainActivity"

    const-string v13, "Build type is not eng"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v13, "tagLogEnable"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 638
    :goto_7
    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    .line 639
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 647
    :goto_8
    const/4 v3, 0x0

    .line 648
    .local v3, isLogExists:Z
    sget-object v12, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 649
    .restart local v9       #logType:Ljava/lang/Integer;
    new-instance v8, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v12, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    .local v8, logRootPath:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_9

    .line 651
    const/4 v3, 0x1

    .line 656
    .end local v8           #logRootPath:Ljava/io/File;
    .end local v9           #logType:Ljava/lang/Integer;
    :cond_a
    new-instance v1, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "dualmdlog"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .local v1, dualMdLogRootPath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_b

    .line 658
    const/4 v3, 0x1

    .line 660
    :cond_b
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "taglog"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v10, taglogTootPath:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_c

    .line 662
    const/4 v3, 0x1

    .line 664
    :cond_c
    if-eqz v3, :cond_f

    .line 665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 674
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v13, "waiting_sd_ready_reason"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, waitSDStatusStr:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/mediatek/mtklogger/MainActivity;->iAlreadyNotifyUserSDNotReady:Z

    if-nez v12, :cond_0

    .line 676
    const-string v12, "MTKLogger/MainActivity"

    const-string v13, "Still waiting SD ready"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/mediatek/mtklogger/MainActivity;->iAlreadyNotifyUserSDNotReady:Z

    .line 678
    const v12, 0x7f07006f

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 635
    .end local v1           #dualMdLogRootPath:Ljava/io/File;
    .end local v3           #isLogExists:Z
    .end local v10           #taglogTootPath:Ljava/io/File;
    .end local v11           #waitSDStatusStr:Ljava/lang/String;
    :cond_d
    const-string v12, "MTKLogger/MainActivity"

    const-string v13, "Build type is eng"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v13, "tagLogEnable"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto/16 :goto_7

    .line 642
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 643
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mTagImageButton:Landroid/widget/ImageButton;

    const/16 v13, 0x4b

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto/16 :goto_8

    .line 668
    .restart local v1       #dualMdLogRootPath:Ljava/io/File;
    .restart local v3       #isLogExists:Z
    .restart local v10       #taglogTootPath:Ljava/io/File;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 669
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/MainActivity;->mClearLogImageButton:Landroid/widget/ImageButton;

    const/16 v13, 0x4b

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_9
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 296
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 298
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->setContentView(I)V

    .line 300
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->removeManualTitle()V

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->findViews()V

    .line 305
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->initViews()V

    .line 306
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->setListeners()V

    .line 307
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->updateUI()V

    .line 308
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 1011
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 1012
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1015
    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 374
    sget v0, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v0, v0

    const-wide v2, 0x400ffdf3b645a1cbL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 385
    :goto_0
    return v4

    .line 377
    :cond_0
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    .line 378
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 379
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 380
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->isAutoTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mSettingsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 360
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    invoke-virtual {v0}, Lcom/mediatek/mtklogger/framework/MTKLoggerManager;->free()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mManager:Lcom/mediatek/mtklogger/framework/MTKLoggerManager;

    .line 365
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->stopWaitingDialog()V

    .line 366
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mRefreshStorageTask:Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mRefreshStorageTask:Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->cancel(Z)Z

    .line 369
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 370
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 390
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v1, v1

    const-wide v3, 0x400ffdf3b645a1cbL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 402
    :goto_0
    return v5

    .line 394
    :cond_0
    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->USER_ID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget v1, Lcom/mediatek/mtklogger/utils/Utils;->USER_ID:I

    if-eqz v1, :cond_1

    .line 395
    const-string v1, "MTKLogger/MainActivity"

    const-string v2, "In multi user case, only device owner can change log configuration"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const v1, 0x7f070035

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 399
    :cond_1
    const-string v1, "MTKLogger/MainActivity"

    const-string v2, "SettingsActivity open!"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 343
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMonitorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMonitorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mMonitorTimer:Ljava/util/Timer;

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->stopTimer()V

    .line 348
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iget-object v0, p0, Lcom/mediatek/mtklogger/MainActivity;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/mtklogger/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 312
    const-string v3, "MTKLogger/MainActivity"

    const-string v4, "-->onResume"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v1, serviceIntent:Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v3, "stage_event"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v3, "extra_key_from_taglog"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/mtklogger/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 322
    .local v2, systemTimeChangeIntent:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/mtklogger/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v0, SDStatusIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity;->mStorageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/mediatek/mtklogger/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->checkTaglogCompressing()V

    .line 334
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->updateUI()V

    .line 335
    invoke-direct {p0}, Lcom/mediatek/mtklogger/MainActivity;->monitorSdcardRatioBar()V

    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 337
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 356
    return-void
.end method
