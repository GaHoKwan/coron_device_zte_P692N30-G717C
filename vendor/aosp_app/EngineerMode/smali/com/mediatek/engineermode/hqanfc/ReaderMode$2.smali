.class Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;
.super Landroid/os/Handler;
.source "ReaderMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/ReaderMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, toastMsg:Ljava/lang/String;
    const/16 v3, 0xc8

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_3

    .line 117
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->dismissDialog(I)V

    .line 118
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->mResult:I

    sparse-switch v3, :sswitch_data_0

    .line 144
    const-string v2, "ReaderMode Rsp Result: ERROR"

    .line 196
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 197
    const-string v3, "EM/HQA/NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 200
    :cond_1
    return-void

    .line 120
    :sswitch_0
    const-string v2, "ReaderMode Rsp Result: SUCCESS"

    .line 121
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mBtnStart:Landroid/widget/Button;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$400(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    const v5, 0x7f0804aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->setButtonsStatus(Z)V
    invoke-static {v3, v7}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$500(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #calls: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->setButtonsStatus(Z)V
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$500(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)V

    goto :goto_0

    .line 129
    :sswitch_1
    const-string v2, "ReaderMode Rsp Result: FAIL"

    .line 130
    goto :goto_0

    .line 132
    :sswitch_2
    const-string v2, "ReaderMode Rsp Result: INVALID_FORMAT"

    .line 133
    goto :goto_0

    .line 135
    :sswitch_3
    const-string v2, "ReaderMode Rsp Result: INVALID_NDEF_FORMAT"

    .line 136
    goto :goto_0

    .line 138
    :sswitch_4
    const-string v2, "ReaderMode Rsp Result: NDEF_EOF_REACHED"

    .line 139
    goto :goto_0

    .line 141
    :sswitch_5
    const-string v2, "ReaderMode Rsp Result: NOT_SUPPORT"

    .line 142
    goto :goto_0

    .line 147
    :cond_3
    const/16 v3, 0x64

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_0

    .line 148
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->mResult:I

    packed-switch v3, :pswitch_data_0

    .line 181
    const-string v3, "EM/HQA/NFC"

    const-string v4, "ReaderMode Ntf Result: ERROR"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$600(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 183
    const-string v2, "Tag is not NDEF format"

    goto :goto_0

    .line 150
    :pswitch_0
    const-string v2, "ReaderMode Ntf Result: CONNECT"

    .line 151
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$600(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->mIsNdef:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->mIsNdef:I

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->mIsNdef:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 153
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "reader_mode_rsp_array"

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 155
    const-string v3, "reader_mode_rsp_ndef"

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v4

    iget v4, v4, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->mIsNdef:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    const-class v4, Lcom/mediatek/engineermode/hqanfc/RwFunction;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$700(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #setter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$802(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)Z

    .line 159
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 163
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v2, "ReaderMode Ntf Result: DISCONNECT"

    .line 164
    goto/16 :goto_0

    .line 167
    :pswitch_2
    const-string v3, "EM/HQA/NFC"

    const-string v4, "[ReaderMode]Ntf Result: FAIL"

    invoke-static {v3, v4}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRunInBack:Z
    invoke-static {v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$600(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    const-string v2, "ReaderMode Ntf Result: FAIL"

    goto/16 :goto_0

    .line 171
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "reader_mode_rsp_array"

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 173
    const-string v3, "reader_mode_rsp_ndef"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    const-class v4, Lcom/mediatek/engineermode/hqanfc/RwFunction;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$700(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #setter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$802(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)Z

    .line 177
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, defaultIntent:Landroid/content/Intent;
    const-string v3, "reader_mode_rsp_array"

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 187
    const-string v3, "reader_mode_rsp_ndef"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    const-class v4, Lcom/mediatek/engineermode/hqanfc/RwFunction;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    iget-object v4, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$700(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #setter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mUnregisterReceiver:Z
    invoke-static {v3, v6}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$802(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Z)Z

    .line 191
    iget-object v3, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$2;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_5
        0x20 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
