.class final Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;
.super Ljava/lang/Object;
.source "MainSpeedingActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/MainSpeedingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Idler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 118
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    new-instance v2, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    iget-object v3, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$102(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    .line 120
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const-wide/16 v2, 0xbb8

    #calls: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->startAutoRefreshTimer(J)V
    invoke-static {v1, v2, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$300(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;J)V

    .line 124
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, intentSpeedUpService:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$Idler;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mSpeedUpServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$400(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 128
    .end local v0           #intentSpeedUpService:Landroid/content/Intent;
    :cond_1
    return v5
.end method
