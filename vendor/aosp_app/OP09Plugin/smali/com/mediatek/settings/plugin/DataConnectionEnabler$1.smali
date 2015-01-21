.class Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/DataConnectionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v4, "DataConnectionEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, slotId:I
    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, apnTypeList:Ljava/lang/String;
    invoke-static {p2}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 63
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v4, :cond_2

    .line 64
    :cond_0
    const-string v4, "default"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const-string v4, "DataConnectionEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****the slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsDataConnectActing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #getter for: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z
    invoke-static {v6}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$000(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #getter for: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$000(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #getter for: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$100(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    const/4 v5, 0x0

    #setter for: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->mIsDataConnectActing:Z
    invoke-static {v4, v5}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$002(Lcom/mediatek/settings/plugin/DataConnectionEnabler;Z)Z

    .line 70
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$200(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    .line 78
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v2           #slotId:I
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_2
    :goto_0
    return-void

    .line 73
    :cond_3
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 74
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$200(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    goto :goto_0

    .line 75
    :cond_4
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$200(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    goto :goto_0
.end method
