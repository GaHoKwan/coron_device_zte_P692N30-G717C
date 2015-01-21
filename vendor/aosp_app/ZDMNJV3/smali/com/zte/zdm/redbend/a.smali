.class public Lcom/zte/zdm/redbend/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "modemFileStr"

    sput-object v0, Lcom/zte/zdm/redbend/a;->d:Ljava/lang/String;

    const-string v0, "apFileStr"

    sput-object v0, Lcom/zte/zdm/redbend/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    const-string v0, "/data/dm/delta/multi_image.delta"

    iput-object v0, p0, Lcom/zte/zdm/redbend/a;->b:Ljava/lang/String;

    const-string v0, "/data/dm/delta/system.delta"

    iput-object v0, p0, Lcom/zte/zdm/redbend/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    const-string v0, "/data/dm/delta/multi_image.delta"

    iput-object v0, p0, Lcom/zte/zdm/redbend/a;->b:Ljava/lang/String;

    const-string v0, "/data/dm/delta/system.delta"

    iput-object v0, p0, Lcom/zte/zdm/redbend/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zte/zdm/redbend/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/zdm/redbend/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private a(Ljava/io/ByteArrayInputStream;Lcom/zte/zdm/redbend/b;)V
    .locals 11

    const-wide/16 v9, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p2, v0}, Lcom/zte/zdm/redbend/b;->a(I)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p2, v3}, Lcom/zte/zdm/redbend/b;->b(I)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/zte/zdm/redbend/b;->c(I)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/redbend/a;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/zte/zdm/redbend/b;->d(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v1, Lcom/zte/zdm/redbend/c;

    invoke-direct {v1}, Lcom/zte/zdm/redbend/c;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/zte/zdm/redbend/a;->a(Ljava/io/ByteArrayInputStream;Lcom/zte/zdm/redbend/c;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v9, v10}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/redbend/c;

    invoke-direct {p0, p1}, Lcom/zte/zdm/redbend/a;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    iput v5, v0, Lcom/zte/zdm/redbend/c;->e:I

    iget v5, v0, Lcom/zte/zdm/redbend/c;->e:I

    if-lez v5, :cond_1

    iget v5, v0, Lcom/zte/zdm/redbend/c;->e:I

    new-array v5, v5, [B

    iget v6, v0, Lcom/zte/zdm/redbend/c;->e:I

    invoke-virtual {p1, v5, v2, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v0, Lcom/zte/zdm/redbend/c;->f:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v9, v10}, Ljava/io/ByteArrayInputStream;->skip(J)J

    iget v5, v0, Lcom/zte/zdm/redbend/c;->c:I

    add-int/lit8 v5, v5, -0xc

    iget v6, v0, Lcom/zte/zdm/redbend/c;->e:I

    sub-int/2addr v5, v6

    const-string v6, "ContainerParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bagType"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/zte/zdm/redbend/c;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_2

    iget v6, v0, Lcom/zte/zdm/redbend/c;->a:I

    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/zte/zdm/redbend/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v5}, Lcom/zte/zdm/redbend/a;->a(Ljava/lang/String;Ljava/io/ByteArrayInputStream;I)V

    sget-object v0, Lcom/zte/zdm/redbend/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/zdm/redbend/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/zte/zdm/redbend/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {p1, v9, v10}, Ljava/io/ByteArrayInputStream;->skip(J)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v0, v0, Lcom/zte/zdm/redbend/c;->a:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/zte/zdm/redbend/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v5}, Lcom/zte/zdm/redbend/a;->a(Ljava/lang/String;Ljava/io/ByteArrayInputStream;I)V

    sget-object v0, Lcom/zte/zdm/redbend/a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/zte/zdm/redbend/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/zte/zdm/redbend/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v4}, Lcom/zte/zdm/redbend/b;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/io/ByteArrayInputStream;Lcom/zte/zdm/redbend/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/zdm/redbend/a;->b(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    iput v0, p2, Lcom/zte/zdm/redbend/c;->a:I

    invoke-direct {p0, p1}, Lcom/zte/zdm/redbend/a;->b(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    iput v0, p2, Lcom/zte/zdm/redbend/c;->b:I

    invoke-direct {p0, p1}, Lcom/zte/zdm/redbend/a;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    iput v0, p2, Lcom/zte/zdm/redbend/c;->c:I

    invoke-direct {p0, p1}, Lcom/zte/zdm/redbend/a;->a(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    iput v0, p2, Lcom/zte/zdm/redbend/c;->d:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/ByteArrayInputStream;I)V
    .locals 6

    const/4 v3, 0x0

    rem-int/lit16 v0, p3, 0x800

    if-nez v0, :cond_1

    div-int/lit16 v0, p3, 0x800

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v2, 0x800

    new-array v2, v2, [B

    :goto_2
    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_0

    :try_start_1
    rem-int/lit16 v2, p3, 0x800

    new-array v2, v2, [B

    :cond_0
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    div-int/lit16 v0, p3, 0x800

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_3
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mkdir /data/dm/"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DMC1"

    const-string v2, "copyJAR#mkdir /data/dm/ failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "mkdir /data/dm/delta/"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DMC2"

    const-string v2, "copyJAR#mkdir /data/dm/dalta/ failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/redbend/a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/zte/zdm/redbend/a;->a(Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DMC4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyJAR#copy Jar failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DMC5"

    const-string v1, "copyJAR#chmod 777 succeed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "DMC3"

    const-string v1, "copyJAR#chmod 777 failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a([B)Lcom/zte/zdm/redbend/b;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lcom/zte/zdm/redbend/b;

    invoke-direct {v1}, Lcom/zte/zdm/redbend/b;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/zte/zdm/redbend/a;->a(Ljava/io/ByteArrayInputStream;Lcom/zte/zdm/redbend/b;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
