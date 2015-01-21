.class public Lorg/apache/commons/compress/archivers/zip/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/compress/archivers/zip/h;
.implements Lorg/apache/commons/compress/archivers/zip/o;


# static fields
.field private static final j:Lorg/apache/commons/compress/archivers/zip/O; = null

.field private static final k:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private gid:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/a;->j:Lorg/apache/commons/compress/archivers/zip/O;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->uid:I

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->gid:I

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->m:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->m:Z

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    return-void
.end method

.method public a([BII)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v1

    add-int/lit8 v3, p3, -0x4

    new-array v3, v3, [B

    add-int/lit8 v4, p2, 0x4

    add-int/lit8 v5, p3, -0x4

    invoke-static {p1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4, v3}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_0

    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad CRC checksum "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lorg/apache/commons/compress/archivers/zip/l;->c([BI)J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [B

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->uid:I

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/a;->gid:I

    array-length v4, v2

    if-nez v4, :cond_2

    const-string v2, ""

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/a;->l:Ljava/lang/String;

    :goto_0
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a;->a(Z)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/a;->setMode(I)V

    return-void

    :cond_2
    const/16 v4, 0xa

    array-length v5, v2

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/a;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->gid:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->l:Ljava/lang/String;

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/a;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    return-void
.end method

.method public b([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/a;->a([BII)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/a;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/a;->j:Lorg/apache/commons/compress/archivers/zip/O;

    return-object v0
.end method

.method public f()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/O;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/O;-><init>(I)V

    return-object v0
.end method

.method public g()Lorg/apache/commons/compress/archivers/zip/O;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->f()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->gid:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    return v0
.end method

.method protected getMode(I)I
    .locals 2

    const v0, 0x8000

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0xa000

    :cond_0
    :goto_0
    and-int/lit16 v1, p1, 0xfff

    or-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4000

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->uid:I

    return v0
.end method

.method public h()[B
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->f()Lorg/apache/commons/compress/archivers/zip/O;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->getMode()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v1

    invoke-static {v1, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v2

    invoke-static {v2, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->getUserId()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->getGroupId()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0xa

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/a;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/l;->c(J)[B

    move-result-object v1

    invoke-static {v1, v4, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    invoke-static {v0, v4, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

.method public i()[B
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->h()[B

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/a;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/a;->mode:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/a;->uid:I

    return-void
.end method
