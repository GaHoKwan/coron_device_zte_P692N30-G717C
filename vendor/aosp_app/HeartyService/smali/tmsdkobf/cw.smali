.class public Ltmsdkobf/cw;
.super Ltmsdkobf/cv;
.source "SourceFile"


# instance fields
.field private jl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field jn:Ltmsdkobf/dd;

.field protected jo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ltmsdkobf/cv;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ltmsdkobf/dd;

    invoke-direct {v0}, Ltmsdkobf/dd;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    return-void
.end method

.method private a([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "data"
    .parameter "proxy"

    .prologue
    .line 257
    iget-object v1, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    invoke-virtual {v1, p1}, Ltmsdkobf/dd;->d([B)V

    .line 258
    iget-object v1, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    iget-object v2, p0, Ltmsdkobf/cw;->jm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, o:Ljava/lang/Object;
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "o"

    .prologue
    .line 265
    iget-object v0, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37
    return-void
.end method

.method public F()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v1, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 372
    new-instance v0, Ltmsdkobf/de;

    invoke-direct {v0, v2}, Ltmsdkobf/de;-><init>(I)V

    .line 373
    .local v0, _os:Ltmsdkobf/de;
    iget-object v1, p0, Ltmsdkobf/cw;->jm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/de;->ar(Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    .line 375
    invoke-virtual {v0}, Ltmsdkobf/de;->M()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/dg;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 377
    .end local v0           #_os:Ltmsdkobf/de;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Ltmsdkobf/cv;->F()[B

    move-result-object v1

    goto :goto_0
.end method

.method public G()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdkobf/cu;
        }
    .end annotation

    .prologue
    .local p2, proxy:Ljava/lang/Object;,"TT;"
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 137
    iget-object v7, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 138
    iget-object v7, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v5

    .line 140
    :cond_1
    iget-object v7, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    iget-object v7, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 143
    :cond_2
    iget-object v7, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 145
    .local v1, data:[B
    :try_start_0
    invoke-direct {p0, v1, p2}, Ltmsdkobf/cw;->a([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 146
    .local v5, o:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 147
    invoke-direct {p0, p1, v5}, Ltmsdkobf/cw;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v5           #o:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 151
    .local v3, ex:Ljava/lang/Exception;
    new-instance v7, Ltmsdkobf/cu;

    invoke-direct {v7, v3}, Ltmsdkobf/cu;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 155
    .end local v1           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Ltmsdkobf/cw;->jj:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    iget-object v7, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 158
    iget-object v7, p0, Ltmsdkobf/cw;->jl:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 160
    :cond_4
    iget-object v7, p0, Ltmsdkobf/cw;->jj:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 161
    .local v6, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 162
    .local v0, className:Ljava/lang/String;
    new-array v1, v8, [B

    .line 163
    .restart local v1       #data:[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 165
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 169
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_5
    :try_start_1
    iget-object v7, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    invoke-virtual {v7, v1}, Ltmsdkobf/dd;->d([B)V

    .line 170
    iget-object v7, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    iget-object v8, p0, Ltmsdkobf/cw;->jm:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 171
    iget-object v7, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, p2, v8, v9}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 172
    .restart local v5       #o:Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Ltmsdkobf/cw;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 174
    .end local v5           #o:Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 175
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v7, Ltmsdkobf/cu;

    invoke-direct {v7, v3}, Ltmsdkobf/cu;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public bridge synthetic an(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-super {p0, p1}, Ltmsdkobf/cv;->an(Ljava/lang/String;)V

    return-void
.end method

.method public b([B)V
    .locals 5
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 407
    :try_start_0
    invoke-super {p0, p1}, Ltmsdkobf/cv;->b([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    invoke-virtual {v2, p1}, Ltmsdkobf/dd;->d([B)V

    .line 411
    iget-object v2, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    iget-object v3, p0, Ltmsdkobf/cw;->jm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 412
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 413
    .local v0, _tempdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Ltmsdkobf/cw;->jn:Ltmsdkobf/dd;

    invoke-virtual {v2, v0, v4, v4}, Ltmsdkobf/dd;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, t:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "put key can not is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "put value can not is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    instance-of v2, p2, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can not support Set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_2
    new-instance v0, Ltmsdkobf/de;

    invoke-direct {v0}, Ltmsdkobf/de;-><init>()V

    .line 89
    .local v0, _out:Ltmsdkobf/de;
    iget-object v2, p0, Ltmsdkobf/cw;->jm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ltmsdkobf/de;->ar(Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Ltmsdkobf/de;->a(Ljava/lang/Object;I)V

    .line 91
    invoke-virtual {v0}, Ltmsdkobf/de;->M()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Ltmsdkobf/dg;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 92
    .local v1, _sBuffer:[B
    iget-object v2, p0, Ltmsdkobf/cw;->jo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v0           #_out:Ltmsdkobf/de;
    .end local v1           #_sBuffer:[B
    :goto_0
    return-void

    .line 94
    :cond_3
    invoke-super {p0, p1, p2}, Ltmsdkobf/cv;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
