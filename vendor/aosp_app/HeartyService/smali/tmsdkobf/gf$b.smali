.class public final Ltmsdkobf/gf$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private synthetic mU:Ltmsdkobf/gf;


# direct methods
.method public constructor <init>(Ltmsdkobf/gf;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const-wide v7, 0x4076800000000000L

    const/4 v6, 0x0

    .line 88
    :try_start_0
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    iget-object v4, v4, Ltmsdkobf/gf;->jP:Ljava/lang/String;

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 88
    invoke-static {v4}, Ltmsdkobf/gn;->i([B)[B

    move-result-object v0

    .line 90
    .local v0, locateRawData:[B
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;Z)V

    .line 91
    const-string v4, "http://ls.map.soso.com/deflect?c=1"

    const-string v5, "SOSO MAP LBS SDK"

    invoke-static {v4, v5, v0}, Ltmsdkobf/gf;->a(Ljava/lang/String;Ljava/lang/String;[B)Ltmsdkobf/dx;

    move-result-object v3

    .line 92
    .local v3, result:Ltmsdkobf/dx;
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;Z)V

    .line 94
    iget-object v4, v3, Ltmsdkobf/dx;->jR:[B

    invoke-static {v4}, Ltmsdkobf/gn;->j([B)[B

    move-result-object v1

    .line 95
    .local v1, netResult:[B
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    iget-object v5, v3, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    invoke-static {v4, v1, v5}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0           #locateRawData:[B
    .end local v1           #netResult:[B
    .end local v3           #result:Ltmsdkobf/dx;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v4

    const/4 v2, 0x0

    .line 98
    .local v2, netTryTimes:I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    if-le v2, v4, :cond_0

    .line 112
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    invoke-static {v4, v6}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;Z)V

    .line 113
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    invoke-static {v4}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;)Ltmsdkobf/gf$a;

    move-result-object v4

    invoke-interface {v4, v7, v8, v7, v8}, Ltmsdkobf/gf$a;->b(DD)V

    goto :goto_0

    .line 100
    :cond_0
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ltmsdkobf/gf$b;->sleep(J)V

    .line 102
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    iget-object v4, v4, Ltmsdkobf/gf;->jP:Ljava/lang/String;

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 102
    invoke-static {v4}, Ltmsdkobf/gn;->i([B)[B

    move-result-object v0

    .line 104
    .restart local v0       #locateRawData:[B
    const-string v4, "http://ls.map.soso.com/deflect?c=1"

    const-string v5, "SOSO MAP LBS SDK"

    invoke-static {v4, v5, v0}, Ltmsdkobf/gf;->a(Ljava/lang/String;Ljava/lang/String;[B)Ltmsdkobf/dx;

    move-result-object v3

    .line 105
    .restart local v3       #result:Ltmsdkobf/dx;
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;Z)V

    .line 106
    iget-object v4, v3, Ltmsdkobf/dx;->jR:[B

    invoke-static {v4}, Ltmsdkobf/gn;->j([B)[B

    move-result-object v1

    .line 107
    .restart local v1       #netResult:[B
    iget-object v4, p0, Ltmsdkobf/gf$b;->mU:Ltmsdkobf/gf;

    iget-object v5, v3, Ltmsdkobf/dx;->jP:Ljava/lang/String;

    invoke-static {v4, v1, v5}, Ltmsdkobf/gf;->a(Ltmsdkobf/gf;[BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0           #locateRawData:[B
    .end local v1           #netResult:[B
    .end local v3           #result:Ltmsdkobf/dx;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
