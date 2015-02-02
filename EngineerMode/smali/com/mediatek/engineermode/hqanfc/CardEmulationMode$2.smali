.class Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;
.super Landroid/os/Handler;
.source "CardEmulationMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    const/16 v1, 0xc8

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 71
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->dismissDialog(I)V

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, toastMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->access$100(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    sparse-switch v1, :sswitch_data_0

    .line 90
    const-string v0, "CardEmulation Rsp Result: ERROR"

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    .end local v0           #toastMsg:Ljava/lang/String;
    :cond_0
    return-void

    .line 75
    .restart local v0       #toastMsg:Ljava/lang/String;
    :sswitch_0
    const-string v0, "CardEmulation Rsp Result: SUCCESS"

    .line 76
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->access$300(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    const v3, 0x7f0804aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->setButtonsStatus(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->access$400(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;Z)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->setButtonsStatus(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;->access$400(Lcom/mediatek/engineermode/hqanfc/CardEmulationMode;Z)V

    goto :goto_0

    .line 84
    :sswitch_1
    const-string v0, "CardEmulation Rsp Result: FAIL"

    .line 85
    goto :goto_0

    .line 87
    :sswitch_2
    const-string v0, "CardEmulation Rsp Result: No SIM"

    .line 88
    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xe1 -> :sswitch_2
    .end sparse-switch
.end method
