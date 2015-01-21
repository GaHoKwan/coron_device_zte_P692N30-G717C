.class public abstract Lzte/com/cn/cloudnotepad/backup/BaseManager;
.super Ljava/lang/Object;
.source "BaseManager.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/backup/BackupRestoreConstants;


# static fields
.field public static final MSG_CANCEL:I = 0x7

.field public static final MSG_DONE:I = 0x5

.field public static final MSG_PRE_CANCEL:I = 0x3

.field public static final MSG_PRE_DONE:I = 0x2

.field public static final MSG_PRE_START:I = 0x1

.field public static final MSG_START:I = 0x4

.field public static final MSG_UPDATE:I = 0x6


# instance fields
.field protected mAccountUserId:Ljava/lang/String;

.field protected mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

.field protected mCancelled:Z

.field protected mContext:Landroid/content/Context;

.field private mDlgTitle:Ljava/lang/CharSequence;

.field protected mDoneFilesSize:J

.field protected mFilesTotalSize:J

.field public mHandler:Landroid/os/Handler;

.field private mOnProgressBaiduStatusListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

.field private mPreDialog:Landroid/app/ProgressDialog;

.field private mPreThread:Ljava/lang/Thread;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field protected mResult:I

.field private mThread:Ljava/lang/Thread;

.field protected mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "zteAccountUtils"
    .parameter "dlgTitle"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    .line 35
    iput v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    .line 39
    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mFilesTotalSize:J

    .line 40
    iput-wide v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mDoneFilesSize:J

    .line 52
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/BaseManager$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$1;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mOnProgressBaiduStatusListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

    .line 136
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mDlgTitle:Ljava/lang/CharSequence;

    .line 44
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    .line 45
    invoke-virtual {p2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mAccountUserId:Ljava/lang/String;

    .line 46
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-direct {v0, p1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    .line 47
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mOnProgressBaiduStatusListener:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->setOnProgressBaiduStatusListener(Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnProgressBaiduStatusListener;)V

    .line 48
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->startPreWorkThread()V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$10(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$11(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->preTask()V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->createProgressDlg()V

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/backup/BaseManager;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/backup/BaseManager;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->getProgressNumberFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->createPreDlg()V

    return-void
.end method

.method static synthetic access$8(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->dismissPreDialog()V

    return-void
.end method

.method static synthetic access$9(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private bindAccount()V
    .locals 4

    .prologue
    .line 243
    iget v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_0

    .line 244
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/backup/BackupUtils;->getAccessTokenFromSharedPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, baiduAccessToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    invoke-virtual {v1, v0}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->initBaiduPcs(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->doPreTask()V

    .line 285
    .end local v0           #baiduAccessToken:Ljava/lang/String;
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mBaiduPcs:Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mZteAccountUtils:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;

    invoke-direct {v3, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$7;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs;->bindBaiduPcs(Ljava/lang/String;Lzte/com/cn/cloudnotepad/backup/baidu/BaiduPcs$OnCompleteBaiduBindListener;)V

    goto :goto_0
.end method

.method private createPreDlg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    .line 111
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 112
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mDlgTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0900f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 116
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lzte/com/cn/cloudnotepad/backup/BaseManager$6;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$6;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 126
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 127
    return-void
.end method

.method private createProgressDlg()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 78
    const-string v0, "wangna"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mProgressDialog"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 80
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mDlgTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-wide v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mFilesTotalSize:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 82
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->getProgressNumberFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 85
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/BaseManager$4;

    invoke-direct {v2, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$4;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 96
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 97
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lzte/com/cn/cloudnotepad/backup/BaseManager$5;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$5;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    return-void
.end method

.method private dismissPreDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/Exception;
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    iput-object v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private getProgressNumberFormat(J)Ljava/lang/String;
    .locals 3
    .parameter "bytes"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mFilesTotalSize:J

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertFileSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private preTask()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 225
    const-string v0, "in preTask, mPreThread "

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->printThreadInfo(Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    .line 228
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->bindAccount()V

    .line 229
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "wangna"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in preTask(), mResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->getBaiduApiErrorResultString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mCancelled:Z

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->showToast(Ljava/lang/CharSequence;I)V

    .line 236
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->bindAccount()V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0, v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->sendMsg(I)V

    goto :goto_0
.end method

.method private startPreWorkThread()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/cloudnotepad/backup/BaseManager$3;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$3;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;

    .line 73
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method


# virtual methods
.method protected abstract doCancelled()V
.end method

.method protected abstract doPreCancelled()V
.end method

.method protected abstract doPreTask()V
.end method

.method protected abstract doTask()V
.end method

.method protected abstract donePreTask()V
.end method

.method protected abstract doneTask()V
.end method

.method protected getBaiduApiErrorResultString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    const-string v0, ""

    .line 299
    .local v0, resultStr:Ljava/lang/String;
    iget v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    sparse-switch v1, :sswitch_data_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown error, mResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 301
    :sswitch_0
    const-string v0, "file already exist error"

    .line 302
    goto :goto_0

    .line 304
    :sswitch_1
    const-string v0, "invalid access token"

    .line 305
    goto :goto_0

    .line 307
    :sswitch_2
    const-string v0, "no error"

    .line 308
    goto :goto_0

    .line 310
    :sswitch_3
    const-string v0, "file not exist error"

    .line 311
    goto :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x6e -> :sswitch_1
        0x7955 -> :sswitch_0
        0x795a -> :sswitch_3
    .end sparse-switch
.end method

.method protected printThreadInfo(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 320
    const-string v0, "BaseManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " thread info : id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method protected sendMsg(I)V
    .locals 2
    .parameter "message"

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 133
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method

.method protected showToast(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 288
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;

    invoke-direct {v1, p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/BaseManager$8;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method
