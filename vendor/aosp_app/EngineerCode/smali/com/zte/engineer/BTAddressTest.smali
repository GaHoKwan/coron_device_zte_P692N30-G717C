.class public Lcom/zte/engineer/BTAddressTest;
.super Lcom/zte/engineer/ZteActivity;
.source "BTAddressTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTAddressTest"

.field private static mFalse_bt:Landroid/widget/Button;

.field private static mPass_bt:Landroid/widget/Button;


# instance fields
.field isManualTurnOn:Z

.field mBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothAddress:Landroid/widget/TextView;

.field protected mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field mBluetoothStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/zte/engineer/BTAddressTest;->mPass_bt:Landroid/widget/Button;

    .line 22
    sput-object v0, Lcom/zte/engineer/BTAddressTest;->mFalse_bt:Landroid/widget/Button;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/BTAddressTest;->isManualTurnOn:Z

    .line 33
    new-instance v0, Lcom/zte/engineer/BTAddressTest$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/BTAddressTest$1;-><init>(Lcom/zte/engineer/BTAddressTest;)V

    iput-object v0, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/engineer/BTAddressTest;->mPass_bt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/engineer/BTAddressTest;->mFalse_bt:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/zte/engineer/BTAddressTest;->isManualTurnOn:Z

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 146
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0xa

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    invoke-virtual {p0, v1}, Lcom/zte/engineer/BTAddressTest;->finishSelf(I)V

    .line 177
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/BTAddressTest;->finishSelf(I)V

    goto :goto_0

    .line 168
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/BTAddressTest;->finishSelf(I)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f060049

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v3, 0x7f030015

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    .line 83
    .local v1, isEnable:Z
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    .local v2, mTextView:Landroid/widget/TextView;
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v3, 0x7f08006e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lcom/zte/engineer/BTAddressTest;->mPass_bt:Landroid/widget/Button;

    .line 91
    sget-object v3, Lcom/zte/engineer/BTAddressTest;->mPass_bt:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget-object v3, Lcom/zte/engineer/BTAddressTest;->mPass_bt:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sput-object v3, Lcom/zte/engineer/BTAddressTest;->mFalse_bt:Landroid/widget/Button;

    .line 94
    sget-object v3, Lcom/zte/engineer/BTAddressTest;->mFalse_bt:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget-object v3, Lcom/zte/engineer/BTAddressTest;->mFalse_bt:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 98
    if-eqz v1, :cond_0

    .line 101
    sget-object v3, Lcom/zte/engineer/BTAddressTest;->mPass_bt:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    sget-object v3, Lcom/zte/engineer/BTAddressTest;->mFalse_bt:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f060020

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    const v4, 0x7f06004a

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void

    .line 109
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 110
    iput-boolean v7, p0, Lcom/zte/engineer/BTAddressTest;->isManualTurnOn:Z

    .line 111
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f060021

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/zte/engineer/BTAddressTest;->mBluetoothAddress:Landroid/widget/TextView;

    const v4, 0x7f06004b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method
