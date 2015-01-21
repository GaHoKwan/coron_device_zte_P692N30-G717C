.class public Lcom/zte/update/ui/AppInfoActivity;
.super Landroid/app/Activity;
.source "AppInfoActivity.java"

# interfaces
.implements Lcom/zte/update/ui/HandleTimerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;
    }
.end annotation


# instance fields
.field protected appIconImg:Landroid/widget/ImageView;

.field protected appLable:Landroid/widget/TextView;

.field protected appSize:Landroid/widget/TextView;

.field protected appVersionName:Landroid/widget/TextView;

.field protected currentVersionName:Landroid/widget/TextView;

.field downloadInfo:Lcom/zte/update/data/DownloadInfo;

.field lastPercent:I

.field protected mainKey:Ljava/lang/Object;

.field protected optBtn:Lcom/zte/update/ui/OptionButton;

.field protected percent:Landroid/widget/TextView;

.field protected progressBar:Landroid/widget/ProgressBar;

.field protected progressInfo:Landroid/view/View;

.field protected publishTime:Landroid/widget/TextView;

.field protected stopBtn:Lcom/zte/update/ui/OptionButton;

.field protected summary:Landroid/widget/TextView;

.field timer:Lcom/zte/update/ui/HandleTimer;

.field protected updateBtn:Lcom/zte/update/ui/OptionButton;

.field upgrateBtnStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/update/ui/AppInfoActivity;->lastPercent:I

    .line 395
    return-void
.end method

.method private diplayNewAppVersion(Lcom/zte/update/data/CacheAppInfo;Lcom/zte/update/data/DownloadInfo;)V
    .locals 6
    .parameter "cacheAppInfo"
    .parameter "downloadInfo"

    .prologue
    .line 107
    const v3, 0x7f060056

    invoke-virtual {p0, v3}, Lcom/zte/update/ui/AppInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, currentVersion:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/update/ui/AppInfoActivity;->appVersionName:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getSpaceFormat(J)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, size:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/update/ui/AppInfoActivity;->appSize:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v2           #size:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getPublishTime()J

    move-result-wide v3

    const-string v5, "yyyy-MM-dd"

    invoke-static {v3, v4, v5}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getTimeFormatText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, publishtime:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/update/ui/AppInfoActivity;->publishTime:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, p0, Lcom/zte/update/ui/AppInfoActivity;->summary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method private displayAppInfos()V
    .locals 6

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/zte/update/ui/AppInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 130
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "mainKey"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v3

    .line 133
    .local v3, requestInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/zte/update/data/DataManager;->loadCacheAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v0

    .line 134
    .local v0, cacheAppInfo:Lcom/zte/update/data/CacheAppInfo;
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v1

    .line 136
    .local v1, downloadInfo:Lcom/zte/update/data/DownloadInfo;
    invoke-direct {p0, v3, v0, v1}, Lcom/zte/update/ui/AppInfoActivity;->displayInfoinViews(Lcom/zte/update/data/RequestAppInfo;Lcom/zte/update/data/CacheAppInfo;Lcom/zte/update/data/DownloadInfo;)V

    .line 138
    return-void
.end method

.method private displayInfoinViews(Lcom/zte/update/data/RequestAppInfo;Lcom/zte/update/data/CacheAppInfo;Lcom/zte/update/data/DownloadInfo;)V
    .locals 3
    .parameter "requestInfo"
    .parameter "cacheAppInfo"
    .parameter "downloadInfo"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->appIconImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zte/update/ui/AppInfoActivity;->appLable:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/update/ui/AppInfoActivity;->initAppIconAndLable(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/zte/update/ui/AppInfoActivity;->displayCurrentVersion(Lcom/zte/update/data/RequestAppInfo;)V

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/zte/update/ui/AppInfoActivity;->diplayNewAppVersion(Lcom/zte/update/data/CacheAppInfo;Lcom/zte/update/data/DownloadInfo;)V

    .line 103
    return-void
.end method

.method private handleInstaSuccessful()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 369
    :try_start_0
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/zte/update/data/DataManager;->loadRequestAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    .line 370
    .local v0, appInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->displayCurrentVersion(Lcom/zte/update/data/RequestAppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0           #appInfo:Lcom/zte/update/data/RequestAppInfo;
    :goto_0
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->appVersionName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1}, Lcom/zte/update/ui/OptionButton;->setCompelete()V

    .line 378
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->isLaunchable(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1, v3}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 382
    :cond_0
    return-void

    .line 371
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleInstallFail(Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;)V
    .locals 4
    .parameter "errorStatus"

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 353
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    .local v0, buffer:Ljava/lang/StringBuffer;
    const v1, 0x7f060016

    invoke-virtual {p0, v1}, Lcom/zte/update/ui/AppInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1, v3}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 361
    iput v3, p0, Lcom/zte/update/ui/AppInfoActivity;->upgrateBtnStatus:I

    .line 363
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 365
    return-void
.end method

.method private handleInstalling()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 391
    return-void
.end method

.method private handleInterrupt(Lcom/zte/update/data/DownloadInfo;)V
    .locals 4
    .parameter "downloadInfo"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setContinue()V

    .line 296
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/update/ui/AppInfoActivity;->refreshProgressInfo(JJ)V

    .line 299
    return-void
