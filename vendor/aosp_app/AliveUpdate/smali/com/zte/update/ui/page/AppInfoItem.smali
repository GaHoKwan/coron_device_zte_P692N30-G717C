.class public Lcom/zte/update/ui/page/AppInfoItem;
.super Lcom/zte/update/ui/page/BaseLinearLayout;
.source "AppInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;
    }
.end annotation


# instance fields
.field protected allSize:Landroid/widget/TextView;

.field protected appIconImg:Landroid/widget/ImageView;

.field protected appLable:Landroid/widget/TextView;

.field protected appName:Ljava/lang/String;

.field protected appSize:Landroid/widget/TextView;

.field protected appSubInfo:Landroid/view/View;

.field protected appVersionName:Landroid/widget/TextView;

.field protected compeleted:Z

.field protected diffSize:Landroid/widget/TextView;

.field protected diffSizeLayout:Landroid/widget/LinearLayout;

.field downloadInfo:Lcom/zte/update/data/DownloadInfo;

.field private installing:Landroid/widget/ProgressBar;

.field lastPercent:I

.field protected mainKey:Ljava/lang/Object;

.field protected optBtn:Lcom/zte/update/ui/OptionButton;

.field protected percent:Landroid/widget/TextView;

.field protected progressBar:Landroid/widget/ProgressBar;

.field protected progressInfo:Landroid/view/View;

.field protected progressStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "mainKey"

    .prologue
    .line 74
    const v0, 0x7f030003

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/page/BaseLinearLayout;-><init>(Landroid/content/Context;I)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->compeleted:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->lastPercent:I

    .line 75
    iput-object p2, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->initViews()V

    .line 79
    invoke-virtual {p0}, Lcom/zte/update/ui/page/AppInfoItem;->displayAppInfo()V

    .line 80
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->initItemListener()V

    .line 81
    invoke-virtual {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/update/ui/page/AppInfoItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayDiffsize(Lcom/zte/update/data/CacheAppInfo;)V
    .locals 5
    .parameter "cacheAppInfo"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSize:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->diffSizeLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getPatchSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getSpaceFormat(J)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, diffSizeTxt:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/update/data/CacheAppInfo;->getAllSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getSpaceFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, allSizeTxt:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->diffSize:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->allSize:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->allSize:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 164
    return-void
.end method

.method private handleInstallFail()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 270
    const-string v1, "handleInstallFail"

    invoke-static {p0, v1}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 272
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 273
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->installing:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->mContext:Landroid/content/Context;

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->percent:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->percent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v1}, Lcom/zte/update/ui/OptionButton;->setUpdate()V

    .line 283
    return-void
.end method

.method private handleInstallSuccessful()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    .line 254
    invoke-virtual {p0, v2}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 256
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->installing:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->percent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->isLaunchable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setCompelete()V

    .line 265
    :goto_0
    iput-boolean v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->compeleted:Z

    .line 266
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleInstalling()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 286
    const-string v0, "handleInstalling"

    invoke-static {p0, v0}, Lcom/zte/util/Log;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 288
    invoke-virtual {p0, v2}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 290
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0, v3}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->percent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 293
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->installing:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    return-void
.end method

.method private handleInterrupt(Lcom/zte/update/data/DownloadInfo;)V
    .locals 4
    .parameter "downloadInfo"

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 303
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setContinue()V

    .line 305
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/update/ui/page/AppInfoItem;->refreshProgressInfo(JJ)V

    .line 309
    :cond_0
    return-void
.end method

.method private handleNormal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    invoke-virtual {p0, v1}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 247
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setUpdate()V

    .line 249
    return-void
.end method

.method private handlePause(Lcom/zte/update/data/DownloadInfo;)V
    .locals 2
    .parameter "downloadInfo"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/zte/update/ui/page/AppInfoItem;->handleInterrupt(Lcom/zte/update/data/DownloadInfo;)V

    .line 313
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 314
    return-void
.end method

.method private handleProgressUpdate(Lcom/zte/update/data/DownloadInfo;)V
    .locals 4
    .parameter "downloadInfo"

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    invoke-virtual {v0}, Lcom/zte/update/ui/OptionButton;->setPause()V

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 322
    invoke-virtual {p0, v1}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 323
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/update/ui/page/AppInfoItem;->refreshProgressInfo(JJ)V

    .line 325
    return-void
.end method

.method private handleWaitingDownload()V
    .locals 2

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showProgressInfo(Z)V

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->showAppSubInfo(Z)V

    .line 344
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    return-void
.end method

.method private initItemListener()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/zte/update/ui/page/AppInfoItem$1;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/page/AppInfoItem$1;-><init>(Lcom/zte/update/ui/page/AppInfoItem;)V

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 97
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appIconImg:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appLable:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSubInfo:Landroid/view/View;

    .line 101
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appVersionName:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSize:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressInfo:Landroid/view/View;

    .line 105
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->percent:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressStatus:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressBar:Landroid/widget/ProgressBar;

    .line 109
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/update/ui/OptionButton;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    .line 110
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->optBtn:Lcom/zte/update/ui/OptionButton;

    new-instance v1, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/page/AppInfoItem$OptionButtonOnClickListner;-><init>(Lcom/zte/update/ui/page/AppInfoItem;)V

    invoke-virtual {v0, v1}, Lcom/zte/update/ui/OptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->diffSizeLayout:Landroid/widget/LinearLayout;

    .line 113
    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->diffSize:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->allSize:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->installing:Landroid/widget/ProgressBar;

    .line 118
    return-void
