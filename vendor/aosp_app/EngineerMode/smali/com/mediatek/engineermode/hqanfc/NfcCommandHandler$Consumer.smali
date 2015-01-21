.class Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;
.super Ljava/lang/Object;
.source "NfcCommandHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Consumer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;->this$0:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;-><init>(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 67
    :goto_0
    :try_start_0
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[NfcCommandHandler] Consumer take."

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;->this$0:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    #getter for: Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->access$100(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[NfcCommandHandler] mCommandQueue is null."

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v2, "EM/HQA/NFC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NfcCommandHandler]Consumer InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;->this$0:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    #getter for: Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->access$100(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/hqanfc/NfcCommand;

    .line 72
    .local v0, command:Lcom/mediatek/engineermode/hqanfc/NfcCommand;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler$Consumer;->this$0:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    #calls: Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->processCommand(Lcom/mediatek/engineermode/hqanfc/NfcCommand;)V
    invoke-static {v2, v0}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->access$200(Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;Lcom/mediatek/engineermode/hqanfc/NfcCommand;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
