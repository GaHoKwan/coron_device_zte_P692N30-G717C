.class public Lcom/zte/zdm/application/d/b/d;
.super Lcom/zte/zdm/g/a/b;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x8000

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field private static e:Lcom/zte/zdm/g/a/e;


# instance fields
.field private f:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/d/b/d;->e:Lcom/zte/zdm/g/a/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/g/a/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    return-void
.end method

.method public static a()Lcom/zte/zdm/g/a/e;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/d/b/d;->e:Lcom/zte/zdm/g/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/b/d;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/b/d;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/d/b/d;->e:Lcom/zte/zdm/g/a/e;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/d/b/d;->e:Lcom/zte/zdm/g/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    :cond_0
    return-void
.end method

.method public a(Ljava/io/OutputStream;[B)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[BZ)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Lcom/zte/zdm/application/d/b/d;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 3

    const-string v0, "/data/data"

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/d/b/d;->f:Ljava/io/OutputStream;

    return-object v0
.end method
