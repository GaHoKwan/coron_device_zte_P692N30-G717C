.class Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation$1;
.super Landroid/content/BroadcastReceiver;
.source "BipInitPushConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation$1;->this$0:Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 78
    const-string v2, "BipInitiatorPushConfirmation"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, btState:I
    packed-switch v1, :pswitch_data_0

    .line 91
    .end local v1           #btState:I
    :cond_0
    :goto_0
    const-string v2, "com.mediatek.bluetooth.bipinitpushconfirmation.action.TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->access$002(Z)Z

    .line 93
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation$1;->this$0:Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 95
    :cond_1
    return-void

    .line 86
    .restart local v1       #btState:I
    :pswitch_0
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;->access$002(Z)Z

    .line 87
    iget-object v2, p0, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation$1;->this$0:Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
