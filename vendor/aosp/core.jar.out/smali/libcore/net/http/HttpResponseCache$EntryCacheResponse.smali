.class Llibcore/net/http/HttpResponseCache$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryCacheResponse"
.end annotation


# instance fields
.field private final entry:Llibcore/net/http/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Llibcore/io/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Llibcore/net/http/HttpResponseCache$Entry;Llibcore/io/DiskLruCache$Snapshot;)V
    .locals 1
    .parameter "entry"
    .parameter "snapshot"

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 525
    iput-object p1, p0, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    .line 526
    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->snapshot:Llibcore/io/DiskLruCache$Snapshot;

    .line 527
    #calls: Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    invoke-static {p2}, Llibcore/net/http/HttpResponseCache;->access$600(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->in:Ljava/io/InputStream;

    .line 528
    return-void
.end method

.method static synthetic access$100(Llibcore/net/http/HttpResponseCache$EntryCacheResponse;)Llibcore/io/DiskLruCache$Snapshot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 519
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->snapshot:Llibcore/io/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$EntryCacheResponse;->entry:Llibcore/net/http/HttpResponseCache$Entry;

    #getter for: Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;
    invoke-static {v0}, Llibcore/net/http/HttpResponseCache$Entry;->access$700(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
