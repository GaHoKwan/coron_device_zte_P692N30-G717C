.class Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialPadOP09Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialpadBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;->this$0:Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;-><init>(Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialtactsBroadcastReceiver, onReceive action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->access$100(Ljava/lang/String;)V

    .line 553
    const-string v1, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension$DialpadBroadcastReceiver;->this$0:Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;

    #calls: Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->updateDialButtons()V
    invoke-static {v1}, Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;->access$200(Lcom/mediatek/contacts/plugin/dialpad/DialPadOP09Extension;)V

    .line 557
    :cond_1
    return-void
.end method
