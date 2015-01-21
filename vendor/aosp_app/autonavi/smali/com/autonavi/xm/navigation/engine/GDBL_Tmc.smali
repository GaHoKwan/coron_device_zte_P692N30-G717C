.class public Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/util/HttpHandler$Callback;


# static fields
.field private static final MAX_BUFFER_BYTES:I = 0x200

.field private static final REQUEST_CODE_DOWNLOAD:I = 0x1

.field private static final REQUEST_CODE_LOGIN:I = 0x0

.field private static final RETRY_DELAY_MILLIS:I = 0x4e20

.field private static final WHAT_DOWNLOAD:I = 0x3

.field private static final WHAT_LOGIN:I = 0x2

.field private static final WHAT_ON_LOGIN_RESULT:I = 0x5

.field private static final WHAT_PROCESS:I = 0x4

.field private static mGDBL_Tmc:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;


# instance fields
.field private downloadCallbackResultCount:I

.field private downloadCount:I

.field private downloadResultCount:I

.field private mCurAdminCode:I

.field private mHttpHandler:Lcom/autonavi/xm/util/HttpHandler;

.field private mIsLogin:Z

.field private mIsPrepared:Z

.field private mIsRunning:Z

.field private mServerHost:Ljava/lang/String;

.field private mServerPort:I

.field private mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

.field private mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

.field private mUpdatePeriod:J


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsPrepared:Z

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mUpdatePeriod:J

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerPort:I

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    iput-boolean v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsLogin:Z

    iput v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mCurAdminCode:I

    iput v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->downloadCount:I

    iput v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->downloadResultCount:I

    iput v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->downloadCallbackResultCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Lcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->onLoginResult(Lcom/autonavi/xm/navigation/server/GStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->login(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mUpdatePeriod:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->download(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->process(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->makeRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/util/HttpHandler;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mHttpHandler:Lcom/autonavi/xm/util/HttpHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mCurAdminCode:I

    return v0
.end method

.method static synthetic access$900(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsLogin:Z

    return v0
.end method

.method static synthetic access$902(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsLogin:Z

    return p1
.end method

.method private download(J)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mGDBL_Tmc:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mGDBL_Tmc:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mGDBL_Tmc:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private login(J)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private makeRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onLoginResult(Lcom/autonavi/xm/navigation/server/GStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private prepare()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsPrepared:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_Prepare()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    new-array v1, v5, [I

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_GetFrequency([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_0

    aget v0, v1, v4

    if-lez v0, :cond_2

    aget v0, v1, v4

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mUpdatePeriod:J

    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    new-array v2, v5, [I

    invoke-static {v1, v2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_GetURL([Ljava/lang/String;[I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v3, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v3, :cond_0

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerHost:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerHost:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerHost:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerHost:Ljava/lang/String;

    :cond_3
    aget v1, v2, v4

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerPort:I

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerPort:I

    if-gtz v1, :cond_4

    const/16 v1, 0x50

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mServerPort:I

    :cond_4
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mHttpHandler:Lcom/autonavi/xm/util/HttpHandler;

    if-nez v1, :cond_5

    new-instance v1, Lcom/autonavi/xm/util/HttpHandler;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/util/HttpHandler;-><init>(Lcom/autonavi/xm/util/HttpHandler$Callback;)V

    iput-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mHttpHandler:Lcom/autonavi/xm/util/HttpHandler;

    :cond_5
    iput-boolean v5, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsPrepared:Z

    goto :goto_0
.end method

.method private process(J)V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_IsSupport()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_SUPPORT:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_Close()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsPrepared:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_Release()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_Close()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->removeMessages(I)V

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_Close()Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_Open()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsPrepared:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->prepare()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->process(J)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public GDBL_SelectCity(I)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetAdareaInfoEx(I[Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    iget-boolean v0, v0, Lcom/autonavi/xm/navigation/server/poi/GAdareaInfoEx;->bHasData:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NO_DATA:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_1
    new-array v1, v4, [I

    aput p1, v1, v3

    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_SelectCity([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_RUNNING:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_3

    :cond_2
    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    aget v1, v1, v3

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mCurAdminCode:I

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mCurAdminCode:I

    goto :goto_0
.end method

.method public GDBL_SetCallback(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_Update()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 2

    iget-boolean v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_START:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->process(J)V

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_IsSupport()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_NOT_SUPPORT:Lcom/autonavi/xm/navigation/server/GStatus;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0
.end method

.method public onError(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    new-instance v1, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$3;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 4

    const/16 v1, 0x200

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    new-instance v2, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;I[B)V

    invoke-virtual {v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResponseFailed(II)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;

    new-instance v1, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;II)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
