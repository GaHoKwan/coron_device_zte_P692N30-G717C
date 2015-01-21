.class public Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;
.super Landroid/app/Activity;
.source "ZTEVirueScanActivity.java"


# static fields
.field public static OverallScanAction:Ljava/lang/String; = null

.field public static QuickScanAction:Ljava/lang/String; = null

.field public static ScanAction:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ZTEVirueScanActivity"


# instance fields
.field private mCallbacks:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

.field private mContext:Landroid/content/Context;

.field private mDefaultView:Landroid/view/View;

.field private mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

.field private mNeedScan:Landroid/widget/TextView;

.field private mNeedUpdate:Landroid/widget/TextView;

.field private mOverallScanBtn:Landroid/widget/Button;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

.field private mQuickScanBtn:Landroid/widget/Button;

.field private mRecordData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScanResultText:Landroid/widget/TextView;

.field private mScanTimeText:Landroid/widget/TextView;

.field private mUpdateBtn:Landroid/widget/Button;

.field private mUpdatingText:Landroid/widget/TextView;

.field private mUpdatingView:Landroid/view/View;

.field private mVirusLib:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "scan_action"

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->ScanAction:Ljava/lang/String;

    .line 34
    const-string v0, "quick_scan_action"

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->QuickScanAction:Ljava/lang/String;

    .line 35
    const-string v0, "overall_scan_action"

    sput-object v0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->OverallScanAction:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .line 41
    new-instance v0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$1;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mCallbacks:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->finish()V

    .line 147
    :cond_0
    const v0, 0x7f03012d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->setContentView(I)V

    .line 148
    iput-object p0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;

    .line 159
    const v0, 0x7f0e03d2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdateBtn:Landroid/widget/Button;

    .line 160
    const v0, 0x7f0e03dd

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mQuickScanBtn:Landroid/widget/Button;

    .line 161
    const v0, 0x7f0e03df

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mOverallScanBtn:Landroid/widget/Button;

    .line 163
    const v0, 0x7f0e03e3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mScanTimeText:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0e03e4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mScanResultText:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0e03e2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mNeedScan:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0e03d6

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mVirusLib:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0e03d7

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mNeedUpdate:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0e03d5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mDefaultView:Landroid/view/View;

    .line 188
    const v0, 0x7f0e03d9

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingText:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f0e03d8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingView:Landroid/view/View;

    .line 190
    const v0, 0x7f0e03da

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 191
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 193
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .line 194
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mCallbacks:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->addEngineDataUpdateCallBacks(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;)V

    .line 196
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdateBtn:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$2;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mQuickScanBtn:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$3;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$3;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mOverallScanBtn:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$4;-><init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mCallbacks:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->removeEngineDataUpdateCallBacks(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;)V

    .line 366
    iput-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mCallbacks:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$EngineDataUpdateCallBacks;

    .line 367
    iput-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    .line 368
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 369
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getLastScanTimeStr()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, lasttime:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mScanTimeText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getLastScanTimeLong()J

    move-result-wide v2

    .line 293
    .local v2, t:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x240c8400

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 294
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mNeedScan:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :goto_1
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    if-nez v4, :cond_1

    .line 302
    new-instance v4, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    .line 304
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mQScanInfoDao:Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;

    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->getVirusRecord()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mRecordData:Ljava/util/List;

    .line 305
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mRecordData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mScanResultText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mRecordData:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/QScanInfoDao;->getVirusRecordString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_2
    invoke-static {v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkVirusList(Z)I

    .line 360
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 361
    return-void

    .line 287
    .end local v2           #t:J
    :cond_3
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0a01e9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, scantime:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mScanTimeText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mScanTimeText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    .end local v1           #scantime:Ljava/lang/String;
    .restart local v2       #t:J
    :cond_4
    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mNeedScan:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method setCheckingUI()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mDefaultView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingText:Landroid/widget/TextView;

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdateBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    return-void
.end method

.method setDefaultUI(I)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 90
    const/16 v1, -0x80e

    if-ne p1, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0084

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mDefaultView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v1, 0x7f0a01e4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->getVirusLibTimeString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, viruslib:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mVirusLib:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mNeedUpdate:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdateBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    return-void

    .line 92
    .end local v0           #viruslib:Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0243

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method setUpdatingUI(I)V
    .locals 2
    .parameter "info"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mDefaultView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdatingText:Landroid/widget/TextView;

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mUpdateBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    return-void
.end method
