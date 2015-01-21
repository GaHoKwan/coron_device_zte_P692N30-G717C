.class Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 43
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[PnfcCommand]mReceiver onReceive"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.hqanfc.116"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    #setter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mRspArray:[B
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$002(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;[B)[B

    .line 50
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$000(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$000(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 52
    .local v1, buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;-><init>()V

    #setter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$102(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;

    .line 53
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$100(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPnfcRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 54
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/PnfcCommand$1;->this$0:Lcom/mediatek/engineermode/hqanfc/PnfcCommand;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/PnfcCommand;->access$200(Lcom/mediatek/engineermode/hqanfc/PnfcCommand;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[PnfcCommand]Other response"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
