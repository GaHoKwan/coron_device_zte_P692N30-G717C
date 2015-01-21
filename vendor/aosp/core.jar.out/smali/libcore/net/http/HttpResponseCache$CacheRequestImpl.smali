.class final Llibcore/net/http/HttpResponseCache$CacheRequestImpl;
.super Ljava/net/CacheRequest;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ljava/io/OutputStream;

.field private cacheOut:Ljava/io/OutputStream;

.field private done:Z

.field private final editor:Llibcore/io/DiskLruCache$Editor;

.field final synthetic this$0:Llibcore/net/http/HttpResponseCache;


# direct methods
.method public constructor <init>(Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
    .locals 2
    .parameter
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 270
    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->editor:Llibcore/io/DiskLruCache$Editor;

    .line 271
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    .line 272
    new-instance v0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;

    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl$1;-><init>(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    .line 292
    return-void
.end method

.method static synthetic access$300(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    iget-boolean v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$302(Llibcore/net/http/HttpResponseCache$CacheRequestImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    iput-boolean p1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-boolean v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    .line 297
    monitor-exit v1

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->done:Z

    .line 300
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->this$0:Llibcore/net/http/HttpResponseCache;

    invoke-static {v0}, Llibcore/net/http/HttpResponseCache;->access$508(Llibcore/net/http/HttpResponseCache;)I

    .line 301
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 304
    :try_start_1
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->editor:Llibcore/io/DiskLruCache$Editor;

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    return-object v0
.end method
