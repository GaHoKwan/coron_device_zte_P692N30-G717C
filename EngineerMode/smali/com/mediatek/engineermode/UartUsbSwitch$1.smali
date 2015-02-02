.class Lcom/mediatek/engineermode/UartUsbSwitch$1;
.super Landroid/content/BroadcastReceiver;
.source "UartUsbSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/UartUsbSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/UartUsbSwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/UartUsbSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 57
    .local v1, isHwUsbConnected:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 58
    iget-object v4, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    #calls: Lcom/mediatek/engineermode/UartUsbSwitch;->enableUsbUartSwitch(Z)V
    invoke-static {v4, v3}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$000(Lcom/mediatek/engineermode/UartUsbSwitch;Z)V

    .line 59
    iget-object v3, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    const v4, 0x7f0805c3

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 60
    iget-object v2, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 65
    .end local v1           #isHwUsbConnected:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 55
    goto :goto_0

    .line 62
    .restart local v1       #isHwUsbConnected:Z
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/UartUsbSwitch$1;->this$0:Lcom/mediatek/engineermode/UartUsbSwitch;

    #calls: Lcom/mediatek/engineermode/UartUsbSwitch;->enableUsbUartSwitch(Z)V
    invoke-static {v3, v2}, Lcom/mediatek/engineermode/UartUsbSwitch;->access$000(Lcom/mediatek/engineermode/UartUsbSwitch;Z)V

    goto :goto_1
.end method
