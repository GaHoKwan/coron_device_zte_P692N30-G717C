.class Lcom/android/musicfx/ActivityMusic$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/ActivityMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/ActivityMusic;


# direct methods
.method constructor <init>(Lcom/android/musicfx/ActivityMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v9, 0x418

    const/16 v8, 0x404

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v6}, Lcom/android/musicfx/ActivityMusic;->access$000(Lcom/android/musicfx/ActivityMusic;)Z

    move-result v3

    .line 186
    .local v3, isHeadsetOnPrev:Z
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 187
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 188
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    const-string v7, "state"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v5, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v6, v4}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    .line 209
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #getter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v4}, Lcom/android/musicfx/ActivityMusic;->access$000(Lcom/android/musicfx/ActivityMusic;)Z

    move-result v4

    if-eq v3, v4, :cond_3

    .line 210
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #calls: Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V
    invoke-static {v4}, Lcom/android/musicfx/ActivityMusic;->access$100(Lcom/android/musicfx/ActivityMusic;)V

    .line 212
    :cond_3
    return-void

    .line 190
    :cond_4
    const-string v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 191
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 194
    .local v2, deviceClass:I
    if-eq v2, v9, :cond_5

    if-ne v2, v8, :cond_2

    .line 196
    :cond_5
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v4, v5}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    goto :goto_0

    .line 198
    .end local v2           #deviceClass:I
    :cond_6
    const-string v6, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 199
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v4, v5

    :cond_8
    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v6, v4}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    goto :goto_0

    .line 200
    :cond_9
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 204
    .restart local v2       #deviceClass:I
    if-eq v2, v9, :cond_a

    if-ne v2, v8, :cond_2

    .line 206
    :cond_a
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic$1;->this$0:Lcom/android/musicfx/ActivityMusic;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    #setter for: Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z
    invoke-static {v4, v5}, Lcom/android/musicfx/ActivityMusic;->access$002(Lcom/android/musicfx/ActivityMusic;Z)Z

    goto :goto_0
.end method
