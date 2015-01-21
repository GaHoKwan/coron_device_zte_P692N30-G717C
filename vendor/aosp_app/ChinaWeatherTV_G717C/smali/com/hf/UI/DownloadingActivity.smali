.class public Lcom/hf/UI/DownloadingActivity;
.super Landroid/app/Activity;
.source "DownloadingActivity.java"


# static fields
.field private static final HANDLER_DOWNLOAD_FAILED:I = 0x66

.field private static final HANDLER_DOWNLOAD_FINISH:I = 0x65

.field private static final HANDLER_DOWNLOAD_STOP:I = 0x67

.field private static final HANDLER_PROGRESS:I = 0x64

.field private static final PATH_KEY:Ljava/lang/String; = "path"


# instance fields
.field private mDownload:Lcom/hf/download/Download;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/hf/UI/DownloadingActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/DownloadingActivity$1;-><init>(Lcom/hf/UI/DownloadingActivity;)V

    iput-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/DownloadingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/hf/UI/DownloadingActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/DownloadingActivity;)Lcom/hf/download/Download;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mDownload:Lcom/hf/download/Download;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/UI/DownloadingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/UI/DownloadingActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method private download()V
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lcom/hf/download/Download;->getInstance()Lcom/hf/download/Download;

    move-result-object v2

    iput-object v2, p0, Lcom/hf/UI/DownloadingActivity;->mDownload:Lcom/hf/download/Download;

    .line 93
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 94
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/hf/UI/DownloadingActivity$2;

    invoke-direct {v1, p0}, Lcom/hf/UI/DownloadingActivity$2;-><init>(Lcom/hf/UI/DownloadingActivity;)V

    .line 111
    .local v1, task:Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 112
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/hf/UI/DownloadingActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/hf/UI/DownloadingActivity$3;-><init>(Lcom/hf/UI/DownloadingActivity;Ljava/util/Timer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 144
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 150
    sget-boolean v0, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "finish"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mDownload:Lcom/hf/download/Download;

    invoke-virtual {v0}, Lcom/hf/download/Download;->cancle()V

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 156
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 63
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 64
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/hf/UI/DownloadingActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/hf/UI/DownloadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 66
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/hf/UI/DownloadingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mTextView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/hf/UI/DownloadingActivity;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f080141

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/hf/UI/DownloadingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/hf/UI/DownloadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/DownloadingActivity;->url:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Lcom/hf/UI/DownloadingActivity;->download()V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 87
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 80
    return-void
.end method
