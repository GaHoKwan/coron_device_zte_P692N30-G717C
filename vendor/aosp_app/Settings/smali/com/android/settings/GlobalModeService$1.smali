.class Lcom/android/settings/GlobalModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalModeService;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/GlobalModeService$1;->this$0:Lcom/android/settings/GlobalModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 89
    const-string v3, "GlobalModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string v3, "GlobalModeService"

    const-string v4, "UsbManager.ACTION_USB_STATE entry"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/android/settings/GlobalModeService$1;->this$0:Lcom/android/settings/GlobalModeService;

    #getter for: Lcom/android/settings/GlobalModeService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/GlobalModeService;->access$000(Lcom/android/settings/GlobalModeService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "connect_to_pc_ask_me"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, connectType:I
    const-string v3, "connected"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 96
    .local v1, isConnected:Z
    const-string v3, "GlobalModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isConnected= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-eqz v1, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/settings/GlobalModeService$1;->this$0:Lcom/android/settings/GlobalModeService;

    #getter for: Lcom/android/settings/GlobalModeService;->usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;
    invoke-static {v3}, Lcom/android/settings/GlobalModeService;->access$100(Lcom/android/settings/GlobalModeService;)Lcom/android/settings/GlobalModeService$UsbHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 100
    iget-object v3, p0, Lcom/android/settings/GlobalModeService$1;->this$0:Lcom/android/settings/GlobalModeService;

    #getter for: Lcom/android/settings/GlobalModeService;->usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;
    invoke-static {v3}, Lcom/android/settings/GlobalModeService;->access$100(Lcom/android/settings/GlobalModeService;)Lcom/android/settings/GlobalModeService$UsbHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GlobalModeService$1;->this$0:Lcom/android/settings/GlobalModeService;

    #getter for: Lcom/android/settings/GlobalModeService;->usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;
    invoke-static {v4}, Lcom/android/settings/GlobalModeService;->access$100(Lcom/android/settings/GlobalModeService;)Lcom/android/settings/GlobalModeService$UsbHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 101
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/settings/GlobalModeService$1;->this$0:Lcom/android/settings/GlobalModeService;

    #getter for: Lcom/android/settings/GlobalModeService;->usbHandler:Lcom/android/settings/GlobalModeService$UsbHandler;
    invoke-static {v3}, Lcom/android/settings/GlobalModeService;->access$100(Lcom/android/settings/GlobalModeService;)Lcom/android/settings/GlobalModeService$UsbHandler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    .end local v0           #connectType:I
    .end local v1           #isConnected:Z
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
