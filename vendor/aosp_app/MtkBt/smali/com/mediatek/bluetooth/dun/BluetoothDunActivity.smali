.class public Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothDunActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDunActivity"

.field private static final debug:Z = true


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;

.field private response:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->response:Z

    .line 140
    new-instance v0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity$1;-><init>(Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->response:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->onDisconnect()V

    return-void
.end method

.method private createDisplayText(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 5
    .parameter "device"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, mRemoteName:Ljava/lang/String;
    const v2, 0x7f07004e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, mMessage:Ljava/lang/String;
    return-object v0
.end method

.method private createView(Landroid/bluetooth/BluetoothDevice;)Landroid/view/View;
    .locals 3
    .parameter "device"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->mView:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->mView:Landroid/view/View;

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->messageView:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->createDisplayText(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private onDisconnect()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 238
    return-void
.end method

.method private sendAuthResult(I)V
    .locals 4
    .parameter "result"

    .prologue
    .line 271
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->response:Z

    .line 272
    const-string v1, "BluetoothDunActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAuthResult: accept="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.dun.accessresponse"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.bluetooth.dun.accessresult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method private showDunDialog(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 176
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 177
    const v1, 0x7f07004d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 178
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->createView(Landroid/bluetooth/BluetoothDevice;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 179
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 180
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 181
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 182
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 185
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    packed-switch p2, :pswitch_data_0

    .line 219
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 220
    return-void

    .line 210
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->sendAuthResult(I)V

    goto :goto_0

    .line 214
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->sendAuthResult(I)V

    goto :goto_0

    .line 207
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
    .line 161
    const-string v2, "BluetoothDunActivity"

    const-string v3, "DUN activity on create"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 164
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.bluetooth.dun.device"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 166
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->showDunDialog(Landroid/bluetooth/BluetoothDevice;)V

    .line 168
    iget-object v2, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "BluetoothDunActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 228
    :cond_0
    const-string v0, "BluetoothDunActivity"

    const-string v1, "onKeyDown(): back key, so reject the incoming request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->sendAuthResult(I)V

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 232
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    const-string v0, "BluetoothDunActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 251
    const-string v1, "BluetoothDunActivity"

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v1, p0, Lcom/mediatek/bluetooth/dun/BluetoothDunActivity;->response:Z

    if-nez v1, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.dun.resendnotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
