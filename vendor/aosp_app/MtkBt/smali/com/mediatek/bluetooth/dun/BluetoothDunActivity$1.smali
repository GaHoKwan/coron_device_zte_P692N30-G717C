.class Lcom/mediatek/bluetooth/dun/BluetoothDunActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDunActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, state:I
    if-ne v1, v3, :cond_0

    .line 151
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->response:Z
    invoke-static {v2, v3}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->access$002(Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;Z)Z

    .line 152
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity$1;->this$0:Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;

    #calls: Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->onDisconnect()V
    invoke-static {v2}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;)V

    .line 155
    .end local v1           #state:I
    :cond_0
    return-void
.end method
