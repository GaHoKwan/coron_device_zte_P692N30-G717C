.class public Ltmsdkobf/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bn(I)[B
    .locals 5
    .parameter "integer"

    .prologue
    .line 5
    if-gez p0, :cond_0

    xor-int/lit8 v3, p0, -0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x28

    div-int/lit8 v1, v3, 0x8

    .line 6
    .local v1, byteNum:I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 8
    .local v0, byteArray:[B
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 9
    rsub-int/lit8 v3, v2, 0x3

    mul-int/lit8 v4, v2, 0x8

    ushr-int v4, p0, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #byteArray:[B
    .end local v1           #byteNum:I
    .end local v2           #n:I
    :cond_0
    move v3, p0

    .line 5
    goto :goto_0

    .line 11
    .restart local v0       #byteArray:[B
    .restart local v1       #byteNum:I
    .restart local v2       #n:I
    :cond_1
    return-object v0
.end method
