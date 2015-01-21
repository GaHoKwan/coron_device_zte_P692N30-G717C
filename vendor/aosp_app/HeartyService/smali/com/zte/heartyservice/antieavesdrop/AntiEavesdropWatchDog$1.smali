.class Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;
.super Ljava/lang/Thread;
.source "AntiEavesdropWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkAndUpdatePackages()V

    .line 55
    iget-object v1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z
    invoke-static {v1, v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->access$002(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;Z)Z

    .line 57
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    #getter for: Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->isPause:Z
    invoke-static {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->access$000(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    #getter for: Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->access$100(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    #getter for: Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->access$100(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_2
    :try_start_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->checkAndUpdatePackages()V

    .line 69
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->isAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "record"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog$1;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;

    #getter for: Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->mAntiEavesdropStrategyUtils:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;
    invoke-static {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;->access$200(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropWatchDog;)Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropStrategyUtils;->stopUncertainEavesdropApps()V

    .line 74
    const-string v0, "record"

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    goto :goto_2
.end method
