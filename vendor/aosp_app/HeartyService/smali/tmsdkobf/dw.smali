.class public final Ltmsdkobf/dw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/dw$a;
    }
.end annotation


# static fields
.field private static kB:Ltmsdkobf/dh;

.field private static kC:Ltmsdkobf/dw;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static N()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Ltmsdkobf/dw;->kB:Ltmsdkobf/dh;

    invoke-interface {v0}, Ltmsdkobf/dh;->N()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static S()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ltmsdkobf/dw;->kB:Ltmsdkobf/dh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(F)V
    .locals 1
    .parameter

    .prologue
    .line 66
    sget-object v0, Ltmsdkobf/dw;->kB:Ltmsdkobf/dh;

    .line 67
    return-void
.end method

.method public static aa()Ltmsdkobf/dw;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ltmsdkobf/dw;->kC:Ltmsdkobf/dw;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ltmsdkobf/dw;

    invoke-direct {v0}, Ltmsdkobf/dw;-><init>()V

    sput-object v0, Ltmsdkobf/dw;->kC:Ltmsdkobf/dw;

    .line 29
    :cond_0
    sget-object v0, Ltmsdkobf/dw;->kC:Ltmsdkobf/dw;

    return-object v0
.end method

.method private static ab()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 91
    :try_start_0
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v1

    .line 92
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 94
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 95
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 101
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static as(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-static {}, Ltmsdkobf/dw;->ab()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 163
    :cond_1
    invoke-static {v3}, Ltmsdkobf/dw;->d(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    invoke-static {}, Ltmsdkobf/dp;->R()I

    move-result v4

    .line 169
    if-eqz v4, :cond_0

    .line 174
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, host:Ljava/lang/String;
    invoke-static {}, Ltmsdkobf/dt;->T()Ltmsdkobf/dt;

    move-result-object v4

    invoke-virtual {v4, v1}, Ltmsdkobf/dt;->au(Ljava/lang/String;)Ltmsdkobf/dq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    .local v0, dnsIpList:Ltmsdkobf/dq;
    if-eqz v0, :cond_0

    .line 188
    iget-boolean v4, v0, Ltmsdkobf/dq;->a:Z

    if-eqz v4, :cond_0

    .line 191
    iget-object v4, v0, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    iget-object v4, v0, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 195
    goto :goto_0

    .line 179
    .end local v0           #dnsIpList:Ltmsdkobf/dq;
    .end local v1           #host:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .restart local v0       #dnsIpList:Ltmsdkobf/dq;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Z)Z
    .locals 3
    .parameter "isRetried"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    invoke-static {}, Ltmsdkobf/dw;->ab()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    invoke-static {}, Ltmsdkobf/dp;->R()I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    if-eqz p0, :cond_0

    .line 118
    :cond_2
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Ltmsdkobf/gf;->as(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 123
    goto :goto_0

    :cond_3
    move v2, v0

    .line 114
    goto :goto_1
.end method


# virtual methods
.method public final a(Ltmsdkobf/dh;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 40
    sput-object p1, Ltmsdkobf/dw;->kB:Ltmsdkobf/dh;

    .line 41
    new-instance v0, Ltmsdkobf/dw$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltmsdkobf/dw$a;-><init>(Ltmsdkobf/dw;B)V

    .line 42
    invoke-virtual {v0}, Ltmsdkobf/dw$a;->start()V

    .line 43
    return-void
.end method
