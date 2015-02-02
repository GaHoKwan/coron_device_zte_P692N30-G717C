.class final Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;
.super Landroid/os/Handler;
.source "UsbTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/usb/UsbTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/usb/UsbTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/usb/UsbTest;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    .line 355
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 356
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 360
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    const-string v0, "USBTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 373
    return-void

    .line 362
    :pswitch_0
    const-string v0, "USBTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I
    invoke-static {v2}, Lcom/mediatek/engineermode/usb/UsbTest;->access$100(Lcom/mediatek/engineermode/usb/UsbTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$100(Lcom/mediatek/engineermode/usb/UsbTest;)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeStartTest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$200(Lcom/mediatek/engineermode/usb/UsbTest;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    :cond_0
    const-string v0, "USBTest"

    const-string v1, "Task finish"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method
