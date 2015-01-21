.class public Lcom/mediatek/bluetooth/map/BluetoothMapActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContentView:Landroid/widget/TextView;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 74
    const-string v0, "BluetoothMapAlert"

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity$1;-><init>(Lcom/mediatek/bluetooth/map/BluetoothMapActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private Authorize(Z)V
    .locals 3
    .parameter "accept"

    .prologue
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authorize(), device is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapService.action.AUTHORIZE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapService.extra.RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/BluetoothMapActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/map/BluetoothMapActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createView(I)Landroid/view/View;
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, view:Landroid/view/View;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 163
    .local v0, text:Ljava/lang/String;
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mContentView:Landroid/widget/TextView;

    .line 164
    const-string v2, "createView"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mContentView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 167
    iget v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 175
    const-string v2, "unexpected alert type"

    invoke-direct {p0, v2}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-object v1

    .line 169
    :pswitch_0
    const v2, 0x7f0700d0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    const v2, 0x7f0700d7

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private disconncet()V
    .locals 3

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconncet(), device is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.map.BluetoothMapService.action.DISCONNECT_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 240
    if-eqz p1, :cond_0

    .line 241
    const-string v0, "BluetoothMapAlert"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick(): which is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 185
    packed-switch p2, :pswitch_data_0

    .line 213
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 214
    return-void

    .line 187
    :pswitch_1
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    packed-switch v0, :pswitch_data_1

    .line 195
    const-string v0, "unexpected alert type"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->Authorize(Z)V

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->disconncet()V

    goto :goto_0

    .line 199
    :pswitch_4
    iget v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    packed-switch v0, :pswitch_data_2

    .line 206
    const-string v0, "unexpected alert type"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :pswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->Authorize(Z)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 187
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 199
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 101
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.ALERT_TYPE"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    .line 103
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapNotification.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): mType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",action is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_0

    .line 108
    const-string v4, "the device is null"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 115
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x108009b

    iput v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 116
    iget v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 128
    const-string v4, "unexpected alert type"

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 131
    :goto_1
    iget v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mType:I

    invoke-direct {p0, v4}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->createView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 136
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 142
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v4, "com.mediatek.bluetooth.map.BluetoothMapNotification.action.MAP_DISCONNECTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 118
    .end local v1           #filter:Landroid/content/IntentFilter;
    :pswitch_0
    const v4, 0x7f0700cf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 119
    const v4, 0x7f0700d1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 120
    const v4, 0x7f0700d2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 123
    :pswitch_1
    const v4, 0x7f0700d6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 124
    const v4, 0x7f0700d8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 125
    const v4, 0x7f0700d9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 222
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    const-string v0, "onResume()"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/BluetoothMapActivity;->log(Ljava/lang/String;)V

    .line 152
    return-void
.end method
