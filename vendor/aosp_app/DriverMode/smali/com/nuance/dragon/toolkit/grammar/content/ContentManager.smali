.class public abstract Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;
.super Ljava/lang/Object;


# instance fields
.field protected final _context:Landroid/content/Context;

.field private final a:Ljava/lang/String;

.field private final b:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private final e:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Ljava/util/List;

.field private n:Ljava/lang/String;

.field private final o:Ljava/util/List;

.field private p:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

.field private q:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/file/FileManager;ZLandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "fileManager"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    invoke-static {v0, p4}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->k:Z

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->_context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->c:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->d:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->l:I

    return-void
.end method

.method static a(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)Ljava/io/ObjectInputStream;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    if-nez v3, :cond_1

    const-class v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to open read-stream for file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    const-class v4, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating read-stream for file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$6;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$6;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Writing to file "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v0, 0x303a

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->writeListTo(Ljava/util/List;Ljava/io/ObjectOutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Saved "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " items"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error writing to file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error saving file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->n:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v4, v0, v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Ljava/util/List;Ljava/lang/String;Z)V

    move v1, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v5, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->k:Z

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->n:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v4, v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Ljava/util/List;Ljava/lang/String;Z)V

    move v1, v2

    :cond_1
    iget-boolean v5, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->k:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->n:Ljava/lang/String;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v1, v0, v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->c()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    new-instance v3, Lcom/nuance/dragon/toolkit/util/internal/c;

    invoke-interface {v5}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;->getSize()I

    move-result v6

    invoke-direct {v3, v6}, Lcom/nuance/dragon/toolkit/util/internal/c;-><init>(I)V

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->n:Ljava/lang/String;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_6
    if-nez v1, :cond_7

    invoke-direct {p0, v3, v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Ljava/util/List;Ljava/lang/String;Z)V

    :cond_7
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->d:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;

    invoke-direct {v2, p0, v5, v3, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$4;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;Lcom/nuance/dragon/toolkit/util/internal/c;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_8
    move v1, v3

    goto/16 :goto_1

    :cond_9
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->j:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/content/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Ljava/util/List;Ljava/lang/String;Z)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static b(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    if-nez v3, :cond_1

    const-class v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to open write-stream for file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    const-class v4, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error creating write-stream for file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->m:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$8;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/content/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Ljava/util/List;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c()Landroid/util/Pair;
    .locals 9

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Reading from file "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)Ljava/io/ObjectInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v2, 0x303a

    if-ne v0, v2, :cond_1

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    invoke-static {v5}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->readListFrom(Ljava/io/ObjectInputStream;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Loaded "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " items"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    if-nez v2, :cond_0

    :goto_2
    :try_start_5
    monitor-exit v4

    return-object v1

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error reading from file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error closing file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_0
    :try_start_6
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v1

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_3

    :cond_1
    move-object v0, v1

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/util/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->d:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/util/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->l:I

    return v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    return-object v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a()V

    return-void
.end method

.method static synthetic l(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 3

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->d:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$7;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b()V

    return-void
.end method

.method static synthetic n(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->i:Z

    return v0
.end method

.method static synthetic o(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->p:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    return-object v0
.end method

.method static synthetic p(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->p:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    return-object v0
.end method

.method static synthetic q(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->q:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    return-object v0
.end method


# virtual methods
.method public createWordList(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Z)Lcom/nuance/dragon/toolkit/grammar/WordList;
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h:Z

    const-string v1, "Not initialized"

    invoke-static {p0, v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const-string v0, "fileManager"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fileName"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "different from the ContentManager\'s file name"

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, v1, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/a;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->g:Ljava/lang/Object;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/nuance/dragon/toolkit/grammar/content/a;-><init>(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;

    invoke-direct {v2, p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$3;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Lcom/nuance/dragon/toolkit/grammar/content/a;)V

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceRefresh()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h:Z

    const-string v1, "Not initialized"

    invoke-static {p0, v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a()V

    return-void
.end method

.method protected abstract getPlatformFullIterator()Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;
.end method

.method protected initialize(Z)V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Already initialized"

    invoke-static {p0, v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->_context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->watchForContentUpdates(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;Z)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onContentUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$5;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$5;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a$a;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h:Z

    const-string v1, "Not initialized"

    invoke-static {p0, v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->h:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->_context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->stopWatchingForContentUpdates(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->f:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$a;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;

    invoke-direct {v1, p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$2;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInitListener(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "GrammarDepot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->i:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;->onDone(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->p:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    goto :goto_0
.end method

.method public final setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->l:I

    return-void
.end method

.method public setUpdateListener(Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->q:Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$SyncListener;

    return-void
.end method

.method protected abstract stopWatchingForContentUpdates(Landroid/content/Context;)V
.end method

.method protected abstract watchForContentUpdates(Landroid/content/Context;)V
.end method
