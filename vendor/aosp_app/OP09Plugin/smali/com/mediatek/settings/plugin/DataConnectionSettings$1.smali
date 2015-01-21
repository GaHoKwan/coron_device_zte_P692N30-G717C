.class Lcom/mediatek/settings/plugin/DataConnectionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/DataConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v4, "DataConnectionSettings"

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

    .line 55
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    const-string v4, "simId"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, slotId:I
    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, apnTypeList:Ljava/lang/String;
    invoke-static {p2}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    .line 59
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v4, :cond_2

    .line 60
    :cond_0
    const-string v4, "default"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    const-string v4, "DataConnectionSettings"

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

    iget-object v6, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #getter for: Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z
    invoke-static {v6}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$000(Lcom/mediatek/settings/plugin/DataConnectionSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #getter for: Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$000(Lcom/mediatek/settings/plugin/DataConnectionSettings;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #getter for: Lcom/mediatek/settings/plugin/DataConnectionSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$100(Lcom/mediatek/settings/plugin/DataConnectionSettings;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    const/4 v5, 0x0

    #setter for: Lcom/mediatek/settings/plugin/DataConnectionSettings;->mIsDataConnectActing:Z
    invoke-static {v4, v5}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$002(Lcom/mediatek/settings/plugin/DataConnectionSettings;Z)Z

    .line 65
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->hideProgressDlg()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$200(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$300(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    .line 75
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v2           #slotId:I
    .end local v3           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$300(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$1;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V
    invoke-static {v4}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$300(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    goto :goto_0
.end method
