.class Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;
.super Landroid/os/Handler;
.source "BluetoothBppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v7, 0x64

    const v9, 0x7f070045

    const/4 v8, 0x1

    .line 233
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler(): got msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 238
    :pswitch_0
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BPP_ENABLE_RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    .line 240
    const-string v4, "BluetoothBppManager"

    const-string v5, "enable error, stop bpp server"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070027

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 242
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisable()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->sendStateChangedBroadcast(Landroid/content/Context;I)V
    invoke-static {v4, v5, v8}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$600(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Landroid/content/Context;I)V

    goto :goto_0

    .line 253
    :pswitch_1
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BPP_DISABLE_RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    .line 255
    const-string v4, "BluetoothBppManager"

    const-string v5, "disable error"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->disableService()V

    .line 258
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->sendStateChangedBroadcast(Landroid/content/Context;I)V
    invoke-static {v4, v5, v11}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$600(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Landroid/content/Context;I)V

    .line 259
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 265
    :pswitch_2
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONNECT_CNF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    .line 268
    const-string v4, "BluetoothBppManager"

    const-string v5, "Connect fail, stop bpp server"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070028

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 270
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisable()V

    goto/16 :goto_0

    .line 275
    :cond_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z
    invoke-static {v4, v8}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$702(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z

    goto/16 :goto_0

    .line 282
    :pswitch_3
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_PRINTER_ATTR_CNF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$302(I)I

    .line 284
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 286
    const-string v4, "BluetoothBppManager"

    const-string v5, "get attributes error"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070029

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 289
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$700(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z

    move-result v4

    if-ne v4, v8, :cond_0

    .line 291
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    goto/16 :goto_0

    .line 294
    :cond_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v8, :cond_5

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/x-vcard:3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 296
    const-string v4, "BluetoothBppManager"

    const-string v5, "special printer: HP Photosmart D7200 series "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$900()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v11

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 299
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$700(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z

    move-result v4

    if-ne v4, v8, :cond_0

    .line 301
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    goto/16 :goto_0

    .line 310
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;

    .line 314
    .local v2, printerAttrObj:Lcom/mediatek/bluetooth/bpp/PrinterAttr;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/mediatek/bluetooth/bpp/BluetoothBppPrintJobSettings;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.papersize"

    iget-object v5, v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->MediaSize:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.copies"

    iget v5, v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->MaxCopies:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.sides"

    iget-object v5, v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->Sides:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.pagespersheet"

    iget-object v5, v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->MaxNumberup:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.orientation"

    iget-object v5, v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->Orientations:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.quality"

    iget-object v5, v2, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->Qualities:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v4, " com.mediatek.bluetooth.bppprintjobsettings.extra.filename"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.ATTR_UPDATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, intent_update:Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 337
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intent_update:Landroid/content/Intent;
    .end local v2           #printerAttrObj:Lcom/mediatek/bluetooth/bpp/PrinterAttr;
    :pswitch_4
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRINT_DOC_CNF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mTransContinue:Z
    invoke-static {v4, v10}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1102(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z

    .line 340
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_6

    .line 341
    const-string v4, "BluetoothBppManager"

    const-string v5, "print doc error"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v4, "BluetoothBppManager"

    const-string v5, "print doc error - SEND broadcast to DIALOG"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    iget-object v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    iget-object v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->createBppNotification(IILjava/lang/String;I)V
    invoke-static {v4, v10, v7, v5, v6}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1200(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;IILjava/lang/String;I)V

    .line 371
    :goto_1
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisconnect()V

    goto/16 :goto_0

    .line 357
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    const-string v4, "BluetoothBppManager"

    const-string v5, "print doc success"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v4, "BluetoothBppManager"

    const-string v5, "print doc success - SEND broadcast to DIALOG"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.DIALOG_TYPE"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    iget-object v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    iget-object v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->createBppNotification(IILjava/lang/String;I)V
    invoke-static {v4, v7, v7, v5, v11}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1200(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;IILjava/lang/String;I)V

    goto :goto_1

    .line 377
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_5
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CANCEL_CNF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_7

    .line 380
    const-string v4, "BluetoothBppManager"

    const-string v5, "cancel error"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 385
    :cond_7
    const-string v4, "BluetoothBppManager"

    const-string v5, "cancel success"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 397
    :pswitch_6
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISCONNECT_CNF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8

    .line 400
    const-string v4, "BluetoothBppManager"

    const-string v5, "disconnect error, stop bpp server"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_2
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mConnected:Z
    invoke-static {v4, v10}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$702(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z

    .line 408
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mBppServer:Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$100(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppServer;->bppDisable()V

    goto/16 :goto_0

    .line 404
    :cond_8
    const-string v4, "BluetoothBppManager"

    const-string v5, "disconnect success, stop bpp server"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 415
    :pswitch_7
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sentdatalength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\ttotaldatalength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #setter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mTransContinue:Z
    invoke-static {v4, v8}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1102(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;Z)Z

    .line 418
    iget v4, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, p1, Landroid/os/Message;->arg2:I

    div-int/2addr v4, v5

    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1302(I)I

    .line 419
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1300()I

    move-result v4

    if-ne v4, v7, :cond_9

    .line 420
    const/16 v4, 0x63

    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1302(I)I

    .line 422
    :cond_9
    const-string v4, "BluetoothBppManager"

    const-string v5, "print progress ind - SEND broadcast to DIALOG"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1300()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    iget-object v5, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1300()I

    move-result v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_a

    .line 433
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$500(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const/16 v5, 0x63

    iget-object v6, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->createBppNotification(IILjava/lang/String;I)V
    invoke-static {v4, v5, v7, v6, v8}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1200(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 440
    :cond_a
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$500(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 442
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->createBppNotification(IILjava/lang/String;I)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1200(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 454
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_8
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jobstatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v4, "BluetoothBppManager"

    const-string v5, "job status indpr ind - SEND broadcast to DIALOG"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.mediatek.bluetooth.bppprinting.action.PRINTING_UPDATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.PERCENTAGE"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1300()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.FILE_NAME"

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const/4 v3, 0x0

    .line 463
    .local v3, reason:Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    .line 498
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 501
    :goto_3
    const-string v4, "com.mediatek.bluetooth.bppprinting.extra.REASON"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    #getter for: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->mJobCanceled:Z
    invoke-static {v4}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$500(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1300()I

    move-result v5

    #calls: Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->createBppNotification(IILjava/lang/String;I)V
    invoke-static {v4, v5, v7, v3, v8}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$1200(Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 465
    :pswitch_9
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 466
    goto :goto_3

    .line 468
    :pswitch_a
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f07003b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 469
    goto :goto_3

    .line 471
    :pswitch_b
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f07003c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    goto :goto_3

    .line 474
    :pswitch_c
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f07003d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 475
    goto :goto_3

    .line 477
    :pswitch_d
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f07003e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 478
    goto :goto_3

    .line 480
    :pswitch_e
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f07003f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 481
    goto :goto_3

    .line 483
    :pswitch_f
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f070040

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 484
    goto :goto_3

    .line 486
    :pswitch_10
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f070041

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 487
    goto :goto_3

    .line 489
    :pswitch_11
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f070042

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 490
    goto :goto_3

    .line 492
    :pswitch_12
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f070043

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    goto :goto_3

    .line 495
    :pswitch_13
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    const v5, 0x7f070044

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    goto/16 :goto_3

    .line 514
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #reason:Ljava/lang/String;
    :pswitch_14
    const-string v4, "BluetoothBppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_ON_BPP_AUTH_IND:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;->access$200()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/mediatek/bluetooth/bpp/BluetoothBppAuthenticating;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v4, 0x5000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    iget-object v4, p0, Lcom/mediatek/bluetooth/bpp/BluetoothBppManager$3;->this$0:Lcom/mediatek/bluetooth/bpp/BluetoothBppManager;

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_14
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_1
    .end packed-switch

    .line 463
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
