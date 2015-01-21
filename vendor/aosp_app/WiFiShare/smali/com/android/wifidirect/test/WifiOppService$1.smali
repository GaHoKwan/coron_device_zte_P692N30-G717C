.class Lcom/android/wifidirect/test/WifiOppService$1;
.super Landroid/os/Handler;
.source "WifiOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppService;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppService;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 199
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 201
    :sswitch_0
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->startSocketListener()V
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$100(Lcom/android/wifidirect/test/WifiOppService;)V

    goto :goto_0

    .line 204
    :sswitch_1
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update mInfo.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for data uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v6, updateValues:Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    .local v0, contentUri:Landroid/net/Uri;
    const-string v8, "scanned"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v8, "uri"

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v8, "mimetype"

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    invoke-virtual {v9}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    invoke-virtual {v8}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    monitor-enter v9

    .line 214
    :try_start_0
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v10, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mMediaScanInProgress:Z
    invoke-static {v8, v10}, Lcom/android/wifidirect/test/WifiOppService;->access$202(Lcom/android/wifidirect/test/WifiOppService;Z)Z

    .line 215
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 218
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v6           #updateValues:Landroid/content/ContentValues;
    :sswitch_2
    const-string v8, "wifiDirect_Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update mInfo.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for MEDIA_SCANNED_FAILED"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v7, updateValues1:Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/wifidirect/test/WifiShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
    .local v1, contentUri1:Landroid/net/Uri;
    const-string v8, "scanned"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    invoke-virtual {v8}, Lcom/android/wifidirect/test/WifiOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    monitor-enter v9

    .line 225
    :try_start_1
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v10, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mMediaScanInProgress:Z
    invoke-static {v8, v10}, Lcom/android/wifidirect/test/WifiOppService;->access$202(Lcom/android/wifidirect/test/WifiOppService;Z)Z

    .line 226
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 229
    .end local v1           #contentUri1:Landroid/net/Uri;
    .end local v7           #updateValues1:Landroid/content/ContentValues;
    :sswitch_3
    const-string v8, "wifiDirect_Service"

    const-string v9, "Get incoming connection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/wifidirect/test/ObexTransport;

    .line 237
    .local v5, transport:Lcom/android/wifidirect/test/ObexTransport;
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$300(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$400(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v8

    if-nez v8, :cond_0

    .line 238
    const-string v8, "wifiDirect_Service"

    const-string v9, "MSG_INCOMING_WIFI_CONNECTION Start Obex Server"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #calls: Lcom/android/wifidirect/test/WifiOppService;->createServerSession(Lcom/android/wifidirect/test/ObexTransport;)V
    invoke-static {v8, v5}, Lcom/android/wifidirect/test/WifiOppService;->access$500(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)V

    goto/16 :goto_0

    .line 241
    :cond_0
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$400(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 242
    const-string v8, "wifiDirect_Service"

    const-string v9, "OPP busy! Reject connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :try_start_2
    invoke-interface {v5}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, e:Ljava/io/IOException;
    const-string v8, "wifiDirect_Service"

    const-string v9, "close tranport error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 252
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    const-string v8, "wifiDirect_Service"

    const-string v9, "OPP busy! Retry after 1 second"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppService;->access$600(Lcom/android/wifidirect/test/WifiOppService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$602(Lcom/android/wifidirect/test/WifiOppService;I)I

    .line 254
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8, v5}, Lcom/android/wifidirect/test/WifiOppService;->access$402(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)Lcom/android/wifidirect/test/ObexTransport;

    .line 255
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$700(Lcom/android/wifidirect/test/WifiOppService;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 256
    .local v3, msg1:Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v3, Landroid/os/Message;->what:I

    .line 257
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$700(Lcom/android/wifidirect/test/WifiOppService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 262
    .end local v3           #msg1:Landroid/os/Message;
    .end local v5           #transport:Lcom/android/wifidirect/test/ObexTransport;
    :sswitch_4
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mBatchs:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$300(Lcom/android/wifidirect/test/WifiOppService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 263
    const-string v8, "wifiDirect_Service"

    const-string v9, "MSG_INCOMING_CONNECTION_RETRY Start Obex Server"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppService;->access$400(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v9

    #calls: Lcom/android/wifidirect/test/WifiOppService;->createServerSession(Lcom/android/wifidirect/test/ObexTransport;)V
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$500(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)V

    .line 265
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$602(Lcom/android/wifidirect/test/WifiOppService;I)I

    .line 266
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$402(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)Lcom/android/wifidirect/test/ObexTransport;

    goto/16 :goto_0

    .line 268
    :cond_2
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$600(Lcom/android/wifidirect/test/WifiOppService;)I

    move-result v8

    const/16 v9, 0x14

    if-ne v8, v9, :cond_3

    .line 269
    const-string v8, "wifiDirect_Service"

    const-string v9, "Retried 20 seconds, reject connection"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_3
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$400(Lcom/android/wifidirect/test/WifiOppService;)Lcom/android/wifidirect/test/ObexTransport;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/wifidirect/test/ObexTransport;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 275
    :goto_1
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$602(Lcom/android/wifidirect/test/WifiOppService;I)I

    .line 276
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    const/4 v9, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mPendingConnection:Lcom/android/wifidirect/test/ObexTransport;
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$402(Lcom/android/wifidirect/test/WifiOppService;Lcom/android/wifidirect/test/ObexTransport;)Lcom/android/wifidirect/test/ObexTransport;

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v2

    .line 273
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "wifiDirect_Service"

    const-string v9, "close tranport error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    const-string v8, "wifiDirect_Service"

    const-string v9, "OPP busy! Retry after 1 second"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    iget-object v9, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v9}, Lcom/android/wifidirect/test/WifiOppService;->access$600(Lcom/android/wifidirect/test/WifiOppService;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    #setter for: Lcom/android/wifidirect/test/WifiOppService;->mIncomingRetries:I
    invoke-static {v8, v9}, Lcom/android/wifidirect/test/WifiOppService;->access$602(Lcom/android/wifidirect/test/WifiOppService;I)I

    .line 280
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$700(Lcom/android/wifidirect/test/WifiOppService;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 281
    .local v4, msg2:Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    .line 282
    iget-object v8, p0, Lcom/android/wifidirect/test/WifiOppService$1;->this$0:Lcom/android/wifidirect/test/WifiOppService;

    #getter for: Lcom/android/wifidirect/test/WifiOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/wifidirect/test/WifiOppService;->access$700(Lcom/android/wifidirect/test/WifiOppService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
