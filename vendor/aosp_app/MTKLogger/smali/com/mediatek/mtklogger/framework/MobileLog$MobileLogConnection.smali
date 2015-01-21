.class Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;
.super Lcom/mediatek/mtklogger/framework/LogConnection;
.source "MobileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MobileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileLogConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MobileLog;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/framework/MobileLog;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "socketName"
    .parameter "handler"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    .line 334
    invoke-direct {p0, p2, p3}, Lcom/mediatek/mtklogger/framework/LogConnection;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 335
    return-void
.end method


# virtual methods
.method public dealWithResponse([BLandroid/os/Handler;)V
    .locals 8
    .parameter "respBuffer"
    .parameter "handler"

    .prologue
    .line 339
    invoke-super {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/LogConnection;->dealWithResponse([BLandroid/os/Handler;)V

    .line 340
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 341
    .local v4, respStr:Ljava/lang/String;
    const-string v5, "MTKLogger/MobileLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->dealWithResponse(), resp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 343
    :cond_0
    const-string v5, "MTKLogger/MobileLog"

    const-string v6, "Get an empty response from native, ignore it."

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v5, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v5, v5, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "mobilelog_enable"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, formerStatus:I
    const/4 v3, 0x0

    .line 350
    .local v3, msgType:I
    const/4 v2, -0x1

    .line 351
    .local v2, msgArg1:I
    const/4 v0, 0x0

    .line 352
    .local v0, extraStr:Ljava/lang/String;
    const-string v5, "copy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "deep_start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 353
    :cond_2
    const/16 v3, 0x19

    .line 354
    const-string v5, ",1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    const/4 v2, 0x1

    .line 392
    :cond_3
    :goto_1
    const/4 v5, -0x1

    invoke-virtual {p2, v3, v2, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 356
    :cond_4
    const-string v5, ",0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    const/4 v2, 0x0

    .line 358
    const-string v0, "4"

    goto :goto_1

    .line 360
    :cond_5
    const-string v5, "stop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "deep_stop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 361
    :cond_6
    const-string v5, "MTKLogger/MobileLog"

    const-string v6, "At present, ignore stop command response, just stop log directly"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_7
    const-string v5, "mblog_running"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 364
    if-nez v1, :cond_8

    .line 365
    const/16 v3, 0x19

    .line 366
    const/4 v2, 0x1

    goto :goto_1

    .line 368
    :cond_8
    const-string v5, "MTKLogger/MobileLog"

    const-string v6, "Log already in running status, ingore new running report from native"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_9
    const-string v5, "mblog_stopped"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 372
    const/4 v5, 0x1

    if-ne v1, v5, :cond_a

    .line 373
    const/16 v3, 0x19

    .line 374
    const/4 v2, 0x0

    goto :goto_1

    .line 376
    :cond_a
    const-string v5, "MTKLogger/MobileLog"

    const-string v6, "Log alraedy in stop status, ingore new stopped report from native"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_b
    const-string v5, "die"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 380
    const-string v5, "MTKLogger/MobileLog"

    const-string v6, "Got a die message from native"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/16 v3, 0x16

    goto :goto_1

    .line 382
    :cond_c
    const-string v5, "storage_full"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 383
    const/16 v3, 0x19

    .line 384
    const/4 v2, 0x0

    .line 385
    const-string v0, "3"

    goto :goto_1

    .line 386
    :cond_d
    const-string v5, "log_folder_lost"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    const/16 v3, 0x19

    .line 388
    const/4 v2, 0x0

    .line 389
    const-string v0, "8"

    goto/16 :goto_1
.end method
