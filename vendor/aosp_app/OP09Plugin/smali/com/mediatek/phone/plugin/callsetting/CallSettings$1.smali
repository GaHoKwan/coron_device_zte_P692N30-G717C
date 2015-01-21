.class Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/plugin/callsetting/CallSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/callsetting/CallSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;->this$0:Lcom/mediatek/phone/plugin/callsetting/CallSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v1, "CallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver [action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;->this$0:Lcom/mediatek/phone/plugin/callsetting/CallSettings;

    #calls: Lcom/mediatek/phone/plugin/callsetting/CallSettings;->updateTabs()V
    invoke-static {v1}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->access$000(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V

    .line 62
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;->this$0:Lcom/mediatek/phone/plugin/callsetting/CallSettings;

    #calls: Lcom/mediatek/phone/plugin/callsetting/CallSettings;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->access$100(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/CallSettings$1;->this$0:Lcom/mediatek/phone/plugin/callsetting/CallSettings;

    #calls: Lcom/mediatek/phone/plugin/callsetting/CallSettings;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/phone/plugin/callsetting/CallSettings;->access$100(Lcom/mediatek/phone/plugin/callsetting/CallSettings;)V

    goto :goto_0
.end method
