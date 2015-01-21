.class Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, msg_flag:I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 210
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, act:Ljava/lang/String;
    const/4 v2, 0x0

    .line 213
    .local v2, path:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 214
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 236
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEDIA_EJECT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mServerTransferName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mClientTransferName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abort server transferring, file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mServerTransferName:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$100(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->serverAbortReqNative()Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$400(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z

    .line 244
    :cond_0
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v4

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientState:I
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$500(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)I

    move-result v4

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_2

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Abort client transferring, file:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #getter for: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->mClientTransferName:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$200(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printLog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$300(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    .line 247
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->clientAbortReqNative()Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$600(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;)Z

    .line 312
    :cond_2
    :goto_0
    return-void

    .line 216
    :cond_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService$1;->this$0:Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;

    const-string v5, "No path specified."

    #calls: Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->printErr(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;->access$000(Lcom/mediatek/bluetooth/ftp/BluetoothFtpService;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_4
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method
