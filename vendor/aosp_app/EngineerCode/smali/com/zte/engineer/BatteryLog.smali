.class public Lcom/zte/engineer/BatteryLog;
.super Landroid/app/Activity;
.source "BatteryLog.java"


# static fields
.field private static final EVENT_LOG_RECORD:I = 0x2

.field private static final EVENT_TICK:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private batterylog:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentFilterSDCard:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mIsRecording:Z

.field private mLevel:Landroid/widget/TextView;

.field private mLogFile:Ljava/io/File;

.field public mLogHandler:Landroid/os/Handler;

.field private mLogRecordInterval:I

.field private mScale:Landroid/widget/TextView;

.field private mStatus:Landroid/widget/TextView;

.field private mTechnology:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUptime:Landroid/widget/TextView;

.field private mVoltage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/16 v0, 0x2710

    iput v0, p0, Lcom/zte/engineer/BatteryLog;->mLogRecordInterval:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/BatteryLog;->mIsRecording:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->batterylog:Ljava/io/File;

    .line 90
    const-string v0, "EM-BatteryLog"

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/zte/engineer/BatteryLog$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BatteryLog$1;-><init>(Lcom/zte/engineer/BatteryLog;)V

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/zte/engineer/BatteryLog$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BatteryLog$2;-><init>(Lcom/zte/engineer/BatteryLog;)V

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/zte/engineer/BatteryLog$3;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BatteryLog$3;-><init>(Lcom/zte/engineer/BatteryLog;)V

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 318
    new-instance v0, Lcom/zte/engineer/BatteryLog$4;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BatteryLog$4;-><init>(Lcom/zte/engineer/BatteryLog;)V

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mLogHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mUptime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/engineer/BatteryLog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/engineer/BatteryLog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/zte/engineer/BatteryLog;->mLogRecordInterval:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/engineer/BatteryLog;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mScale:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mVoltage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/engineer/BatteryLog;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/zte/engineer/BatteryLog;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mTechnology:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/engineer/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mHealth:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/engineer/BatteryLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/zte/engineer/BatteryLog;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$902(Lcom/zte/engineer/BatteryLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/zte/engineer/BatteryLog;->mIsRecording:Z

    return p1
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .locals 4
    .parameter "x"

    .prologue
    .line 121
    div-int/lit8 v0, p1, 0xa

    .line 122
    .local v0, tens:I
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0xa

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 360
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 256
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 257
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    .line 260
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, sdcard:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/batterylog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zte/engineer/BatteryLog;->batterylog:Ljava/io/File;

    .line 272
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/batterylog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->batterylog:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->batterylog:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 279
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 311
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 284
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mStatus:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mLevel:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mScale:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mHealth:Landroid/widget/TextView;

    .line 290
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mTechnology:Landroid/widget/TextView;

    .line 291
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mVoltage:Landroid/widget/TextView;

    .line 292
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mTemperature:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/engineer/BatteryLog;->mUptime:Landroid/widget/TextView;

    .line 301
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 303
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    iget-object v0, p0, Lcom/zte/engineer/BatteryLog;->mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/zte/engineer/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    return-void
.end method
