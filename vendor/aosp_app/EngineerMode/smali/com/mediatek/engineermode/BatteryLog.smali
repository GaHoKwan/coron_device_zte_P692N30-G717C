.class public Lcom/mediatek/engineermode/BatteryLog;
.super Landroid/app/Activity;
.source "BatteryLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final DELAY_TIME:I = 0x3e8

.field private static final EVENT_LOG_RECORD:I = 0x2

.field private static final EVENT_TICK:I = 0x1

.field private static final FORMART_UPTIME:I = 0x3e8

.field private static final HEALTH:Ljava/lang/String; = "health"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final MAGIC_NUMBER_TEN:I = 0xa

.field private static final MAX_NUMBER:I = 0x64

.field private static final MAX_NUMBER_LENGTH:I = 0x3

.field private static final PLUGGED:Ljava/lang/String; = "plugged"

.field private static final SCALE:Ljava/lang/String; = "scale"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "EM-BatteryLog"

.field private static final TEMPERATURE:Ljava/lang/String; = "temperature"

.field private static final VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private mBatteryLogFile:Ljava/io/File;

.field private final mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentFilterSDCard:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mIntervalEdit:Landroid/widget/EditText;

.field private mIsRecording:Z

.field private mLevel:Landroid/widget/TextView;

.field private mLogFile:Ljava/io/File;

.field public mLogHandler:Landroid/os/Handler;

.field private mLogRecord:Landroid/widget/Button;

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
    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Lcom/mediatek/engineermode/BatteryLog$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/BatteryLog$1;-><init>(Lcom/mediatek/engineermode/BatteryLog;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcom/mediatek/engineermode/BatteryLog$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/BatteryLog$2;-><init>(Lcom/mediatek/engineermode/BatteryLog;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lcom/mediatek/engineermode/BatteryLog$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/BatteryLog$3;-><init>(Lcom/mediatek/engineermode/BatteryLog;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 384
    new-instance v0, Lcom/mediatek/engineermode/BatteryLog$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/BatteryLog$4;-><init>(Lcom/mediatek/engineermode/BatteryLog;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mUptime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/BatteryLog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecordInterval:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/BatteryLog;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mScale:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mVoltage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/BatteryLog;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/BatteryLog;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mTechnology:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/BatteryLog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mHealth:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/BatteryLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/BatteryLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z

    return p1
.end method

.method private tenthsToFixedString(I)Ljava/lang/String;
    .locals 4
    .parameter "x"

    .prologue
    .line 135
    div-int/lit8 v0, p1, 0xa

    .line 136
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
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "arg0"

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 301
    iget-boolean v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z

    if-nez v9, :cond_8

    .line 302
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "removed"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bad_removal"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "unmounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 305
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "SD Card not available"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    const-string v9, "Please insert an SD Card."

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    const-string v9, "OK"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 382
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, state:Ljava/lang/String;
    const-string v9, "EM-BatteryLog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Environment.getExternalStorageState() is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "shared"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 317
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "sdcard is busy"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    const-string v9, "Sorry, your SD card is busy."

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 320
    const-string v9, "OK"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 327
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v9, 0x3

    iget-object v10, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_4

    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 329
    :cond_4
    const-string v9, "The input is not correct. Please input the number between 1 and 100."

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 333
    :cond_5
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x64

    if-gt v9, v10, :cond_6

    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    .line 335
    :cond_6
    const-string v9, "The input is not correct. Please input the number between 1 and 100."

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 339
    :cond_7
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecordInterval:I

    .line 340
    const-string v9, "EM-BatteryLog"

    iget v10, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecordInterval:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    const v10, 0x7f080043

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 346
    .local v6, rightNow:Ljava/util/Calendar;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMddhhmmss"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 347
    .local v5, fmt:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, sysDateTime:Ljava/lang/String;
    const-string v3, ""

    .line 349
    .local v3, fileName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    const-string v9, "EM-BatteryLog"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "batterylog"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogFile:Ljava/io/File;

    .line 357
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 358
    const-string v0, "Battery status, level, scale, health, voltage, temperature, technology, time since boot:\n"

    .line 360
    .local v0, batteryInfoLable:Ljava/lang/String;
    new-instance v4, Ljava/io/FileWriter;

    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogFile:Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 361
    .local v4, fileWriter:Ljava/io/FileWriter;
    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 363
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v0           #batteryInfoLable:Ljava/lang/String;
    .end local v4           #fileWriter:Ljava/io/FileWriter;
    :goto_1
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 370
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z

    goto/16 :goto_0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v2           #e1:Ljava/io/IOException;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #fmt:Ljava/text/SimpleDateFormat;
    .end local v6           #rightNow:Ljava/util/Calendar;
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #sysDateTime:Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    const v10, 0x7f080042

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogHandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 374
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mediatek/engineermode/BatteryLog;->mIsRecording:Z

    .line 375
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "BatteryLog Saved"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 377
    const-string v9, "BatteryLog has been saved under /sdcard/batterylog."

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 378
    const-string v9, "OK"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 228
    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    .line 229
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 230
    const-string v1, "EM-BatteryLog"

    const-string v2, "clocwork worked..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecord:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilter:Landroid/content/IntentFilter;

    .line 238
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    .line 241
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 249
    const/16 v1, 0x2710

    iput v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mLogRecordInterval:I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, sdcard:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 253
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

    iput-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mBatteryLogFile:Ljava/io/File;

    .line 254
    const-string v1, "EM-BatteryLog"

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

    .line 255
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mBatteryLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mBatteryLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 288
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mStatus:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mLevel:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mScale:Landroid/widget/TextView;

    .line 268
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mHealth:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mTechnology:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mVoltage:Landroid/widget/TextView;

    .line 271
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mTemperature:Landroid/widget/TextView;

    .line 272
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mUptime:Landroid/widget/TextView;

    .line 273
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    .line 274
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntervalEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 275
    const-string v0, "EM-BatteryLog"

    const-string v1, "clocwork worked..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 281
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentReceiverSDCard:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/engineermode/BatteryLog;->mIntentFilterSDCard:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    return-void
.end method
