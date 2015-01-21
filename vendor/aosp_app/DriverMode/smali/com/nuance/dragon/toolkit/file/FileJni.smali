.class final Lcom/nuance/dragon/toolkit/file/FileJni;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private b:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing file"

    invoke-static {p0, v1, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->a:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLength()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    return v0
.end method

.method public final getStartOffset()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/file/FileJni;->b:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    return v0
.end method
