.class public Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;
.super Ljava/lang/Object;
.source "NfcCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$1;,
        Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;
    }
.end annotation


# static fields
.field private static final QUEUE_SIZE:I = 0x32

.field private static sInstance:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;


# instance fields
.field private mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mediatek/engineermode/hqanfc/NfcCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumerThr:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    .line 31
    const-string v0, "EM/HQA/NFC"

    const-string v1, "[NfcCommandHandler]NfcCommandHandler NfcCommandHandler()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;-><init>(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mConsumerThr:Ljava/lang/Thread;

    .line 34
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mConsumerThr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;Lcom/mediatek/engineermode/hqanfc/NfcCommand;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->processCommand(Lcom/mediatek/engineermode/hqanfc/NfcCommand;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    const-class v1, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    .line 27
    :cond_0
    sget-object v0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->sInstance:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processCommand(Lcom/mediatek/engineermode/hqanfc/NfcCommand;)V
    .locals 3
    .parameter "receiveData"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.mediatek.hqanfc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand;->getMessageType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommand;->getMessageContent()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 39
    iget-object v0, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mConsumerThr:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 40
    return-void
.end method

.method public execute(Lcom/mediatek/engineermode/hqanfc/NfcCommand;)Z
    .locals 5
    .parameter "entity"

    .prologue
    .line 44
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[NfcCommandHandler] execute()"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v1, 0x1

    .line 52
    :goto_0
    return v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v2, "EM/HQA/NFC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NfcCommandHandler]execute InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
