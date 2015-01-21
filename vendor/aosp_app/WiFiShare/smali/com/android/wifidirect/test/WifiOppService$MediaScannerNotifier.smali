.class Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;
.super Ljava/lang/Object;
.source "WifiOppService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaScannerNotifier"
.end annotation


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifidirect/test/WifiOppShareInfo;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "handler"

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    .line 955
    iput-object p2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    .line 956
    iput-object p3, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    .line 957
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .line 958
    const-string v0, "wifiDirect_Service"

    const-string v1, "Connecting to MediaScannerConnection "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 960
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 963
    const-string v0, "wifiDirect_Service"

    const-string v1, "MediaScannerConnection onMediaScannerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v1, v1, Lcom/android/wifidirect/test/WifiOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget-object v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 970
    :try_start_0
    const-string v2, "wifiDirect_Service"

    const-string v3, "MediaScannerConnection onScanCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScannerConnection path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaScannerConnection Uri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    if-eqz p2, :cond_0

    .line 975
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 976
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 977
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 978
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 979
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 980
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    const-string v2, "wifiDirect_Service"

    const-string v3, "MediaScannerConnection disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 994
    return-void

    .line 982
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 983
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mCallback:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 984
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 985
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mInfo:Lcom/android/wifidirect/test/WifiOppShareInfo;

    iget v2, v2, Lcom/android/wifidirect/test/WifiOppShareInfo;->mId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 986
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 988
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 989
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "wifiDirect_Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!MediaScannerConnection exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 991
    const-string v2, "wifiDirect_Service"

    const-string v3, "MediaScannerConnection disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    goto :goto_1

    .line 991
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "wifiDirect_Service"

    const-string v4, "MediaScannerConnection disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppService$MediaScannerNotifier;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 991
    throw v2
.end method
