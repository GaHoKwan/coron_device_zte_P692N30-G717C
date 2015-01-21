.class public Lcom/zte/heartyservice/privacy/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;
    }
.end annotation


# instance fields
.field private client:Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;

.field private filePath:Ljava/lang/String;

.field private filePaths:[Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private mediaScanConn:Landroid/media/MediaScannerConnection;

.field private wait:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 12
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->client:Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;

    .line 14
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->wait:Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->client:Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;-><init>(Lcom/zte/heartyservice/privacy/MediaScanner;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->client:Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->client:Lcom/zte/heartyservice/privacy/MediaScanner$MusicSannerClient;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    .line 35
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/privacy/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/privacy/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/MediaScanner;)Landroid/media/MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/MediaScanner;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/privacy/MediaScanner;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/MediaScanner;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->wait:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filepath"
    .parameter "fileType"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 88
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->wait:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    const-string v1, "chenlu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait begin file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->wait:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 93
    const-string v1, "chenlu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait end file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "chenlu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wait error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public scanFile([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "filePaths"
    .parameter "fileType"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePaths:[Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->mediaScanConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 112
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->filePath:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "fileType"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/MediaScanner;->fileType:Ljava/lang/String;

    .line 132
    return-void
.end method
