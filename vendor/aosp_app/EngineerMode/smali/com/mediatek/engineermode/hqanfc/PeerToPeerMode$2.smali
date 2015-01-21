.class Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;
.super Landroid/os/Handler;
.source "PeerToPeerMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, toastMsg:Ljava/lang/String;
    const/16 v1, 0xc9

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 108
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mP2pNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$100(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;->mResult:I

    packed-switch v1, :pswitch_data_0

    .line 118
    const-string v0, "P2P Data Exchange is ERROR"

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 141
    return-void

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$400(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$400(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 121
    :cond_1
    const/16 v1, 0xc8

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->dismissDialog(I)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mP2pRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$300(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pRsp;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    packed-switch v1, :pswitch_data_1

    .line 136
    const-string v0, "P2P Mode Rsp Result: ERROR"

    goto :goto_0

    .line 125
    :pswitch_2
    const-string v0, "P2P Mode Rsp Result: SUCCESS"

    .line 126
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$500(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    const v3, 0x7f0804aa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->setButtonsStatus(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$600(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Z)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->setButtonsStatus(Z)V
    invoke-static {v1, v5}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$600(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;Z)V

    goto :goto_0

    .line 133
    :pswitch_3
    const-string v0, "P2P Mode Rsp Result: FAIL"

    .line 134
    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 123
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
