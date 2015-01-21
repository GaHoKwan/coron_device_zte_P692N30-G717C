.class public final Llibcore/io/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/io/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Llibcore/io/DiskLruCache;


# direct methods
.method private constructor <init>(Llibcore/io/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "sequenceNumber"
    .parameter "ins"

    .prologue
    .line 637
    iput-object p1, p0, Llibcore/io/DiskLruCache$Snapshot;->this$0:Llibcore/io/DiskLruCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Llibcore/io/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 639
    iput-wide p3, p0, Llibcore/io/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 640
    iput-object p5, p0, Llibcore/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 641
    return-void
.end method

.method synthetic constructor <init>(Llibcore/io/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Llibcore/io/DiskLruCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 632
    invoke-direct/range {p0 .. p5}, Llibcore/io/DiskLruCache$Snapshot;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 667
    iget-object v0, p0, Llibcore/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .local v0, arr$:[Ljava/io/InputStream;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 668
    .local v2, in:Ljava/io/InputStream;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    .end local v2           #in:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Llibcore/io/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Llibcore/io/DiskLruCache$Snapshot;->this$0:Llibcore/io/DiskLruCache;

    iget-object v1, p0, Llibcore/io/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Llibcore/io/DiskLruCache$Snapshot;->sequenceNumber:J

    #calls: Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;J)Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Llibcore/io/DiskLruCache;->access$1600(Llibcore/io/DiskLruCache;Ljava/lang/String;J)Llibcore/io/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 656
    iget-object v0, p0, Llibcore/io/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    #calls: Llibcore/io/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
