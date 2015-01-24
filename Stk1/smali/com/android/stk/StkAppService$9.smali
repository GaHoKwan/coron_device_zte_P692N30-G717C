.class Lcom/android/stk/StkAppService$9;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 2786
    iput-object p1, p0, Lcom/android/stk/StkAppService$9;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2791
    .local v1, evtAction:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2793
    .local v2, simId:I
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEventDownloadCallReceiver() - evtAction["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v3, "android.intent.action.stk.CALL_DISCONNECTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2796
    const-string v3, "Stk-SAS "

    const-string v4, "mEventDownloadCallReceiver() - Received[CALL_DISCONNECTED]"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const-string v3, "sim_id"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2802
    iget-object v3, p0, Lcom/android/stk/StkAppService$9;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1600(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2804
    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService$9;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;
    invoke-static {v3}, Lcom/android/stk/StkAppService;->access$1100(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/cat/AppInterface;->setAllCallDisConn(Z)V

    .line 2805
    iget-object v3, p0, Lcom/android/stk/StkAppService$9;->this$0:Lcom/android/stk/StkAppService;

    const/4 v4, 0x2

    #calls: Lcom/android/stk/StkAppService;->SendEventDownloadMsg(II)V
    invoke-static {v3, v4, v2}, Lcom/android/stk/StkAppService;->access$1500(Lcom/android/stk/StkAppService;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2810
    :goto_0
    return-void

    .line 2799
    :cond_0
    const-string v3, "Stk-SAS "

    const-string v4, "mEventDownloadCallReceiver() - Received needn\'t handle!"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2806
    :catch_0
    move-exception v0

    .line 2807
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "Stk-SAS "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStkService is null, sim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
