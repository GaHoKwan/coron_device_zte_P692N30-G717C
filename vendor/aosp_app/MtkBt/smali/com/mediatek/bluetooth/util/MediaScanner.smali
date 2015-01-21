.class public Lcom/mediatek/bluetooth/util/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final CURRENT_USER_ID:Ljava/lang/String; = "currentUserId"

.field public static final MEDIA_SCANNED:I = 0x0

.field public static final MEDIA_SCAN_FAILED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaScanner"


# instance fields
.field private callback:Landroid/os/Handler;

.field private callbackId:I

.field private context:Landroid/content/Context;

.field private mimeType:Ljava/lang/String;

.field private msc:Landroid/media/MediaScannerConnection;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 6
    .parameter "context"
    .parameter "path"
    .parameter "mimeType"
    .parameter "callback"
    .parameter "callbackId"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->path:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->mimeType:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->callback:Landroid/os/Handler;

    .line 71
    iput p5, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->callbackId:I

    .line 72
    new-instance v3, Landroid/media/MediaScannerConnection;

    iget-object v4, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->context:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v3, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->msc:Landroid/media/MediaScannerConnection;

    .line 74
    const-string v3, "MediaScanner"

    const-string v4, "[BT][MMI][MediaScanner]: connecting to Media Scanner Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->msc:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->connect()V

    .line 78
    invoke-static {p1}, Lcom/mediatek/bluetooth/util/SystemUtils;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    .line 79
    .local v0, currentUserId:I
    if-eqz v0, :cond_0

    .line 80
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BT][MMI][MediaScanner]: before sendbroadcast ACTION_MEDIA_SCANNER_SCAN_FILE, userid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, uriPath:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "currentUserId"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 86
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uriPath:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 91
    :try_start_0
    const-string v1, "MediaScanner"

    const-string v2, "[BT][MMI][onMediaScannerConnected]: MediaScanner connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->msc:Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT][MMI][onMediaScannerConnected]: MediaScanner exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 102
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][MMI][onScanCompleted]: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->callback:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->callback:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, msg:Landroid/os/Message;
    iget v2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->callbackId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 109
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Landroid/os/Message;->what:I

    .line 111
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->msc:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 122
    :goto_1
    return-void

    .line 110
    .restart local v1       #msg:Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 114
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 116
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BT][MMI][onScanCompleted]: MediaScanner exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object v2, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->msc:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/util/MediaScanner;->msc:Landroid/media/MediaScannerConnection;

    invoke-virtual {v3}, Landroid/media/MediaScannerConnection;->disconnect()V

    throw v2
.end method
