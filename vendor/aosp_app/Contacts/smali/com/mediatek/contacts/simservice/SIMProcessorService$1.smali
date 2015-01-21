.class Lcom/mediatek/contacts/simservice/SIMProcessorService$1;
.super Ljava/lang/Object;
.source "SIMProcessorService.java"

# interfaces
.implements Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simservice/SIMProcessorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/simservice/SIMProcessorService;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/simservice/SIMProcessorService;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService$1;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addProcessor(JLcom/android/contacts/vcard/ProcessorBase;)V
    .locals 4
    .parameter "scheduleTime"
    .parameter "processor"

    .prologue
    .line 71
    if-eqz p3, :cond_0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService$1;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorService;

    #getter for: Lcom/mediatek/contacts/simservice/SIMProcessorService;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/mediatek/contacts/simservice/SIMProcessorService;->access$000(Lcom/mediatek/contacts/simservice/SIMProcessorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "SIMProcessorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addProcessor] RejectedExecutionException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAllProcessorsFinished()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "SIMProcessorService"

    const-string v1, "stopServiceAndThreadPool()"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService$1;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorService;

    #getter for: Lcom/mediatek/contacts/simservice/SIMProcessorService;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/mediatek/contacts/simservice/SIMProcessorService;->access$000(Lcom/mediatek/contacts/simservice/SIMProcessorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMProcessorService$1;->this$0:Lcom/mediatek/contacts/simservice/SIMProcessorService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 86
    return-void
.end method
