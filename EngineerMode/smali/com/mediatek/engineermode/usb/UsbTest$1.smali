.class Lcom/mediatek/engineermode/usb/UsbTest$1;
.super Landroid/os/Handler;
.source "UsbTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/usb/UsbTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/usb/UsbTest;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/usb/UsbTest;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$000(Lcom/mediatek/engineermode/usb/UsbTest;)I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    #getter for: Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I
    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbTest;->access$000(Lcom/mediatek/engineermode/usb/UsbTest;)I

    move-result v0

    if-gez v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest$1;->this$0:Lcom/mediatek/engineermode/usb/UsbTest;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
