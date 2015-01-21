.class Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicSannerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/MediaScanner;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 42
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$000(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 44
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$200(Lcom/zte/heartyservice/privacy/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$000(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$100(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$300(Lcom/zte/heartyservice/privacy/MediaScanner;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$300(Lcom/zte/heartyservice/privacy/MediaScanner;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 51
    .local v1, file:Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v4}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$200(Lcom/zte/heartyservice/privacy/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;
    invoke-static {v5}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$100(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #setter for: Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$002(Lcom/zte/heartyservice/privacy/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #setter for: Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$102(Lcom/zte/heartyservice/privacy/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #setter for: Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$302(Lcom/zte/heartyservice/privacy/MediaScanner;[Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$200(Lcom/zte/heartyservice/privacy/MediaScanner;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$400(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 67
    :try_start_0
    const-string v0, "chenlu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify begin file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;->this$0:Lcom/zte/heartyservice/privacy/MediaScanner;

    #getter for: Lcom/zte/heartyservice/privacy/MediaScanner;->wait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/MediaScanner;->access$400(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 69
    const-string v0, "chenlu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify end file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
