.class Lcom/android/camera/WfdManagerLocal$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdManagerLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/WfdManagerLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/WfdManagerLocal;


# direct methods
.method constructor <init>(Lcom/android/camera/WfdManagerLocal;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    const-string v2, "WfdManagerLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplayStatus;

    .line 34
    .local v1, status:Landroid/hardware/display/WifiDisplayStatus;
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    #setter for: Lcom/android/camera/WfdManagerLocal;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v2, v1}, Lcom/android/camera/WfdManagerLocal;->access$002(Lcom/android/camera/WfdManagerLocal;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 35
    iget-object v2, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    iget-object v3, p0, Lcom/android/camera/WfdManagerLocal$1;->this$0:Lcom/android/camera/WfdManagerLocal;

    invoke-virtual {v3}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v3

    #calls: Lcom/android/camera/WfdManagerLocal;->notifyWfdStateChanged(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/WfdManagerLocal;->access$100(Lcom/android/camera/WfdManagerLocal;Z)V

    .line 37
    .end local v1           #status:Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    return-void
.end method
