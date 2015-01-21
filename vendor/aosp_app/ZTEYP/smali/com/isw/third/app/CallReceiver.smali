.class public Lcom/isw/third/app/CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCallReceiver"

.field private static action:Ljava/lang/String;

.field public static bCallDuration:Z

.field public static callEstablishDate:Ljava/util/Date;

.field public static ccShowActive:Z

.field public static ccshowDurationTime:I

.field public static dm:Landroid/util/DisplayMetrics;

.field private static incomingPhone:Ljava/lang/String;

.field private static outgoingPhone:Ljava/lang/String;

.field private static state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/isw/third/app/CallReceiver;->action:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/isw/third/app/CallReceiver;->state:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/isw/third/app/CallReceiver;->incomingPhone:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/isw/third/app/CallReceiver;->outgoingPhone:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lcom/isw/third/app/CallReceiver;->ccShowActive:Z

    .line 29
    sput-object v2, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isw/third/app/CallReceiver;->bCallDuration:Z

    .line 52
    sput-object v2, Lcom/isw/third/app/CallReceiver;->callEstablishDate:Ljava/util/Date;

    .line 57
    sput v1, Lcom/isw/third/app/CallReceiver;->ccshowDurationTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    sput-object p0, Lcom/isw/third/app/CallReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    sput-object p0, Lcom/isw/third/app/CallReceiver;->state:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-object p0, Lcom/isw/third/app/CallReceiver;->incomingPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    sput-object p0, Lcom/isw/third/app/CallReceiver;->outgoingPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/isw/third/app/CallReceiver;->incomingPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/isw/third/app/CallReceiver;->outgoingPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/isw/third/app/CallReceiver;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/isw/third/app/CallReceiver;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-static {p0, p1, p2}, Lcom/isw/third/app/CallReceiver;->activeCCShowService(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized activeCCShowService(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 6
    .parameter "phoneNumber"
    .parameter "callCurrentStatus"
    .parameter "context"

    .prologue
    .line 242
    const-class v3, Lcom/isw/third/app/CallReceiver;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const-string v2, "MiniCallReceiver"

    .line 244
    const-string v4, "Warning! phoneNumber is empty, do not dislpay ccshow"

    .line 243
    invoke-static {v2, v4}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :goto_0
    monitor-exit v3

    return-void

    .line 248
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/isw/third/app/CallReceiver;->ccShowActive:Z

    if-eqz v2, :cond_1

    .line 249
    const-string v2, "MiniCallReceiver"

    .line 250
    const-string v4, "Warning! ccShowActive is true, do not dislpay ccshow"

    .line 249
    invoke-static {v2, v4}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 264
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/isw/android/corp/telephony/CallUtil;->initCompanyCall(Ljava/lang/String;)V

    .line 269
    sget v2, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 270
    const-string v2, "MiniCallReceiver"

    const-string v4, "Warning! Current call is idle status!"

    invoke-static {v2, v4}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    const-string v2, "MiniCallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 277
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    const-string v2, "MiniCallReceiver"

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Warning! previousPhone["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 281
    const-string v5, "] is not same with currentPhone["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 282
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->getCurrentPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {v2, v4}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 368
    :catch_1
    move-exception v0

    .line 369
    .local v0, err:Ljava/lang/Error;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 370
    const-string v2, "MiniCallReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "err: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 307
    .end local v0           #err:Ljava/lang/Error;
    :cond_3
    const/4 v2, 0x1

    :try_start_6
    sput-boolean v2, Lcom/isw/third/app/CallReceiver;->ccShowActive:Z

    .line 309
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    sput-object v2, Lcom/isw/android/corp/telephony/CallHistoryRecord;->beginDate:Ljava/util/Date;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private static adapterWidthScreen(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, bAdapter:Z
    sget-object v2, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    .line 396
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sput-object v2, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    .line 398
    const-string v2, "MiniCallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dm.widthPixels:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 399
    const-string v4, "dm.heightPixels"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    const-string v1, ":240:320:480:540:640:720:800:854:960:1280"

    .line 404
    .local v1, range:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    .line 407
    :cond_1
    const-string v2, "MiniCallReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Warning, the screen width["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/isw/third/app/CallReceiver;->dm:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 408
    const-string v4, "] does not adapter!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    new-instance v0, Lcom/isw/third/app/CallReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/isw/third/app/CallReceiver$1;-><init>(Lcom/isw/third/app/CallReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 234
    invoke-virtual {v0}, Lcom/isw/third/app/CallReceiver$1;->start()V

    .line 235
    return-void
.end method
