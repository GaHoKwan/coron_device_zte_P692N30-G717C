.class public Lorg/apache/commons/compress/archivers/e;
.super Ljava/lang/Object;


# static fields
.field public static final DUMP:Ljava/lang/String; = "dump"

.field public static final lJ:Ljava/lang/String; = "ar"

.field public static final lK:Ljava/lang/String; = "cpio"

.field public static final lL:Ljava/lang/String; = "jar"

.field public static final lM:Ljava/lang/String; = "tar"

.field public static final lN:Ljava/lang/String; = "zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/b;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/d/b;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/d/b;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/b;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/commons/compress/archivers/c/a;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/commons/compress/archivers/b/b;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/b/b;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_5
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/apache/commons/compress/archivers/a/c;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/a/c;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_6
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/f;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/dump/f;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_7
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/d;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Archivername must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OutputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/d/c;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/d/c;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_2
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/H;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/H;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/commons/compress/archivers/c/h;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/c/h;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_4
    const-string v0, "jar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/commons/compress/archivers/b/c;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/b/c;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_5
    const-string v0, "cpio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/apache/commons/compress/archivers/a/a;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/a/a;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/b;
    .locals 4

    const/16 v3, 0x200

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mark is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0xc

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/b;->a([BI)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/b;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/b;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/b/b;->a([BI)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/b/b;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/b/b;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v2, "Could not use reset and mark operations."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    :try_start_1
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/d/b;->a([BI)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lorg/apache/commons/compress/archivers/d/b;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/d/b;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/a/c;->a([BI)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/commons/compress/archivers/a/c;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/a/c;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x20

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/dump/f;->a([BI)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/f;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/dump/f;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x200

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/c/a;->a([BI)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lorg/apache/commons/compress/archivers/c/a;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_7
    if-lt v1, v3, :cond_8

    :try_start_2
    new-instance v1, Lorg/apache/commons/compress/archivers/c/a;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/c/a;->q()Lorg/apache/commons/compress/archivers/c;

    new-instance v0, Lorg/apache/commons/compress/archivers/c/a;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/c/a;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_8
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "No Archiver found for the stream signature"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
