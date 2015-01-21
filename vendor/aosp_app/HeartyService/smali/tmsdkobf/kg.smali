.class public final Ltmsdkobf/kg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static cl(Ljava/lang/String;)Z
    .locals 8
    .parameter "phonenum"

    .prologue
    const/4 v5, 0x0

    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v5

    .line 21
    :cond_1
    const/16 v6, 0x9

    new-array v2, v6, [C

    fill-array-data v2, :array_0

    .line 22
    .local v2, filter:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 23
    .local v1, c:C
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 22
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27
    .end local v1           #c:C
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 21
    :array_0
    .array-data 0x2
        0x2ft 0x0t
        0x23t 0x0t
        0x2ct 0x0t
        0x3bt 0x0t
        0x2et 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x4et 0x0t
        0x2at 0x0t
    .end array-data
.end method
