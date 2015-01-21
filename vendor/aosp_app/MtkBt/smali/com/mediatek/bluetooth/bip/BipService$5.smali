.class Lcom/mediatek/bluetooth/bip/BipService$5;
.super Landroid/os/Handler;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipService;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 464
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler(): got msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$1100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    const-string v1, "BipService"

    const-string v2, "Service does not start"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 473
    :pswitch_1
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_ENABLE_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    .line 475
    const-string v1, "BipService"

    const-string v2, "enable error, disable bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisable()Z

    goto :goto_0

    .line 480
    :cond_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->initiatorWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1200(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->executeJob()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1400(Lcom/mediatek/bluetooth/bip/BipService;)V

    goto :goto_0

    .line 488
    :pswitch_2
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_DISABLE_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    .line 490
    const-string v1, "BipService"

    const-string v2, "disable error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->initiatorWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1200(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1500(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_0

    .line 502
    :pswitch_3
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ON_BIPI_OBEX_AUTHREQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/bip/BipAuthentication;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    .local v12, intent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 506
    const-string v1, "com.mediatek.bluetooth.bipauthentication.extra.FROM"

    const-string v2, "BIPI"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_4

    .line 508
    const-string v1, "com.mediatek.bluetooth.bipauthentication.extra.NEED_USERID"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v1, v12}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 511
    :cond_4
    const-string v1, "com.mediatek.bluetooth.bipauthentication.extra.NEED_USERID"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 518
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_4
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_CONNECT_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 520
    const-string v1, "BipService"

    const-string v2, "connect error, disable bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 522
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisable()Z

    goto/16 :goto_0

    .line 528
    :pswitch_5
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_GET_CAPABILITYT_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_5

    .line 530
    const-string v1, "BipService"

    const-string v2, "get capability error, disconnect bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070019

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const-wide/16 v2, 0x0

    const/16 v4, 0xd

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    .line 533
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 534
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnect(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 537
    :cond_5
    const-string v1, "BipService"

    const-string v2, "get capability success"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/mediatek/bluetooth/bip/Capability;

    .line 542
    .local v15, remoteCapaObj:Lcom/mediatek/bluetooth/bip/Capability;
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget-object v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tEncoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget-object v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tWidth2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Width2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tHeight2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Height2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tTransform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Transform:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tNumFormats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    iget v1, v15, Lcom/mediatek/bluetooth/bip/Capability;->NumImageFormats:I

    if-ge v11, v1, :cond_6

    .line 553
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupEncoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v3, v3, v11

    iget-object v3, v3, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tSupWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tSupHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tSupWidth2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tSupHeight2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tSupSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    aget-object v3, v3, v11

    iget v3, v3, Lcom/mediatek/bluetooth/bip/ImageFormat;->Size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 562
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v16, v0

    new-instance v1, Lcom/mediatek/bluetooth/bip/BipImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1800(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$1900(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectSize:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2000(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectMime:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/bluetooth/bip/BipService;->access$2100(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/bluetooth/bip/BipImage;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, v16

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1702(Lcom/mediatek/bluetooth/bip/BipService;Lcom/mediatek/bluetooth/bip/BipImage;)Lcom/mediatek/bluetooth/bip/BipImage;

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1700(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BipImage;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->compareImgFormat(Lcom/mediatek/bluetooth/bip/Capability;Lcom/mediatek/bluetooth/bip/BipImage;)Z
    invoke-static {v1, v15, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2200(Lcom/mediatek/bluetooth/bip/BipService;Lcom/mediatek/bluetooth/bip/Capability;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 567
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/Context;ZI)V

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$1700(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BipImage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiPushImage(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    goto/16 :goto_0

    .line 572
    :cond_7
    const-string v1, "BipService"

    const-string v2, "Responder dosen\'t support this format"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/bip/BipInitPushConfirmation;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v1, v12}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 579
    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 586
    .end local v11           #i:I
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #remoteCapaObj:Lcom/mediatek/bluetooth/bip/Capability;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const v3, 0x7f07001b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorObjectName:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/bluetooth/bip/BipService;->access$2400(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 587
    const-string v1, "BipService"

    const-string v2, "BIPI_IMAGE_PUSH_START"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    :pswitch_7
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_PROGRESS_IND: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    const/16 v4, 0xb

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    goto/16 :goto_0

    .line 601
    :pswitch_8
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_PUSH_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_9

    .line 603
    const-string v1, "BipService"

    const-string v2, "push error, disconnect bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$200()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    .line 605
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.bipinitpushconfirmation.action.TIMEOUT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v8, bIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v1, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 609
    .end local v8           #bIntent:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const-wide/16 v2, 0x0

    const/16 v4, 0xd

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    .line 618
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnect(Ljava/lang/String;)Z

    .line 619
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    goto/16 :goto_0

    .line 613
    :cond_9
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1700(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BipImage;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/bluetooth/bip/BipImage;->Size:I

    int-to-long v2, v2

    const/16 v4, 0xc

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    goto :goto_3

    .line 624
    :pswitch_9
    const-string v1, "BipService"

    const-string v2, "BIPI_THUMBNAIL_REQ"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$1700(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BipImage;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiPushThumbnail(Ljava/lang/String;Lcom/mediatek/bluetooth/bip/BipImage;)Z

    .line 628
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    goto/16 :goto_0

    .line 633
    :pswitch_a
    const-string v1, "BipService"

    const-string v2, "BIPI_THUMBNAIL_PUSH_START"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 638
    :pswitch_b
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_THUMBNAIL_PUSH_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_a

    .line 640
    const-string v1, "BipService"

    const-string v2, "push thumbnail error, disconnect bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const-wide/16 v2, 0x0

    const/16 v4, 0xd

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    .line 650
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorRemoteBtAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$300(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->bipiDisconnect(Ljava/lang/String;)Z

    .line 651
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$202(I)I

    goto/16 :goto_0

    .line 646
    :cond_a
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mInitiatorImageObject:Lcom/mediatek/bluetooth/bip/BipImage;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1700(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BipImage;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/bluetooth/bip/BipImage;->Size:I

    int-to-long v2, v2

    const/16 v4, 0xc

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    goto :goto_4

    .line 656
    :pswitch_c
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_DISCONNECT_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_b

    .line 658
    const-string v1, "BipService"

    const-string v2, "disconnect error, disable bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/Context;ZI)V

    .line 664
    const-wide/16 v1, 0x294

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->executeJob()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1400(Lcom/mediatek/bluetooth/bip/BipService;)V

    goto/16 :goto_0

    .line 665
    :catch_0
    move-exception v10

    .line 666
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 673
    .end local v10           #e:Ljava/lang/InterruptedException;
    :pswitch_d
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPI_CANCEL_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 675
    const-string v1, "BipService"

    const-string v2, "cancel error, disconnecting..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 684
    :pswitch_e
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPR_ENABLE_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c

    .line 686
    const-string v1, "BipService"

    const-string v2, "enable error, disable bipr"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisable()Z

    .line 688
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    goto/16 :goto_0

    .line 691
    :cond_c
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/Context;ZI)V

    goto/16 :goto_0

    .line 698
    :pswitch_f
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPR_DISABLE_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_d

    .line 700
    const-string v1, "BipService"

    const-string v2, "disable error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_d
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 709
    :pswitch_10
    const-string v1, "BipService"

    const-string v2, "BIPR_AUTH_REQ"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 711
    .local v7, Str:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2502(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$802(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;

    .line 713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$2500(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const-string v2, "UNKNOWN DEVICE"

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2502(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    :cond_e
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprAuthorizeRsp(I)Z

    goto/16 :goto_0

    .line 724
    .end local v7           #Str:[Ljava/lang/String;
    :pswitch_11
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_ON_BIPI_OBEX_AUTHREQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/bip/BipAuthentication;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    .restart local v12       #intent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 728
    const-string v1, "com.mediatek.bluetooth.bipauthentication.extra.FROM"

    const-string v2, "BIPR"

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_f

    .line 730
    const-string v1, "com.mediatek.bluetooth.bipauthentication.extra.NEED_USERID"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v1, v12}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 733
    :cond_f
    const-string v1, "com.mediatek.bluetooth.bipauthentication.extra.NEED_USERID"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    .line 740
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_12
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPR_CONNECT_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 742
    const-string v1, "BipService"

    const-string v2, "connect error, disable bipi"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisable()Z

    .line 744
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    goto/16 :goto_0

    .line 752
    :pswitch_13
    const/16 v1, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$2600()I

    move-result v1

    const v2, 0x26259fe

    if-ge v1, v2, :cond_10

    .line 754
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$2608()I

    .line 761
    :goto_7
    const-string v1, "BipService"

    const-string v2, "MSG_ON_BIPR_GET_CAPABILITY"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v9, Lcom/mediatek/bluetooth/bip/Capability;

    const/4 v1, 0x4

    invoke-direct {v9, v1}, Lcom/mediatek/bluetooth/bip/Capability;-><init>(I)V

    .line 765
    .local v9, capaObj:Lcom/mediatek/bluetooth/bip/Capability;
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const-string v2, "1.0"

    iput-object v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Version:Ljava/lang/String;

    .line 766
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const-string v2, "JPEG"

    iput-object v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Encoding:Ljava/lang/String;

    .line 767
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Width:I

    .line 768
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Height:I

    .line 769
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const v2, 0xffff

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Width2:I

    .line 770
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const v2, 0xffff

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Height2:I

    .line 771
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const v2, 0x1312d00

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Size:I

    .line 772
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->PreferFormat:Lcom/mediatek/bluetooth/bip/ImageDescriptor;

    const/4 v2, 0x0

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageDescriptor;->Transform:I

    .line 774
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "JPEG"

    iput-object v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    .line 775
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    .line 776
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    .line 777
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0xffff

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    .line 778
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0xffff

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    .line 779
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0x1312d00

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Size:I

    .line 781
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "PNG"

    iput-object v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    .line 782
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    .line 783
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    .line 784
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const v2, 0xffff

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    .line 785
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const v2, 0xffff

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    .line 786
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const v2, 0x1312d00

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Size:I

    .line 788
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-string v2, "BMP"

    iput-object v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    .line 789
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    .line 790
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    .line 791
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/16 v2, 0x7d0

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    .line 792
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/16 v2, 0x7d0

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    .line 793
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const v2, 0x1312d00

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Size:I

    .line 795
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-string v2, "GIF"

    iput-object v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Encoding:Ljava/lang/String;

    .line 796
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width:I

    .line 797
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height:I

    .line 798
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/16 v2, 0x7d0

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Width2:I

    .line 799
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/16 v2, 0x7d0

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Height2:I

    .line 800
    iget-object v1, v9, Lcom/mediatek/bluetooth/bip/Capability;->ImageFormats:[Lcom/mediatek/bluetooth/bip/ImageFormat;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const v2, 0x1312d00

    iput v2, v1, Lcom/mediatek/bluetooth/bip/ImageFormat;->Size:I

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v9}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprGetCapabilityRsp(ILcom/mediatek/bluetooth/bip/Capability;)Z

    goto/16 :goto_0

    .line 757
    .end local v9           #capaObj:Lcom/mediatek/bluetooth/bip/Capability;
    :cond_10
    const v1, 0x2160ec1

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$2602(I)I

    goto/16 :goto_7

    .line 808
    :pswitch_14
    const-string v1, "BipService"

    const-string v2, "MSG_ON_BIPR_CAPABILITY_RES"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 810
    const-string v1, "BipService"

    const-string v2, "issue capability response error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    :pswitch_15
    const-string v1, "BipService"

    const-string v2, "MSG_ON_BIPR_ACCESS_REQ"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$2702(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;

    .line 823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2802(Lcom/mediatek/bluetooth/bip/BipService;I)I

    .line 825
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07001a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 827
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    goto/16 :goto_0

    .line 835
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 836
    .local v14, recvPath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    .local v13, recvDirectory:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 839
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 841
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectPath:Ljava/lang/String;
    invoke-static {v1, v14}, Lcom/mediatek/bluetooth/bip/BipService;->access$2902(Lcom/mediatek/bluetooth/bip/BipService;Ljava/lang/String;)Ljava/lang/String;

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$3002(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 845
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "state"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "result"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$2700(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "uri"

    const-string v3, "xxx"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2900(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2700(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "mime"

    const-string v3, "image/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "peer_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$2500(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "peer_addr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteBtAddr:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$800(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "total"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$2800(Lcom/mediatek/bluetooth/bip/BipService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "done"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$100(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderValues:Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$3000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderJobUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$3102(Lcom/mediatek/bluetooth/bip/BipService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 860
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$3200()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->biprAccept()V
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3300(Lcom/mediatek/bluetooth/bip/BipService;)V

    goto/16 :goto_0

    .line 863
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    div-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    const/4 v4, 0x1

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    .line 864
    const/16 v1, 0x1f

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 871
    .end local v13           #recvDirectory:Ljava/io/File;
    .end local v14           #recvPath:Ljava/lang/String;
    :pswitch_16
    const-string v1, "BipService"

    const-string v2, "MSG_ON_BIPR_IMAGE_RECEIVE_START"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3400(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$3500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_0

    .line 878
    :pswitch_17
    const-string v1, "BipService"

    const-string v2, "BIPR_PROGRESS_IND"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2802(Lcom/mediatek/bluetooth/bip/BipService;I)I

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderReceivingSize:I
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$3602(Lcom/mediatek/bluetooth/bip/BipService;I)I

    .line 883
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 884
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    const/16 v4, 0x15

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    goto/16 :goto_0

    .line 890
    :pswitch_18
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPR_RECEIVE_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 892
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$3500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1500(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 894
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_16

    .line 896
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$700()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_14

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mNotificationMgr:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$900(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x26259ff

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 899
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.mediatek.bluetooth.biprpushconfirmation.action.CANCEL_BY_PEER"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .restart local v8       #bIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-virtual {v1, v8}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 902
    .end local v8           #bIntent:Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const-wide/16 v2, 0x0

    const/16 v4, 0x17

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    .line 903
    const-string v1, "BipService"

    const-string v2, "receive error, disconnect bipr"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    .line 918
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderRemoteDevName:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$2500(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 919
    const/16 v1, 0x21

    const-wide/16 v2, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 924
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3400(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mMediaScannerConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3400(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/media/MediaScannerConnection;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/bluetooth/util/SystemUtils;->getReceivedFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/bluetooth/bip/BipService;->access$2700(Lcom/mediatek/bluetooth/bip/BipService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 908
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderReceivingSize:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3600(Lcom/mediatek/bluetooth/bip/BipService;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2800(Lcom/mediatek/bluetooth/bip/BipService;)I

    move-result v2

    if-eq v1, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderReceivingSize:I
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3600(Lcom/mediatek/bluetooth/bip/BipService;)I

    move-result v1

    if-nez v1, :cond_18

    .line 909
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mResponderObjectSize:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$2800(Lcom/mediatek/bluetooth/bip/BipService;)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x16

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    goto/16 :goto_8

    .line 912
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    const-wide/16 v2, 0x0

    const/16 v4, 0x17

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->createBipNotification(JI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$1600(Lcom/mediatek/bluetooth/bip/BipService;JI)V

    goto/16 :goto_8

    .line 938
    :pswitch_19
    const/16 v1, 0x21

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 941
    const-string v1, "BipService"

    const-string v2, "MSG_ON_BIPR_THUMBNAIL_RECEIVE_START"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 946
    :pswitch_1a
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPR_THUMBNAIL_RECEIVE_CNF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_19

    .line 948
    const-string v1, "BipService"

    const-string v2, "receive error, disconnect bipr"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_19
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mBipServer:Lcom/mediatek/bluetooth/bip/BluetoothBipServer;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$600(Lcom/mediatek/bluetooth/bip/BipService;)Lcom/mediatek/bluetooth/bip/BluetoothBipServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/bluetooth/bip/BluetoothBipServer;->biprDisconnect()Z

    goto/16 :goto_0

    .line 957
    :pswitch_1b
    const-string v1, "BipService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BIPR_DISCONNECT_RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1a

    .line 959
    const-string v1, "BipService"

    const-string v2, "disconnect error, disable bipr"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_1a
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$2600()I

    move-result v1

    const v2, 0x26259fe

    if-ge v1, v2, :cond_1b

    .line 964
    invoke-static {}, Lcom/mediatek/bluetooth/bip/BipService;->access$2608()I

    .line 969
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1000(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->sendStateChangedBroadcast(Landroid/content/Context;ZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/bluetooth/bip/BipService;->access$2300(Lcom/mediatek/bluetooth/bip/BipService;Landroid/content/Context;ZI)V

    .line 970
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$702(I)I

    .line 971
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->responderWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$3500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/bip/BipService;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v1, v2}, Lcom/mediatek/bluetooth/bip/BipService;->access$1500(Lcom/mediatek/bluetooth/bip/BipService;Landroid/os/PowerManager$WakeLock;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/bluetooth/bip/BipService$5;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mCallbackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$500(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 967
    :cond_1b
    const v1, 0x2160ec1

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$2602(I)I

    goto :goto_9

    .line 977
    :pswitch_1c
    const-string v1, "BipService"

    const-string v2, "MSG_ON_BIPR_ALWAYS_ACCEPT"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/bluetooth/bip/BipService;->access$3202(Z)Z

    goto/16 :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method
