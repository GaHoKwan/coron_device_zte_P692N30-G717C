.class public Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothSimapConnNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final D:Z = true

.field private static final DISMISS_DISCONNECTED_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "BluetoothSimapConnNotification"

.field private static final V:Z = true


# instance fields
.field private mContentView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$1;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification$2;-><init>(Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->onDisconnected()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 136
    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, mRemoteName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mContentView:Landroid/view/View;

    .line 139
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mContentView:Landroid/view/View;

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->messageView:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f070156

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, mMessage1:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->messageView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->messageView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method private onDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    const-string v0, "BluetoothSimapConnNotification"

    const-string v1, "onDisconnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->messageView:Landroid/widget/TextView;

    const v1, 0x7f07014d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mediatek/bluetooth/simap/BluetoothSimapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    return-void
.end method

.method private sendDisconnectRequestIntent()V
    .locals 3

    .prologue
    .line 194
    const-string v1, "BluetoothSimapConnNotification"

    const-string v2, "sendDisconnectIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simap_disconnect_request"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    const-string v0, "BluetoothSimapConnNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    packed-switch p2, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 151
    :pswitch_0
    const-string v0, "BluetoothSimapConnNotification"

    const-string v1, "DialogInterface.BUTTON_POSITIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->sendDisconnectRequestIntent()V

    .line 153
    const-string v0, "BluetoothSimapConnNotification"

    const-string v1, "call finish()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 158
    :pswitch_1
    const-string v0, "BluetoothSimapConnNotification"

    const-string v1, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 110
    const-string v3, "BluetoothSimapConnNotification"

    const-string v4, "onCreate..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 117
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x108009b

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 118
    const v3, 0x7f070155

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 119
    invoke-direct {p0}, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 120
    const v3, 0x7f070157

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 121
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    const v3, 0x7f070158

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.bluetooth.simap.intent.action.BTSIMAP_DISCONNECTED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/mediatek/bluetooth/simap/BluetoothSimapConnNotification;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method
