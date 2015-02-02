.class Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;
.super Landroid/os/Handler;
.source "PollingLoopMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, toastMsg:Ljava/lang/String;
    const/16 v5, 0xc8

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_2

    .line 162
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->dismissDialog(I)V

    .line 163
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$100(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingRsp;

    move-result-object v5

    iget v5, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    sparse-switch v5, :sswitch_data_0

    .line 179
    const-string v4, "Poling Loop Mode Rsp Result: ERROR"

    .line 229
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-static {v5, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 230
    return-void

    .line 165
    :sswitch_0
    const-string v4, "Poling Loop Mode Rsp Result: SUCCESS"

    .line 166
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$400(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    const v7, 0x7f0804aa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setButtonsStatus(Z)V
    invoke-static {v5, v9}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->setButtonsStatus(Z)V
    invoke-static {v5, v8}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$500(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)V

    goto :goto_0

    .line 173
    :sswitch_1
    const-string v4, "Poling Loop Mode Rsp Result: FAIL"

    .line 174
    goto :goto_0

    .line 176
    :sswitch_2
    const-string v4, "Poling Loop Mode Rsp Result: No SIM"

    .line 177
    goto :goto_0

    .line 182
    :cond_2
    const/16 v5, 0x64

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_0

    .line 183
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    move-result-object v5

    iget v5, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;->mDetectType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 202
    :pswitch_1
    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;-><init>()V

    .line 203
    .local v3, readermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;->mData:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 204
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "reader_mode_rsp_array"

    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v6}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    move-result-object v6

    iget-object v6, v6, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;->mData:[B

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 206
    const-string v5, "reader_mode_rsp_ndef"

    iget v6, v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->mIsNdef:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    const-class v6, Lcom/mediatek/engineermode/hqanfc/RwFunction;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 208
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    iget-object v6, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$700(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #setter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mUnregisterReceiver:Z
    invoke-static {v5, v8}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$802(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;Z)Z

    .line 210
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #readermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    :pswitch_2
    new-instance v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;

    invoke-direct {v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;-><init>()V

    .line 186
    .local v1, alsP2pNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;->mData:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 187
    iget v5, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;->mResult:I

    if-ne v8, v5, :cond_3

    .line 190
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    invoke-virtual {v5, v9}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 191
    :cond_3
    iget v5, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;->mResult:I

    if-nez v5, :cond_4

    .line 193
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 194
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$600(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 197
    :cond_4
    const-string v4, "P2P Data Exchange is ERROR"

    .line 199
    goto/16 :goto_0

    .line 213
    .end local v1           #alsP2pNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsP2pNtf;
    :pswitch_3
    new-instance v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;

    invoke-direct {v0}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;-><init>()V

    .line 214
    .local v0, alsCardRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsCardmRsp;
    iget-object v5, p0, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v5}, Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;->access$300(Lcom/mediatek/engineermode/hqanfc/PollingLoopMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    move-result-object v5

    iget-object v5, v5, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;->mData:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 215
    iget v5, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    if-nez v5, :cond_5

    .line 216
    const-string v4, "CardEmulation Rsp Result: SUCCESS"

    goto/16 :goto_0

    .line 217
    :cond_5
    iget v5, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    if-ne v8, v5, :cond_6

    .line 218
    const-string v4, "CardEmulation Rsp Result: FAIL"

    goto/16 :goto_0

    .line 219
    :cond_6
    const/16 v5, 0xe1

    iget v6, v0, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    if-ne v5, v6, :cond_7

    .line 220
    const-string v4, "CardEmulation Rsp Result: No SIM"

    goto/16 :goto_0

    .line 222
    :cond_7
    const-string v4, "CardEmulation Rsp Result: ERROR"

    .line 224
    goto/16 :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xe1 -> :sswitch_2
    .end sparse-switch

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
