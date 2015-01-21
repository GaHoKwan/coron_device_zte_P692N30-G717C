.class public final Lorg/apache/commons/compress/archivers/zip/v;
.super Ljava/lang/Object;


# static fields
.field private static final kk:I = 0x1

.field private static final kl:I = 0x8

.field private static final km:I = 0x40

.field public static final kn:I = 0x800


# instance fields
.field private ko:Z

.field private kp:Z

.field private kq:Z

.field private kr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    return-void
.end method

.method public static e([BI)Lorg/apache/commons/compress/archivers/zip/v;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/O;->l([BI)I

    move-result v3

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/v;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/zip/v;-><init>()V

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/archivers/zip/v;->k(Z)V

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/archivers/zip/v;->j(Z)V

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/archivers/zip/v;->m(Z)V

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v4, v1}, Lorg/apache/commons/compress/archivers/zip/v;->l(Z)V

    return-object v4

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public cc()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    return v0
.end method

.method public cd()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    return v0
.end method

.method public ce()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    return v0
.end method

.method public cf()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode()[B
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x800

    :goto_1
    or-int/2addr v2, v0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x40

    :cond_0
    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/O;->getBytes(I)[B

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/v;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/v;

    iget-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit8 v3, v0, 0x11

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0xd

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x7

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/v;->ko:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/v;->kp:Z

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/v;->kq:Z

    return-void
.end method

.method public m(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/v;->kr:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/v;->l(Z)V

    :cond_0
    return-void
.end method
