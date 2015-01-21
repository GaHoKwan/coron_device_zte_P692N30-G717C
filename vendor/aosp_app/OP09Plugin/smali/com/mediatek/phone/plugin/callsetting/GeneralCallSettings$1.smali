.class Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "GeneralCallSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings$1;->this$0:Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
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

    .line 84
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings$1;->this$0:Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;

    #calls: Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;->access$000(Lcom/mediatek/phone/plugin/callsetting/GeneralCallSettings;)V

    .line 88
    :cond_1
    return-void
.end method
