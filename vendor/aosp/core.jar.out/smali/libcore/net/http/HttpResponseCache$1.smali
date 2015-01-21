.class final Llibcore/net/http/HttpResponseCache$1;
.super Ljava/io/FilterInputStream;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$snapshot:Llibcore/io/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Llibcore/io/DiskLruCache$Snapshot;)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 511
    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$1;->val$snapshot:Llibcore/io/DiskLruCache$Snapshot;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$1;->val$snapshot:Llibcore/io/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Snapshot;->close()V

    .line 514
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 515
    return-void
.end method
