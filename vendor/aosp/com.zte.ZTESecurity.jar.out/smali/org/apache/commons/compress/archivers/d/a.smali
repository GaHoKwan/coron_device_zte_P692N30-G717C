.class public Lorg/apache/commons/compress/archivers/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/c;


# static fields
.field public static final HEADER:Ljava/lang/String; = "!<arch>\n"

.field public static final jt:Ljava/lang/String; = "`\n"

.field private static final ju:I = 0x81a4


# instance fields
.field private final ia:I

.field private final lastModified:J

.field private final length:J

.field private final mode:I

.field private final name:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_0
    const v6, 0x81a4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v7, 0x3e8

    div-long v7, v0, v7

    move-object v0, p0

    move-object v1, p2

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/compress/archivers/d/a;-><init>(Ljava/lang/String;JIIIJ)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 9

    const/4 v4, 0x0

    const v6, 0x81a4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/compress/archivers/d/a;-><init>(Ljava/lang/String;JIIIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/d/a;->length:J

    iput p4, p0, Lorg/apache/commons/compress/archivers/d/a;->userId:I

    iput p5, p0, Lorg/apache/commons/compress/archivers/d/a;->ia:I

    iput p6, p0, Lorg/apache/commons/compress/archivers/d/a;->mode:I

    iput-wide p7, p0, Lorg/apache/commons/compress/archivers/d/a;->lastModified:J

    return-void
.end method


# virtual methods
.method public bg()Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/a;->getLastModified()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/apache/commons/compress/archivers/d/a;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/d/a;->ia:I

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d/a;->lastModified:J

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/d/a;->length:J

    return-wide v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/d/a;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/d/a;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/d/a;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/d/a;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDirectory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
