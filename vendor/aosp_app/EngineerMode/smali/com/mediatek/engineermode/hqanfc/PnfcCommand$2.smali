.class Lcom/mediatek/engineermode/hqanfc/PnfcCommand$2;
.super Landroid/os/Handler;
.source "PnfcCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PnfcCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    const/16 v2, 0xc8

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->dismissDialog(I)V

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, toastMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$100(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;->mResult:I

    packed-switch v2, :pswitch_data_0

    .line 76
    const-string v1, "PnfcCommand Rsp Result: ERROR"

    .line 79
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$100(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;->mData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 80
    .local v0, infoMsg:Ljava/lang/String;
    const-string v2, "EM/HQA/NFC"

    invoke-static {v2, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "EM/HQA/NFC"

    invoke-static {v2, v0}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mResultTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$300(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v0           #infoMsg:Ljava/lang/String;
    .end local v1           #toastMsg:Ljava/lang/String;
    :cond_0
    return-void

    .line 70
    .restart local v1       #toastMsg:Ljava/lang/String;
    :pswitch_0
    const-string v1, "PnfcCommand Rsp Result: SUCCESS"

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    const-string v1, "PnfcCommand Rsp Result: FAIL"

    .line 74
    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
