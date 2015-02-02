.class Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;
.super Landroid/os/Handler;
.source "FunctionRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/FunctionRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    const/16 v1, 0x12c

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, toastMsg:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$100(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;->mResult:I

    packed-switch v1, :pswitch_data_0

    .line 90
    const-string v0, "Function Read Rsp Result: ERROR"

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    .end local v0           #toastMsg:Ljava/lang/String;
    :cond_0
    return-void

    .line 83
    .restart local v0       #toastMsg:Ljava/lang/String;
    :pswitch_0
    const-string v0, "Function Read Rsp Result: SUCCESS"

    .line 84
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$2;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$100(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;->mTagReadNdef:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;

    #calls: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->updateUi(Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$300(Lcom/mediatek/engineermode/hqanfc/FunctionRead;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcTagReadNdef;)V

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v0, "Function Read Rsp Result: FAIL"

    .line 88
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
