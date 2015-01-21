.class public Lcom/nuance/dragon/toolkit/util/internal/ObjectUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareObjects(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static createSubArray([BII)[B
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_0

    array-length v0, p0

    sub-int p2, v0, p1

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static createSubArray([SII)[S
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_0

    array-length v0, p0

    sub-int p2, v0, p1

    :cond_0
    new-array v0, p2, [S

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
