.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;
.super Landroid/app/Activity;
.source "BluetoothFtpServerNotify.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFtpServerNotify"


# instance fields
.field private isDone:Z

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDeviceName:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFtpServerNotifyConn:Landroid/content/ServiceConnection;

.field private mNotifyType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->isDone:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    .line 109
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$1;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mFtpServerNotifyConn:Landroid/content/ServiceConnection;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "server_disconnected"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mFilter:Landroid/content/IntentFilter;

    .line 120
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$2;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$2;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$3;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify$3;-><init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;)Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->forceExit()V

    return-void
.end method

.method private buildDialog(ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 9
    .parameter "type"
    .parameter "deviceName"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    .line 136
    .local v2, msg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, icon_id:I
    const/4 v5, 0x0

    .local v5, title_id:I
    const/4 v4, 0x0

    .local v4, positive_id:I
    const/4 v3, 0x0

    .line 138
    .local v3, negative_id:I
    const v6, 0x5b8d81

    if-ne p1, v6, :cond_0

    .line 139
    const v1, 0x108009b

    .line 140
    const v5, 0x7f070057

    .line 141
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 144
    const v4, 0x7f070059

    .line 145
    const v3, 0x7f07005a

    .line 161
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 147
    :cond_0
    const v6, 0x5b8d82

    if-ne p1, v6, :cond_1

    .line 148
    const v1, 0x108009b

    .line 149
    const v5, 0x7f07005e

    .line 150
    const v6, 0x7f07005f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 153
    const v4, 0x7f070094

    .line 154
    const v3, 0x7f070095

    goto :goto_0

    .line 157
    :cond_1
    const-string v6, "BluetoothFtpServerNotify"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid notification type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->forceExit()V

    goto :goto_0
.end method

.method private forceExit()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->isDone:Z

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 255
    return-void
.end method

.method private sendAuthResult(Z)V
    .locals 3
    .parameter "res"

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;->authResult(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->forceExit()V

    .line 231
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "BluetoothFtpServerNotify"

    const-string v2, "authResult() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendDisconnect()V
    .locals 3

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    invoke-interface {v1}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->forceExit()V

    .line 241
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "BluetoothFtpServerNotify"

    const-string v2, "disconnect() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 3

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mServerNotify:Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    iget v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mNotifyType:I

    invoke-interface {v1, v2}, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;->updateNotify(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "BluetoothFtpServerNotify"

    const-string v2, "updateNotification() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v2, 0x5b8d81

    .line 259
    packed-switch p2, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 261
    :pswitch_0
    const-string v0, "BluetoothFtpServerNotify"

    const-string v1, "Positive button pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mNotifyType:I

    if-ne v0, v2, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->sendAuthResult(Z)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->sendDisconnect()V

    goto :goto_0

    .line 270
    :pswitch_1
    const-string v0, "BluetoothFtpServerNotify"

    const-string v1, "Negative button pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mNotifyType:I

    if-ne v0, v2, :cond_1

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->sendAuthResult(Z)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "notify_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mNotifyType:I

    .line 178
    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mDeviceName:Ljava/lang/String;

    .line 180
    iget v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mNotifyType:I

    if-ne v1, v2, :cond_0

    .line 181
    const-string v1, "BluetoothFtpServerNotify"

    const-string v2, "Notification type is not assigned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->forceExit()V

    .line 185
    :cond_0
    iget v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mNotifyType:I

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mDeviceName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->buildDialog(ILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mDialog:Landroid/app/AlertDialog;

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/bluetooth/ftp/IBluetoothFtpServerNotify;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mFtpServerNotifyConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 189
    iget-object v1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    const-string v0, "BluetoothFtpServerNotify"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mFtpServerNotifyConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 221
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    const-string v0, "BluetoothFtpServerNotify"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 204
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 195
    const-string v0, "BluetoothFtpServerNotify"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 209
    const-string v0, "BluetoothFtpServerNotify"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v0, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->isDone:Z

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpServerNotify;->updateNotification()V

    .line 213
    :cond_0
    return-void
.end method
