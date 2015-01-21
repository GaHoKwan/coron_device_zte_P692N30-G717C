.class Lcom/mediatek/FMRadio/FMRadioEngineer$2;
.super Landroid/os/Handler;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 320
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> handleMessage ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "FMRadioEngineer"

    const-string v2, "Warning: app is being destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< handleMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MSGID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v5, v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    const-string v1, "FMRadioEngineer"

    const-string v2, "The antenna is still not pluged in."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    :goto_1
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< handleMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 338
    const-string v1, "FMRadioEngineer"

    const-string v2, "should search channel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    :cond_3
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 343
    const-string v1, "FMRadioEngineer"

    const-string v2, "should tuneToStation."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 345
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 346
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->showRDS()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2600(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    goto :goto_1

    .line 348
    :cond_5
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 350
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    goto :goto_1

    .line 355
    :cond_6
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 358
    const-string v1, "FMRadioEngineer"

    const-string v2, "should tuneToStation and seek station."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    :cond_7
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 362
    const-string v1, "FMRadioEngineer"

    const-string v2, "should seek station."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 364
    :cond_8
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_9

    .line 366
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V
    invoke-static {v1, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    goto/16 :goto_1

    .line 368
    :cond_9
    const/16 v1, 0x9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 369
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V
    invoke-static {v1, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    goto/16 :goto_1

    .line 375
    :cond_a
    const/16 v1, 0xa

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 383
    const/16 v1, 0xb

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 384
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TYPE_TOAST_STRING"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2700(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 387
    .end local v0           #text:Ljava/lang/String;
    :cond_b
    const/16 v1, 0xd

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 389
    const-string v1, "FMRadioEngineer"

    const-string v2, "ENTER MSGID_INIT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z
    invoke-static {v1, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1302(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 396
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->enablePSRT(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2800(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v2

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->enableAF(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2900(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    .line 402
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isEarphoneUsed()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 404
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-virtual {v1, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->switchAntenna(I)I

    .line 410
    :goto_2
    const-string v1, "FMRadioEngineer"

    const-string v2, "Leave MSGID_INIT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 408
    :cond_c
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-virtual {v1, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->switchAntenna(I)I

    goto :goto_2
.end method
