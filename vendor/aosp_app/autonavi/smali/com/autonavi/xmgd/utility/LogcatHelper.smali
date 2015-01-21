.class public Lcom/autonavi/xmgd/utility/LogcatHelper;
.super Ljava/lang/Object;


# static fields
.field private static LOGCAT_PATH:Ljava/lang/String;

.field private static final TRACE_PATH:Ljava/lang/String;

.field private static mInstance:Lcom/autonavi/xmgd/utility/LogcatHelper;


# instance fields
.field private mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

.field private mPId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traces"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/utility/LogcatHelper;->TRACE_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mInstance:Lcom/autonavi/xmgd/utility/LogcatHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/utility/LogcatHelper;->init(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mPId:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autonavi/xmgd/utility/LogcatHelper;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mInstance:Lcom/autonavi/xmgd/utility/LogcatHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/utility/LogcatHelper;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/utility/LogcatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mInstance:Lcom/autonavi/xmgd/utility/LogcatHelper;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mInstance:Lcom/autonavi/xmgd/utility/LogcatHelper;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/utility/LogcatHelper;->TRACE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/utility/LogcatHelper;->LOGCAT_PATH:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autonavi/xmgd/utility/LogcatHelper;->LOGCAT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->isAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    iget v1, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xmgd/utility/LogcatHelper;->LOGCAT_PATH:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;-><init>(Lcom/autonavi/xmgd/utility/LogcatHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;->stopLogs()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/utility/LogcatHelper;->mLogDumper:Lcom/autonavi/xmgd/utility/LogcatHelper$LogDumper;

    :cond_0
    return-void
.end method