.end method

.method private refreshProgressInfo(JJ)V
    .locals 4
    .parameter "current"
    .parameter "total"

    .prologue
    .line 329
    invoke-static {p1, p2, p3, p4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->caculatPersent(JJ)I

    move-result v1

    .line 330
    .local v1, percentNum:I
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-static {p1, p2}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getSpaceFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-static {p3, p4}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getSpaceFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    iget-object v2, p0, Lcom/zte/update/ui/page/AppInfoItem;->percent:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method


# virtual methods
.method protected displayAllSize(Lcom/zte/update/data/DownloadInfo;)V
    .locals 3
    .parameter "downloadInfo"

    .prologue
    .line 169
    const-string v0, "0M"

    .line 170
    .local v0, size:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getDownloadTotalSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/zte/aliveupdate/common/utils/CommonUtil;->getSpaceFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSize:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->diffSizeLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public displayAppInfo()V
    .locals 12

    .prologue
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v7, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-static {v7}, Lcom/zte/update/ui/UiCommonUtil;->getRequestInfo(Ljava/lang/Object;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v3

    .line 124
    .local v3, requestInfo:Lcom/zte/update/data/RequestAppInfo;
    iget-object v7, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-static {v7}, Lcom/zte/update/ui/UiCommonUtil;->getCacheAppInfo(Ljava/lang/Object;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v0

    .line 125
    .local v0, cacheAppInfo:Lcom/zte/update/data/CacheAppInfo;
    iget-object v7, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-static {v7}, Lcom/zte/update/ui/UiCommonUtil;->getDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v1

    .line 129
    .local v1, downloadInfo:Lcom/zte/update/data/DownloadInfo;
    invoke-virtual {v3}, Lcom/zte/update/data/RequestAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/update/ui/page/AppInfoItem;->appIconImg:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/zte/update/ui/page/AppInfoItem;->appLable:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v8, v9}, Lcom/zte/update/ui/page/AppInfoItem;->initAppIconAndLable(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 131
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v6, updateVersion:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/zte/update/data/RequestAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 135
    .local v4, start:I
    invoke-virtual {v0}, Lcom/zte/update/data/CacheAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 138
    .local v2, end:I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v5, style:Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v8, 0xff

    const/16 v9, 0x1a

    const/16 v10, 0x90

    const/16 v11, 0x12

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x22

    invoke-virtual {v5, v7, v4, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    iget-object v7, p0, Lcom/zte/update/ui/page/AppInfoItem;->appVersionName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0}, Lcom/zte/update/data/CacheAppInfo;->getPatchSize()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Lcom/zte/update/ui/page/AppInfoItem;->displayAllSize(Lcom/zte/update/data/DownloadInfo;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->displayDiffsize(Lcom/zte/update/data/CacheAppInfo;)V

    goto :goto_0
.end method

.method public handleStatus()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->downloadInfo:Lcom/zte/update/data/DownloadInfo;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/zte/update/data/DataManager;->getInstance()Lcom/zte/update/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->mainKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/zte/update/data/DataManager;->loadDownloadInfo(Ljava/lang/Object;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->downloadInfo:Lcom/zte/update/data/DownloadInfo;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->downloadInfo:Lcom/zte/update/data/DownloadInfo;

    invoke-virtual {p0, v0}, Lcom/zte/update/ui/page/AppInfoItem;->handleStatus(Lcom/zte/update/data/DownloadInfo;)V

    .line 92
    return-void
.end method

.method public handleStatus(Lcom/zte/update/data/DownloadInfo;)V
    .locals 1
    .parameter "downloadInfo"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleInstallSuccessful()V

    .line 232
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/zte/update/data/DownloadInfo;->getStatus()I

    move-result v0

    .line 203
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 219
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleNormal()V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleWaitingDownload()V

    goto :goto_0

    .line 209
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/zte/update/ui/page/AppInfoItem;->handleInterrupt(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0

    .line 212
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/zte/update/ui/page/AppInfoItem;->handlePause(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0

    .line 215
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/zte/update/ui/page/AppInfoItem;->handleProgressUpdate(Lcom/zte/update/data/DownloadInfo;)V

    goto :goto_0

    .line 222
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleInstalling()V

    goto :goto_0

    .line 225
    :pswitch_7
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleInstallSuccessful()V

    goto :goto_0

    .line 228
    :pswitch_8
    invoke-direct {p0}, Lcom/zte/update/ui/page/AppInfoItem;->handleInstallFail()V

    goto :goto_0

    .line 203
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

.method protected showAppSubInfo(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSubInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->appSubInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIgnoreDialog()V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070001

    new-instance v2, Lcom/zte/update/ui/page/AppInfoItem$3;

    invoke-direct {v2, p0}, Lcom/zte/update/ui/page/AppInfoItem$3;-><init>(Lcom/zte/update/ui/page/AppInfoItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 426
    return-void
.end method

.method public showItemCancelDialog()V
    .locals 3

    .prologue
    .line 403
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/update/ui/page/AppInfoItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/high16 v1, 0x7f07

    new-instance v2, Lcom/zte/update/ui/page/AppInfoItem$2;

    invoke-direct {v2, p0}, Lcom/zte/update/ui/page/AppInfoItem$2;-><init>(Lcom/zte/update/ui/page/AppInfoItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 413
    return-void
.end method

.method protected showProgressInfo(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/zte/update/ui/page/AppInfoItem;->progressInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
