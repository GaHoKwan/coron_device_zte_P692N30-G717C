.class Lo/Ć$鷭;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ć$櫯;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ć;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u9ded"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static 鷭(IIIII)I
    .locals 3

    .line 0
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 50
    :goto_0
    or-int/2addr p3, p4

    .line 51
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_1
    if-eqz v2, :cond_3

    .line 54
    if-eqz p1, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p0

    return v0

    .line 58
    :cond_3
    if-eqz p1, :cond_4

    .line 59
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p0

    return v0

    .line 61
    :cond_4
    return p0
.end method


# virtual methods
.method public 櫯(I)Z
    .locals 2

    .line 0
    invoke-virtual {p0, p1}, Lo/Ć$鷭;->鷭(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public 鷭(I)I
    .locals 1

    .line 0
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_0

    .line 68
    or-int/lit8 p1, p1, 0x1

    .line 70
    :cond_0
    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_1

    .line 71
    or-int/lit8 p1, p1, 0x2

    .line 73
    :cond_1
    and-int/lit16 v0, p1, 0xf7

    return v0
.end method

.method public 鷭(II)Z
    .locals 4

    .line 0
    invoke-virtual {p0, p1}, Lo/Ć$鷭;->鷭(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    .line 79
    const/4 v1, 0x1

    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v0, p2, v1, v2, v3}, Lo/Ć$鷭;->鷭(IIIII)I

    move-result v0

    .line 81
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {v0, p2, v1, v2, v3}, Lo/Ć$鷭;->鷭(IIIII)I

    move-result v0

    .line 83
    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
