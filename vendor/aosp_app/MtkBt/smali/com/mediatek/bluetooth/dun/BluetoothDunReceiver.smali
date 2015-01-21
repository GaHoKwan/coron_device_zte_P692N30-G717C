.class public Lcom/mediatek/bluetooth/dun/BluetoothDunReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDunReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDunReceiver"

.field private static final debug:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, action:Ljava/lang/String;
    const-string v2, "com.mediatek.bluetooth.dun.intent.action.CLEAR_AUTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.bluetooth.dun.accessresponse"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, accessIntent:Landroid/content/Intent;
    const-string v2, "com.mediatek.bluetooth.dun.accessresult"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    .end local v0           #accessIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
