.class Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyDialerOP09Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyDialerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;


# direct methods
.method private constructor <init>(Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;->this$0:Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;-><init>(Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmergencyDialerBroadcastReceiver, onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->access$100(Ljava/lang/String;)V

    .line 294
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension$EmergencyDialerBroadcastReceiver;->this$0:Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;

    #calls: Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->updateCallButtons()V
    invoke-static {v1}, Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;->access$200(Lcom/mediatek/phone/plugin/EmergencyDialerOP09Extension;)V

    .line 297
    :cond_0
    return-void
.end method
