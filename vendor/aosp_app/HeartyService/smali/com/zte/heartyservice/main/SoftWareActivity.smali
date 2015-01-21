.class public Lcom/zte/heartyservice/main/SoftWareActivity;
.super Landroid/app/Activity;
.source "SoftWareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_UPDATABLE_SUM_CHANGE:Ljava/lang/String; = "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

.field private static final DELAY:J = 0x32L

.field private static final LEVEL:I = 0x50

.field private static final NEXT_LEVEL:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoftWareActivity"


# instance fields
.field private batteryIntent:Landroid/content/Intent;

.field private currentLevel1:I

.field private currentLevel2:I

.field private dataBackup:Landroid/view/View;

.field private defaultProgress:Landroid/view/View;

.field private delta1:I

.field private delta2:I

.field private extStorageBar:Landroid/widget/ProgressBar;

.field private extStorageTotal:Landroid/widget/TextView;

.field private installPackage:Landroid/view/View;

.field private installedSofrware:Landroid/view/View;

.field private intercepted_phone_msg:I

.field private intercepted_phone_num:I

.field private mHandler:Landroid/os/Handler;

.field private mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

.field private mSoftwareUpdate:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private max1:I

.field private max2:I

.field private moveApp:Landroid/view/View;

.field private phoneSpeeding:Landroid/view/View;

.field private privacy_calllog_num:I

.field private privacy_msg_num:I

.field private progress1:I

.field private progress2:I

.field private softSubLayout:Landroid/view/View;

.field private storageBar:Landroid/widget/ProgressBar;

.field private storageTotal:Landroid/widget/TextView;

