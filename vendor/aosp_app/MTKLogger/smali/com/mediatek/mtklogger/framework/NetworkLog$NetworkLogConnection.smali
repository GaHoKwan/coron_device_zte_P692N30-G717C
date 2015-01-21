.class Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;
.super Lcom/mediatek/mtklogger/framework/LogConnection;
.source "NetworkLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/NetworkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkLogConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/framework/NetworkLog;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "sockname"
    .parameter "handler"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    .line 338
    sget-object v0, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, p2, v0, p3}, Lcom/mediatek/mtklogger/framework/LogConnection;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;Landroid/os/Handler;)V

    .line 339
    return-void
.end method


# virtual methods
.method public dealWithResponse([BLandroid/os/Handler;)V
    .locals 6
    .parameter "respBuffer"
    .parameter "handler"

    .prologue
    const/4 v5, 0x0

    .line 343
    invoke-super {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/LogConnection;->dealWithResponse([BLandroid/os/Handler;)V

    .line 344
    const-string v2, "MTKLogger/NetworkLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->dealWithResponse(), resp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 346
    :cond_0
    const-string v2, "MTKLogger/NetworkLog"

    const-string v3, "Get an invalid response from native, ignore it."

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 350
    :cond_1
    const/16 v1, 0x20

    .line 351
    .local v1, respType:I
    aget-byte v2, p1, v5

    packed-switch v2, :pswitch_data_0

    .line 374
    :pswitch_0
    add-int/lit8 v1, v1, 0x8

    .line 375
    const-string v2, "MTKLogger/NetworkLog"

    const-string v3, "Unknown response type"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_1
    const/4 v0, 0x0

    .line 380
    .local v0, failReason:Ljava/lang/String;
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    sparse-switch v2, :sswitch_data_0

    .line 397
    const-string v2, "MTKLogger/NetworkLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unkonwn response value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_2
    const-string v2, "MTKLogger/NetworkLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from native type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    if-eqz p2, :cond_2

    .line 402
    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 353
    .end local v0           #failReason:Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 354
    goto :goto_1

    .line 356
    :pswitch_2
    add-int/lit8 v1, v1, 0x2

    .line 357
    goto :goto_1

    .line 359
    :pswitch_3
    add-int/lit8 v1, v1, 0x4

    .line 360
    goto :goto_1

    .line 362
    :pswitch_4
    add-int/lit8 v1, v1, 0x5

    .line 363
    goto :goto_1

    .line 365
    :pswitch_5
    add-int/lit8 v1, v1, 0x6

    .line 366
    goto :goto_1

    .line 368
    :pswitch_6
    add-int/lit8 v1, v1, 0x3

    .line 369
    goto :goto_1

    .line 371
    :pswitch_7
    add-int/lit8 v1, v1, 0x7

    .line 372
    goto :goto_1

    .line 382
    .restart local v0       #failReason:Ljava/lang/String;
    :sswitch_0
    const-string v0, ""

    .line 383
    goto :goto_2

    .line 385
    :sswitch_1
    const-string v0, "12"

    .line 386
    goto :goto_2

    .line 388
    :sswitch_2
    const-string v0, "10"

    .line 389
    goto :goto_2

    .line 391
    :sswitch_3
    const-string v0, "3"

    .line 392
    goto :goto_2

    .line 394
    :sswitch_4
    const-string v0, "8"

    .line 395
    goto :goto_2

    .line 404
    :cond_2
    const-string v2, "MTKLogger/NetworkLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to send message["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], but handler is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x67 -> :sswitch_4
        0x6c -> :sswitch_3
        0x6f -> :sswitch_0
        0x77 -> :sswitch_1
    .end sparse-switch
.end method
