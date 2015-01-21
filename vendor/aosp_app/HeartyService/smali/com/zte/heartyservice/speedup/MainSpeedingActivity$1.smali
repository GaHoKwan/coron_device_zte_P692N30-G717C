.class Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainSpeedingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/MainSpeedingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    new-instance v1, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    iget-object v2, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;-><init>(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;)V

    #setter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$102(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    .line 138
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$1;->this$0:Lcom/zte/heartyservice/speedup/MainSpeedingActivity;

    #getter for: Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->mUpdateCPUTask:Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;
    invoke-static {v0}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity;->access$100(Lcom/zte/heartyservice/speedup/MainSpeedingActivity;)Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/speedup/MainSpeedingActivity$UpdateCPUTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    :cond_0
    return-void
.end method