.field private versionUpdate:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->intercepted_phone_num:I

    .line 78
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->intercepted_phone_msg:I

    .line 79
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->privacy_msg_num:I

    .line 80
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->privacy_calllog_num:I

    .line 82
    iput-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->batteryIntent:Landroid/content/Intent;

    .line 94
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    .line 95
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    .line 96
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    .line 97
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    .line 98
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    .line 99
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    .line 100
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta1:I

    .line 101
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta2:I

    .line 106
    iput-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    .line 113
    new-instance v0, Lcom/zte/heartyservice/main/SoftWareActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/SoftWareActivity$1;-><init>(Lcom/zte/heartyservice/main/SoftWareActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v0, Lcom/zte/heartyservice/main/SoftWareActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/SoftWareActivity$2;-><init>(Lcom/zte/heartyservice/main/SoftWareActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/SoftWareActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/SoftWareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->nextLevel()V

    return-void
.end method

.method private eventInit()V
    .locals 2

    .prologue
    .line 241
    const v0, 0x7f0e0371

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->softSubLayout:Landroid/view/View;

    .line 243
    const v0, 0x7f0e0372

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->installedSofrware:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->installedSofrware:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const v0, 0x7f0e0374

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->installPackage:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->installPackage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v0, 0x7f0e03be

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->phoneSpeeding:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->phoneSpeeding:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0e0375

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->defaultProgress:Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->defaultProgress:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x7f0e0376

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->dataBackup:Landroid/view/View;

    .line 257
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->dataBackup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :goto_0
    const v0, 0x7f0e0377

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->versionUpdate:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->versionUpdate:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v0, 0x7f0e0373

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->moveApp:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->moveApp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v0, 0x7f0e03bf

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageTotal:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f0e03c1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageTotal:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0e03c0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageBar:Landroid/widget/ProgressBar;

    .line 280
    const v0, 0x7f0e03c2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageBar:Landroid/widget/ProgressBar;

    .line 282
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->dataBackup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private nextLevel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta1:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    .line 312
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta2:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    .line 314
    const v0, 0x3e4ccccd

    .line 315
    .local v0, delayRate:F
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    add-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 316
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 318
    mul-float/2addr v0, v0

    .line 319
    mul-float/2addr v0, v0

    .line 320
    const v1, 0x3e4ccccd

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 321
    const v0, 0x3e4ccccd

    .line 327
    :cond_0
    :goto_0
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    if-lt v1, v2, :cond_2

    .line 328
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 329
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 344
    :goto_1
    return-void

    .line 322
    :cond_1
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 323
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 333
    :cond_2
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    if-ge v1, v2, :cond_3

    .line 334
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 338
    :goto_2
    iget v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    if-ge v1, v2, :cond_4

    .line 339
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 343
    :goto_3
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x4248

    mul-float/2addr v2, v0

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3
.end method

.method private startAnim()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 347
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    div-int/2addr v3, v4

    if-ge v3, v6, :cond_0

    .line 348
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    .line 350
    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    div-int/2addr v3, v4

    if-ge v3, v6, :cond_1

    .line 351
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    .line 354
    :cond_1
    iput v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel1:I

    .line 355
    iput v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->currentLevel2:I

    .line 357
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    div-int/lit8 v3, v3, 0x50

    iput v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta1:I

    .line 358
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    div-int/lit8 v3, v3, 0x50

    iput v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta2:I

    .line 359
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    div-int/lit16 v3, v3, 0xf0

    if-lez v3, :cond_4

    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    div-int/lit16 v0, v3, 0xf0

    .line 360
    .local v0, minDelta1:I
    :goto_0
    iget v3, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    div-int/lit16 v3, v3, 0xf0

    if-lez v3, :cond_5

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    div-int/lit16 v1, v2, 0xf0

    .line 362
    .local v1, minDelta2:I
    :goto_1
    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta1:I

    if-ge v2, v0, :cond_2

    .line 363
    iput v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta1:I

    .line 365
    :cond_2
    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta2:I

    if-ge v2, v1, :cond_3

    .line 366
    iput v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->delta2:I

    .line 369
    :cond_3
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->nextLevel()V

    .line 370
    return-void

    .end local v0           #minDelta1:I
    .end local v1           #minDelta2:I
    :cond_4
    move v0, v2

    .line 359
    goto :goto_0

    .restart local v0       #minDelta1:I
    :cond_5
    move v1, v2

    .line 360
    goto :goto_1
.end method

.method private stopAnim()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    return-void
.end method

.method private updateStorageInfo()V
    .locals 14

    .prologue
    .line 286
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/SDUtils;->getSDSize(Ljava/io/File;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130

    div-double v6, v8, v10

    .line 287
    .local v6, iTotal:D
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130

    div-double v4, v8, v10

    .line 288
    .local v4, iAvail:D
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/SDUtils;->getSDSize(Ljava/io/File;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130

    div-double v2, v8, v10

    .line 289
    .local v2, eTotal:D
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130

    div-double v0, v8, v10

    .line 291
    .local v0, eAvail:D
    double-to-int v8, v6

    iput v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    .line 292
    double-to-int v8, v2

    iput v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    .line 293
    iget-object v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageBar:Landroid/widget/ProgressBar;

    iget v9, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max1:I

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 294
    iget-object v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageBar:Landroid/widget/ProgressBar;

    iget v9, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->max2:I

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 296
    sub-double v8, v6, v4

    double-to-int v8, v8

    iput v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress1:I

    .line 297
    sub-double v8, v2, v0

    double-to-int v8, v8

    iput v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->progress2:I

    .line 299
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->startAnim()V

    .line 301
    iget-object v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->storageTotal:Landroid/widget/TextView;

    const v9, 0x7f0a03c7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-double v12, v6, v4

    invoke-virtual {p0, v12, v13}, Lcom/zte/heartyservice/main/SoftWareActivity;->getStorageDisplayString(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/main/SoftWareActivity;->getStorageDisplayString(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/zte/heartyservice/main/SoftWareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v8, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->extStorageTotal:Landroid/widget/TextView;

    const v9, 0x7f0a03c8

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-double v12, v2, v0

    invoke-virtual {p0, v12, v13}, Lcom/zte/heartyservice/main/SoftWareActivity;->getStorageDisplayString(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->getStorageDisplayString(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/zte/heartyservice/main/SoftWareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method


# virtual methods
.method public getDivisionValue(DD)D
    .locals 6
    .parameter "divisor"
    .parameter "dividend"

    .prologue
    .line 480
    const-wide/16 v0, 0x0

    .line 482
    .local v0, accurateValue:D
    div-double v0, p1, p3

    .line 483
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 484
    .local v2, mValue:Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    return-wide v3
.end method

.method public getStorageDisplayString(D)Ljava/lang/String;
    .locals 5
    .parameter "initialValue"

    .prologue
    const-wide/high16 v3, 0x4090

    .line 470
    const-wide/16 v0, 0x0

    .line 471
    .local v0, accurateValue:D
    cmpl-double v2, p1, v3

    if-lez v2, :cond_0

    .line 472
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/zte/heartyservice/main/SoftWareActivity;->getDivisionValue(DD)D

    move-result-wide v0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    :goto_0
    return-object v2

    .line 475
    :cond_0
    const-wide/high16 v2, 0x3ff0

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/zte/heartyservice/main/SoftWareActivity;->getDivisionValue(DD)D

    move-result-wide v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 191
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 192
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 195
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 196
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 382
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 383
    .local v4, viewId:I
    sparse-switch v4, :sswitch_data_0

    .line 465
    :goto_0
    return-void

    .line 388
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.zte.heartyservice.intent.action.startActivity.INSTALLED_SOFTWARE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 402
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "com.zte.heartyservice.intent.action.startActivity.PACKAGE_MANAGEMENT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 405
    :catch_1
    move-exception v0

    .line 406
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "com.zte.heartyservice.intent.action.startActivity.DEFAULT_APPLICATION"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 417
    :catch_2
    move-exception v0

    .line 418
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "com.zte.heartyservice.intent.action.startActivity.SPEED_UP"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 429
    :catch_3
    move-exception v0

    .line 430
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 437
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 438
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "com.zte.heartyservice.intent.action.startApk.CLOUDBACKUP"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->startActivity(Landroid/content/Intent;)V

    .line 441
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 442
    :catch_4
    move-exception v0

    .line 443
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "com.zte.backup.mmi"

    invoke-static {p0, v5}, Lcom/zte/heartyservice/common/utils/AppUtils;->bkupFbkNotInstallDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_5
    new-instance v2, Lcom/zte/heartyservice/main/MarketApi;

    invoke-virtual {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/zte/heartyservice/main/MarketApi;-><init>(Landroid/content/Context;)V

    .line 451
    .local v2, m:Lcom/zte/heartyservice/main/MarketApi;
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    .line 452
    .local v3, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-virtual {v3, v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSumRead(I)V

    .line 453
    iget-object v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v5}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 454
    invoke-virtual {v2, v6}, Lcom/zte/heartyservice/main/MarketApi;->sendTencentAction(Z)V

    goto/16 :goto_0

    .line 460
    .end local v2           #m:Lcom/zte/heartyservice/main/MarketApi;
    .end local v3           #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0372 -> :sswitch_0
        0x7f0e0373 -> :sswitch_6
        0x7f0e0374 -> :sswitch_1
        0x7f0e0375 -> :sswitch_2
        0x7f0e0376 -> :sswitch_4
        0x7f0e0377 -> :sswitch_5
        0x7f0e03be -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const v1, 0x7f030108

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->setContentView(I)V

    .line 171
    const v1, 0x7f0e0378

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    .line 172
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    .line 173
    .local v0, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v1

    if-lez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v0           #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->eventInit()V

    .line 186
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 187
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/main/SoftWareActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void

    .line 179
    .restart local v0       #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 183
    .end local v0           #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :cond_1
    const v1, 0x7f030107

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->stopAnim()V

    .line 235
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/zte/heartyservice/main/SoftWareActivity;->updateStorageInfo()V

    .line 203
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/zte/heartyservice/main/SoftWareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    const-string v0, "qqplaza.intent.action.GET_UPDATABLE_SUM"

    .line 209
    .local v0, ACTION_GET_UPDATABLE_SUM:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v4, updateintent:Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/main/SoftWareActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v2

    .line 214
    .local v2, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-virtual {v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSum()I

    move-result v3

    .line 215
    .local v3, sum:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    if-lez v3, :cond_1

    .line 219
    const-string v5, "SoftWareActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " netSettingDatas.getUpdateSum()  ==========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v5, p0, Lcom/zte/heartyservice/main/SoftWareActivity;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
