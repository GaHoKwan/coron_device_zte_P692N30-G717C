.class final Lcom/nuance/dragon/toolkit/grammar/content/a;
.super Lcom/nuance/dragon/toolkit/grammar/WordList;


# static fields
.field private static a:I


# instance fields
.field private final b:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lcom/nuance/dragon/toolkit/util/internal/a;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;

.field private h:Ljava/util/List;

.field private i:La/a/m;

.field private j:Ljava/util/List;

.field private k:La/a/m;

.field private l:Ljava/util/List;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private final p:Ljava/lang/Object;

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/nuance/dragon/toolkit/grammar/content/a;->a:I

    return-void
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/WordList;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->p:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->d:Z

    new-instance v0, Lcom/nuance/dragon/toolkit/util/internal/a;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/util/internal/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->q:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/a;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->n:I

    return p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/a;La/a/m;)La/a/m;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->i:La/a/m;

    return-object p1
.end method

.method private a(Z)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;
    .locals 4

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, La/a/m;->a()La/a/m;

    move-result-object v0

    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    invoke-direct {v2, p0, v0, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a$b;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/a;La/a/m;Ljava/util/List;)V

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    monitor-exit v1

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->o:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->k:La/a/m;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->l:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a$b;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/a;La/a/m;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->i:La/a/m;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->j:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Lcom/nuance/dragon/toolkit/grammar/content/a$b;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/a;La/a/m;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->q:Z

    if-nez v0, :cond_1

    const-string v0, "Not initialized or initializing!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/a;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;Ljava/util/List;La/a/m;I)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    if-eq p1, v0, :cond_0

    const-string v0, "Can\'t accept changes on old iterator"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->g:Lcom/nuance/dragon/toolkit/grammar/content/a$b;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->o:Z

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->k:La/a/m;

    invoke-static {p2, p3}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->l:Ljava/util/List;

    iput p4, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->n:I

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v2, Lcom/nuance/dragon/toolkit/grammar/content/a$2;

    invoke-direct {v2, p0, p4, p3}, Lcom/nuance/dragon/toolkit/grammar/content/a$2;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/a;ILa/a/m;)V

    invoke-virtual {v0, v2}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/nuance/dragon/toolkit/grammar/content/a$a;)Z
    .locals 6

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Writing to file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->b(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_1
    sget v0, Lcom/nuance/dragon/toolkit/grammar/content/a;->a:I

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v0, p1, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->b:I

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p1, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->a:La/a/m;

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->writeListTo(Ljava/util/List;Ljava/io/ObjectOutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Saved "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->a:La/a/m;

    invoke-virtual {v4}, La/a/m;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " items"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    monitor-exit v2

    return v0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error reading to file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/content/a;Lcom/nuance/dragon/toolkit/grammar/content/a$a;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Lcom/nuance/dragon/toolkit/grammar/content/a$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/content/a;)La/a/m;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->i:La/a/m;

    return-object v0
.end method

.method private b()Lcom/nuance/dragon/toolkit/grammar/content/a$a;
    .locals 10

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Reading from file "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/nuance/dragon/toolkit/grammar/content/ContentManager;->a(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;)Ljava/io/ObjectInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    sget v3, Lcom/nuance/dragon/toolkit/grammar/content/a;->a:I

    if-ne v0, v3, :cond_1

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    invoke-static {v6}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->readPersistentListFrom(Ljava/io/ObjectInputStream;)La/a/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Loaded "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, La/a/m;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " items"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    if-nez v3, :cond_0

    :goto_2
    :try_start_5
    monitor-exit v5

    return-object v1

    :catch_0
    move-exception v0

    move v3, v2

    move-object v4, v1

    move-object v2, v1

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error reading from file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    move v2, v3

    move-object v3, v4

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/a$a;

    invoke-direct {v1, v3, v2, v0}, Lcom/nuance/dragon/toolkit/grammar/content/a$a;-><init>(La/a/m;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v9, v0

    move-object v0, v3

    move v3, v2

    move-object v2, v9

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v9, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_3

    :cond_1
    move-object v0, v1

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v3, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->j:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/WordAction;->getWord()Lcom/nuance/dragon/toolkit/grammar/Word;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object p0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/content/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/grammar/content/a;)La/a/m;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->k:La/a/m;

    return-object v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/grammar/content/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->o:Z

    return v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/grammar/content/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->e:Lcom/nuance/dragon/toolkit/util/internal/a;

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/content/a$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/dragon/toolkit/grammar/content/a$1;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->m:Ljava/lang/String;

    if-nez p3, :cond_2

    iget-boolean v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->d:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b()Lcom/nuance/dragon/toolkit/grammar/content/a$a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->a:La/a/m;

    iget v0, v2, Lcom/nuance/dragon/toolkit/grammar/content/a$a;->b:I

    move v2, v0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, La/a/m;->a()La/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->b:Lcom/nuance/dragon/toolkit/file/FileManager;

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    move-object v1, p1

    :goto_1
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->n:I

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->i:La/a/m;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->j:Ljava/util/List;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->r:Z

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    invoke-static {p1, v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    move v2, v0

    move-object v0, v1

    goto :goto_0
.end method

.method public final fullUpdateRequired()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->o:Z

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->i:La/a/m;

    invoke-virtual {v3}, La/a/m;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v3, v4, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final getAcceptedChecksum()I
    .locals 2

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a()V

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/a;->n:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getFullIterator()Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Z)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    return-object v0
.end method

.method public final getModifiedIterator()Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/a;->a(Z)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    move-result-object v0

    return-object v0
.end method
