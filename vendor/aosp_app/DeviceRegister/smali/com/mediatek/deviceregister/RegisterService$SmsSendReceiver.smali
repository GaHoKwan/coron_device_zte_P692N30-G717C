.class Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegisterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/deviceregister/RegisterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsSendReceiver"
.end annotation


# static fields
.field private static final SUB_TAG:Ljava/lang/String; = "DeviceRegister/SmsSendReceiver"


# instance fields
.field final synthetic this$0:Lcom/mediatek/deviceregister/RegisterService;


# direct methods
.method constructor <init>(Lcom/mediatek/deviceregister/RegisterService;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 720
    const-string v2, "DeviceRegister/SmsSendReceiver"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-eqz p2, :cond_3

    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.REGISTER_SMS_SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    .line 725
    .local v1, resultCode:I
    const-string v2, "DeviceRegister/SmsSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get result code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 727
    const-string v2, "DeviceRegister/SmsSendReceiver"

    const-string v3, "result ok! send register message success."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v2, "DeviceRegister/SmsSendReceiver"

    const-string v3, "start service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-class v2, Lcom/mediatek/deviceregister/RegisterService;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 731
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 750
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #resultCode:I
    :goto_0
    return-void

    .line 733
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #resultCode:I
    :cond_0
    const-string v2, "DeviceRegister/SmsSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send message failed, retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/deviceregister/RegisterService;->access$400()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-static {}, Lcom/mediatek/deviceregister/RegisterService;->access$400()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 735
    iget-object v2, p0, Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    #calls: Lcom/mediatek/deviceregister/RegisterService;->sendRegisterMessage()V
    invoke-static {v2}, Lcom/mediatek/deviceregister/RegisterService;->access$000(Lcom/mediatek/deviceregister/RegisterService;)V

    .line 736
    invoke-static {}, Lcom/mediatek/deviceregister/RegisterService;->access$408()I

    goto :goto_0

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/mediatek/deviceregister/RegisterService$SmsSendReceiver;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 743
    .end local v1           #resultCode:I
    :cond_2
    const-string v2, "DeviceRegister/SmsSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action is not valid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const-string v2, "DeviceRegister/SmsSendReceiver"

    const-string v3, "intent is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
