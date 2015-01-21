.class final Lcom/mediatek/mtklogger/framework/LogInstance$1;
.super Landroid/os/Handler;
.source "LogInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/LogInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    .line 268
    sget-object v7, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    monitor-enter v7

    .line 269
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 270
    .local v0, icon:I
    sget-object v6, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 271
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v8, v9, v0, v10}, Lcom/mediatek/mtklogger/framework/LogInstance;->showLogStatusInNotificationBar(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    :goto_0
    invoke-static {}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$100()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 290
    invoke-static {}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$200()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 291
    monitor-exit v7

    .line 293
    .end local v0           #icon:I
    :cond_0
    return-void

    .line 273
    .restart local v0       #icon:I
    :cond_1
    sget-object v6, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    const v8, 0x7f070004

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, notificationTitle:Ljava/lang/String;
    sget-object v6, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    const v8, 0x7f070005

    const v9, 0x7f070006

    #calls: Lcom/mediatek/mtklogger/framework/LogInstance;->getLogStateDescStr(Ljava/util/Map;II)Ljava/lang/String;
    invoke-static {v6, v8, v9}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$000(Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, notificationSummary:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$100()Ljava/util/HashMap;

    move-result-object v6

    const v8, 0x7f070005

    const v9, 0x7f070006

    #calls: Lcom/mediatek/mtklogger/framework/LogInstance;->getLogStateDescStr(Ljava/util/Map;II)Ljava/lang/String;
    invoke-static {v6, v8, v9}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$000(Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, onLogStr:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$200()Ljava/util/HashMap;

    move-result-object v6

    const v8, 0x7f070007

    const v9, 0x7f070008

    #calls: Lcom/mediatek/mtklogger/framework/LogInstance;->getLogStateDescStr(Ljava/util/Map;II)Ljava/lang/String;
    invoke-static {v6, v8, v9}, Lcom/mediatek/mtklogger/framework/LogInstance;->access$000(Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, offLogStr:Ljava/lang/String;
    const-string v5, ""

    .line 281
    .local v5, tickerText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    :goto_1
    const/4 v6, 0x1

    invoke-static {v6, v2, v1, v0, v5}, Lcom/mediatek/mtklogger/framework/LogInstance;->showLogStatusInNotificationBar(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v0           #icon:I
    .end local v1           #notificationSummary:Ljava/lang/String;
    .end local v2           #notificationTitle:Ljava/lang/String;
    .end local v3           #offLogStr:Ljava/lang/String;
    .end local v4           #onLogStr:Ljava/lang/String;
    .end local v5           #tickerText:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 284
    .restart local v0       #icon:I
    .restart local v1       #notificationSummary:Ljava/lang/String;
    .restart local v2       #notificationTitle:Ljava/lang/String;
    .restart local v3       #offLogStr:Ljava/lang/String;
    .restart local v4       #onLogStr:Ljava/lang/String;
    .restart local v5       #tickerText:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_1
.end method
