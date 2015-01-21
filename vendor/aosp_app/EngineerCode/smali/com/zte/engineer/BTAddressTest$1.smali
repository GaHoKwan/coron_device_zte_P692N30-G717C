.class Lcom/zte/engineer/BTAddressTest$1;
.super Landroid/content/BroadcastReceiver;
.source "BTAddressTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/BTAddressTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/BTAddressTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/BTAddressTest;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f06004a

    const v3, 0x7f060049

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-static {}, Lcom/zte/engineer/BTAddressTest;->access$000()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 48
    invoke-static {}, Lcom/zte/engineer/BTAddressTest;->access$100()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 50
    iget-object v1, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    iget-object v1, v1, Lcom/zte/engineer/BTAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 53
    iget-object v1, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    iget-object v1, v1, Lcom/zte/engineer/BTAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    iget-object v4, v4, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-static {}, Lcom/zte/engineer/BTAddressTest;->access$000()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    invoke-static {}, Lcom/zte/engineer/BTAddressTest;->access$100()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 62
    iget-object v1, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    iget-object v1, v1, Lcom/zte/engineer/BTAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    const v5, 0x7f060021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    iget-object v1, v1, Lcom/zte/engineer/BTAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/engineer/BTAddressTest$1;->this$0:Lcom/zte/engineer/BTAddressTest;

    const v5, 0x7f06001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
