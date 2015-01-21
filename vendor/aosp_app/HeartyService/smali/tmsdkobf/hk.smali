.class final Ltmsdkobf/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final pN:[Ljava/lang/String;

.field private static final pO:[Ljava/lang/String;

.field private static final pP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cmwap"

    aput-object v1, v0, v3

    const-string v1, "cmnet"

    aput-object v1, v0, v4

    const-string v1, "3gwap"

    aput-object v1, v0, v5

    const-string v1, "3gnet"

    aput-object v1, v0, v6

    const-string v1, "uniwap"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uninet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ctwap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ctnet"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "default"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdkobf/hk;->pN:[Ljava/lang/String;

    .line 56
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cmnet"

    aput-object v1, v0, v3

    const-string v1, "3gnet"

    aput-object v1, v0, v4

    const-string v1, "uninet"

    aput-object v1, v0, v5

    const-string v1, "ctnet"

    aput-object v1, v0, v6

    sput-object v0, Ltmsdkobf/hk;->pO:[Ljava/lang/String;

    .line 57
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cmwap"

    aput-object v1, v0, v3

    const-string v1, "3gwap"

    aput-object v1, v0, v4

    const-string v1, "uniwap"

    aput-object v1, v0, v5

    const-string v1, "ctwap"

    aput-object v1, v0, v6

    sput-object v0, Ltmsdkobf/hk;->pP:[Ljava/lang/String;

    return-void
.end method

.method public static aY(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "apnname"

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, result:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Ltmsdkobf/hk;->pN:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 71
    sget-object v2, Ltmsdkobf/hk;->pN:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Ltmsdkobf/hk;->pN:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 78
    .end local v0           #i:I
    :cond_0
    return-object v1

    .line 70
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static aZ(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Ltmsdkobf/hk;->pO:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 92
    :cond_0
    return v0
.end method

.method public static ba(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Ltmsdkobf/hk;->pP:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    :cond_0
    return v0
.end method
