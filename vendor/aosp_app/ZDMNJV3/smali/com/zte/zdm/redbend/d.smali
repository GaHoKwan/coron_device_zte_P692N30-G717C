.class public Lcom/zte/zdm/redbend/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "--fota_update"

.field public static final b:Ljava/lang/String; = "dlpkgfile"

.field public static final c:Ljava/lang/String; = "updateType"

.field public static d:I = 0x0

.field public static final e:Ljava/lang/String; = "/data/dm/delta/multi_image.delta"

.field public static final f:Ljava/lang/String; = "/data/dm/delta/system.delta"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/zte/zdm/redbend/d;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/zte/zdm/redbend/d;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/dm/delta/multi_image.delta"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/dm/delta/system.delta"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    sput v0, Lcom/zte/zdm/redbend/d;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput v0, Lcom/zte/zdm/redbend/d;->d:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    sput v0, Lcom/zte/zdm/redbend/d;->d:I

    goto :goto_0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/zte/zdm/redbend/VdmcPkg;

    invoke-direct {v0}, Lcom/zte/zdm/redbend/VdmcPkg;-><init>()V

    const-string v1, "/data/dm/delta/multi_image.delta"

    const-string v2, "/data/dm/delta/system.delta"

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/zdm/redbend/VdmcPkg;->splitPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zte/zdm/redbend/d;->d:I

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/zte/zdm/redbend/d;->a(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {v2}, Lcom/zte/zdm/redbend/d;->a(Ljava/io/Closeable;)V

    :goto_1
    new-instance v1, Lcom/zte/zdm/redbend/a;

    const-string v2, "/data/dm/delta/multi_image.delta"

    const-string v3, "/data/dm/delta/system.delta"

    invoke-direct {v1, p0, v2, v3}, Lcom/zte/zdm/redbend/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/redbend/a;->a([B)Lcom/zte/zdm/redbend/b;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v2}, Lcom/zte/zdm/redbend/d;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/zte/zdm/redbend/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method
