.class Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectToPCSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConnectToPCSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConnectToPCSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ConnectToPCSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectToPCSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ConnectToPCSettings;Lcom/android/settings/ConnectToPCSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/ConnectToPCSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, action:Ljava/lang/String;
    const-string v1, "ConnectToPCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive,action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectToPCSettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/ConnectToPCSettings;->mMassStorageActive:Z
    invoke-static {v1, v2}, Lcom/android/settings/ConnectToPCSettings;->access$102(Lcom/android/settings/ConnectToPCSettings;Z)Z

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectToPCSettings;

    #setter for: Lcom/android/settings/ConnectToPCSettings;->mMassStorageActive:Z
    invoke-static {v1, v4}, Lcom/android/settings/ConnectToPCSettings;->access$102(Lcom/android/settings/ConnectToPCSettings;Z)Z

    goto :goto_0

    .line 224
    :cond_2
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/settings/ConnectToPCSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/ConnectToPCSettings;

    const-string v2, "connected"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/settings/ConnectToPCSettings;->mUsbConnected:Z
    invoke-static {v1, v2}, Lcom/android/settings/ConnectToPCSettings;->access$202(Lcom/android/settings/ConnectToPCSettings;Z)Z

    goto :goto_0
.end method
