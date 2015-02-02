.class Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;
.super Landroid/os/Handler;
.source "VirtualCardFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    const/16 v1, 0xc8

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 92
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->dismissDialog(I)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, toastMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$100(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmVirtualCardRsp;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    sparse-switch v1, :sswitch_data_0

    .line 111
    const-string v0, "VirtualCardFunction Rsp Result: ERROR"

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 116
    .end local v0           #toastMsg:Ljava/lang/String;
    :cond_0
    return-void

    .line 96
    .restart local v0       #toastMsg:Ljava/lang/String;
    :sswitch_0
    const-string v0, "VirtualCardFunction Rsp Result: SUCCESS"

    .line 97
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$300(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    const v3, 0x7f0804aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    #calls: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->setButtonsStatus(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$400(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Z)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction$2;->this$0:Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->setButtonsStatus(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;->access$400(Lcom/mediatek/engineermode/hqanfc/VirtualCardFunction;Z)V

    goto :goto_0

    .line 105
    :sswitch_1
    const-string v0, "VirtualCardFunction Rsp Result: FAIL"

    .line 106
    goto :goto_0

    .line 108
    :sswitch_2
    const-string v0, "Please Remove SIM or uSD"

    .line 109
    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xe3 -> :sswitch_2
    .end sparse-switch
.end method