.end method

.method private handleNormal()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setImageResource(I)V

    .line 288
    return-void
.end method

.method private handlePause(Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "downloadInfo"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/zte/update/ui/AppInfoActivity;->handleInterrupt(Lcom/zte/update/data/DownloadInfo;)V

    .line 303
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    return-void
.end method

.method private handleProgressUpdate(Lcom/zte/update/data/DownloadInfo;)V
    .locals 4
    .parameter "downloadInfo"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setPause()V

    .line 310
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 312
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/update/ui/AppInfoActivity;->refreshProgressInfo(JJ)V

    .line 314
    return-void
.end method

.method private handleStatus()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->downloadInfo:Lcom/zte/update/data/DownloadInfo;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/zte/update/ui/AppInfoActivity;->getDownloadInfo()Lcom/zte/update/data/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->downloadInfo:Lcom/zte/update/data/DownloadInfo;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->downloadInfo:Lcom/zte/update/data/DownloadInfo;

    invoke-direct {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->handleStatus(Lcom/zte/update/data/DownloadInfo;)V

    .line 86
    return-void
.end method

.method private handleStatus(Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "downloadInfo"

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->handleInstaSuccessful()V

    .line 271
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v0

    .line 243
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 258
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->handleNormal()V

    goto :goto_0

    .line 246
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->handleWaitingDownload()V

    goto :goto_0

    .line 249
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/zte/update/ui/AppInfoActivity;->handleInterrupt(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0

    .line 252
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/zte/update/ui/AppInfoActivity;->handlePause(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0

    .line 255
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/zte/update/ui/AppInfoActivity;->handleProgressUpdate(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0

    .line 261
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->handleInstalling()V

    goto :goto_0

    .line 264
    :pswitch_7
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->handleInstaSuccessful()V

    goto :goto_0

    .line 267
    :pswitch_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zte/update/ui/AppInfoActivity;->handleInstallFail(Lcom/zte/aliveupdate/common/contant/PackageInstallStatus;)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method private handleWaitingDownload()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    return-void
.end method

.method private initButtonListener()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;-><init>(Lcom/zte/update/ui/AppInfoActivity;)V

    .line 165
    .local v0, l:Lcom/zte/update/ui/AppInfoActivity$OptionButtonOnClickListner;
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1, v0}, Lcom/zte/update/ui/OptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1, v0}, Lcom/zte/update/ui/OptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->stopBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1, v0}, Lcom/zte/update/ui/OptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 141
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->appIconImg:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->appLable:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->currentVersionName:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->appVersionName:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->appSize:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->publishTime:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->summary:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressInfo:Landroid/view/View;

    .line 152
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 155
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/update/ui/OptionButton;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    .line 156
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setPause()V

    .line 157
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/update/ui/OptionButton;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->stopBtn:Lcom/zte/update/ui/OptionButton;

    .line 158
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->stopBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setStop()V

    .line 159
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/update/ui/OptionButton;

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->updateBtn:Lcom/zte/update/ui/OptionButton;

    .line 161
    return-void
.end method

.method private refreshProgressInfo(JJ)V
    .locals 4
    .parameter "current"
    .parameter "total"

    .prologue
    .line 223
    invoke-static {p1, p2, p3, p4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->caculatPersent(JJ)I

    move-result v1

    .line 225
    .local v1, percentNum:I
    iget-object v2, p0, Lcom/zte/update/ui/AppInfoActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 229
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v2, p0, Lcom/zte/update/ui/AppInfoActivity;->percent:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->stopDownload(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method protected displayCurrentVersion(Lcom/zte/update/data/RequestAppInfo;)V
    .locals 4
    .parameter "requestInfo"

    .prologue
    .line 123
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Lcom/zte/update/ui/AppInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, currentVersion:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/update/ui/AppInfoActivity;->currentVersionName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method protected getDownloadInfo()Lcom/zte/update/data/DownloadInfo;
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v0

    .line 95
    .local v0, info:Lcom/zte/update/data/DownloadInfo;
    return-object v0
.end method

.method protected initAppIconAndLable(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 6
    .parameter "pckgName"
    .parameter "iconImg"
    .parameter "lable"

    .prologue
    .line 171
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 173
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 175
    .local v3, pckgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, lableTxt:Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .end local v2           #lableTxt:Ljava/lang/String;
    .end local v3           #pckgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/AppInfoActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->initViews()V

    .line 74
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->displayAppInfos()V

    .line 75
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->initButtonListener()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    new-instance v0, Lcom/zte/update/ui/HandleTimer;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/HandleTimer;-><init>(Lcom/zte/update/ui/HandleTimerCallback;)V

    iput-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    .line 196
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/zte/update/ui/HandleTimer;->start(J)V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->timer:Lcom/zte/update/ui/HandleTimer;

    invoke-virtual {v0}, Lcom/zte/update/ui/HandleTimer;->stop()V

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 204
    return-void
.end method

.method public onTimeHandle()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/zte/update/ui/AppInfoActivity;->handleStatus()V

    .line 435
    return-void
.end method

.method public pauseDownload()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->stopDownload(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public startDownload()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zte/update/ui/AppInfoActivity;->mainKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startDownload(Ljava/lang/String;)V

    .line 209
    return-void
.end method
