.class public Lauw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lauw;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/io/File;

.field private a:Ljava/io/FileOutputStream;

.field private a:Ljava/lang/String;

.field private a:[B


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lauw;->a:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lauw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usrdict2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauw;->a:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lauw;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lauw;->a:Ljava/io/File;

    .line 62
    const/16 v0, 0x330

    new-array v0, v0, [B

    iput-object v0, p0, Lauw;->a:[B

    .line 63
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lauw;->a:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lauw;
    .locals 2
    .parameter

    .prologue
    .line 27
    const-class v1, Lauw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lauw;->a:Lauw;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lauw;

    invoke-direct {v0, p0}, Lauw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lauw;->a:Lauw;

    .line 30
    :cond_0
    sget-object v0, Lauw;->a:Lauw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 34
    const-class v1, Lauw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lauw;->a:Lauw;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lauw;->a:Lauw;

    invoke-direct {v0}, Lauw;->e()V

    .line 37
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lauw;->a:Lauw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/usrdict"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lauw;->a:Landroid/content/Context;

    .line 43
    :try_start_0
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    :cond_1
    iput-object v1, p0, Lauw;->a:Ljava/io/File;

    .line 54
    iput-object v1, p0, Lauw;->a:[B

    .line 55
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a([B)V
    .locals 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x1e8480

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    :try_start_0
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 94
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lauw;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lauw;->a:Ljava/io/File;

    .line 116
    :try_start_1
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 117
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lauw;->a:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lauw;->a:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public d()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v2, 0x0

    .line 128
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lauw;->a:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :goto_0
    :try_start_1
    iget-object v0, p0, Lauw;->a:[B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 131
    iget-object v0, p0, Lauw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v2, p0, Lauw;->a:[B

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->learnWord([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_2
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 141
    :cond_0
    return-void

    .line 133
    :cond_1
    :try_start_3
    iget-object v0, p0, Lauw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->saveUserDict()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 138
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 134
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
