.class final Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;
.super Landroid/os/Handler;
.source "UsbTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/usb/UsbTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResultCollectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/usb/UsbTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/usb/UsbTest;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    .line 378
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 383
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 396
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

    .line 399
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 400
    return-void

    .line 385
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$300(Lcom/mediatek/engineermode/usb/UsbTest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    invoke-static {}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeGetMsg()I

    move-result v1

    #setter for: Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/usb/UsbTest;->access$002(Lcom/mediatek/engineermode/usb/UsbTest;I)I

    .line 387
    const-string v0, "USBTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsg() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I
    invoke-static {v2}, Lcom/mediatek/engineermode/usb/UsbTest;->access$000(Lcom/mediatek/engineermode/usb/UsbTest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$000(Lcom/mediatek/engineermode/usb/UsbTest;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$200(Lcom/mediatek/engineermode/usb/UsbTest;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 391
    :cond_1
    const/16 v0, 0x14

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 383
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
