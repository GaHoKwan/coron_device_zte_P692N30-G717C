.class Lcom/android/utk/UtkAppService$1;
.super Landroid/content/BroadcastReceiver;
.source "UtkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utk/UtkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utk/UtkAppService;


# direct methods
.method constructor <init>(Lcom/android/utk/UtkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/android/utk/UtkAppService$1;->this$0:Lcom/android/utk/UtkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1031
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1032
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, simState:Ljava/lang/String;
    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1036
    .local v0, simId:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSIMStateChangeReceiver() - simId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    if-nez v0, :cond_1

    .line 1039
    const-string v2, "NOT_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    :cond_0
    const-string v2, "Utk launch MenuActivity finish!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget-object v2, p0, Lcom/android/utk/UtkAppService$1;->this$0:Lcom/android/utk/UtkAppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/utk/UtkAppService;->mCanLaunchStkMenuActivity:Z
    invoke-static {v2, v3}, Lcom/android/utk/UtkAppService;->access$302(Lcom/android/utk/UtkAppService;Z)Z

    .line 1045
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    iget-object v2, p0, Lcom/android/utk/UtkAppService$1;->this$0:Lcom/android/utk/UtkAppService;

    const/4 v3, 0x0

    #setter for: Lcom/android/utk/UtkAppService;->mMainCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    invoke-static {v2, v3}, Lcom/android/utk/UtkAppService;->access$202(Lcom/android/utk/UtkAppService;Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1054
    .end local v0           #simId:I
    .end local v1           #simState:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1050
    .restart local v0       #simId:I
    .restart local v1       #simState:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/utk/UtkAppService$1;->this$0:Lcom/android/utk/UtkAppService;

    const/4 v3, 0x1

    #setter for: Lcom/android/utk/UtkAppService;->mCanLaunchStkMenuActivity:Z
    invoke-static {v2, v3}, Lcom/android/utk/UtkAppService;->access$302(Lcom/android/utk/UtkAppService;Z)Z

    goto :goto_0
.end method
