.class Ltmsdkobf/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected jj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected jk:Ljava/util/HashMap;
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

.field protected jm:Ljava/lang/String;

.field jn:Ltmsdkobf/dd;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cv;->jj:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cv;->jk:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cv;->jl:Ljava/util/HashMap;

    .line 32
    const-string v0, "GBK"

    iput-object v0, p0, Ltmsdkobf/cv;->jm:Ljava/lang/String;

    .line 34
    new-instance v0, Ltmsdkobf/dd;

    invoke-direct {v0}, Ltmsdkobf/dd;-><init>()V

    iput-object v0, p0, Ltmsdkobf/cv;->jn:Ltmsdkobf/dd;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, listTpye:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "byte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only byte[] is supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 283
    const-string v5, "java.util.List"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ltmsdkobf/cv;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 318
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string v5, "Array"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_2
    instance-of v5, p2, Ljava/lang/reflect/Array;

    if-eqz v5, :cond_3

    .line 291
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can not support Array, please use List"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_3
    instance-of v5, p2, Ljava/util/List;

    if-eqz v5, :cond_5

    .line 293
    const-string v5, "java.util.List"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, p2

    .line 294
    check-cast v2, Ljava/util/List;

    .line 295
    .local v2, list:Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 296
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ltmsdkobf/cv;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :cond_4
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v2           #list:Ljava/util/List;
    :cond_5
    instance-of v5, p2, Ljava/util/Map;

    if-eqz v5, :cond_7

    .line 302
    const-string v5, "java.util.Map"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p2

    .line 303
    check-cast v3, Ljava/util/Map;

    .line 304
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 305
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    .local v0, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 307
    .local v1, key:Ljava/lang/Object;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 308
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1, v4}, Ltmsdkobf/cv;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_6
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v3           #map:Ljava/util/Map;
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public E()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ltmsdkobf/cv;->jl:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    return-void
.end method

.method public F()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    new-instance v0, Ltmsdkobf/de;

    invoke-direct {v0, v2}, Ltmsdkobf/de;-><init>(I)V

    .line 322
    .local v0, _os:Ltmsdkobf/de;
    iget-object v1, p0, Ltmsdkobf/cv;->jm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltmsdkobf/de;->ar(Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Ltmsdkobf/cv;->jj:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/de;->a(Ljava/util/Map;I)V

    .line 324
    invoke-virtual {v0}, Ltmsdkobf/de;->M()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/dg;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public an(Ljava/lang/String;)V
    .locals 0
    .parameter "encodeName"

    .prologue
    .line 49
    iput-object p1, p0, Ltmsdkobf/cv;->jm:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public b([B)V
    .locals 6
    .parameter "buffer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    iget-object v2, p0, Ltmsdkobf/cv;->jn:Ltmsdkobf/dd;

    invoke-virtual {v2, p1}, Ltmsdkobf/dd;->d([B)V

    .line 329
    iget-object v2, p0, Ltmsdkobf/cv;->jn:Ltmsdkobf/dd;

    iget-object v3, p0, Ltmsdkobf/cv;->jm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltmsdkobf/dd;->ar(Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 331
    .local v0, _tempdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;[B>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    .local v1, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v2, p0, Ltmsdkobf/cv;->jn:Ltmsdkobf/dd;

    invoke-virtual {v2, v0, v4, v4}, Ltmsdkobf/dd;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Ltmsdkobf/cv;->jj:Ljava/util/HashMap;

    .line 335
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
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
    .local p2, t:Ljava/lang/Object;,"TT;"
    const/4 v6, 0x1

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "put key can not is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "put value can not is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_1
    instance-of v5, p2, Ljava/util/Set;

    if-eqz v5, :cond_2

    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can not support Set"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_2
    new-instance v0, Ltmsdkobf/de;

    invoke-direct {v0}, Ltmsdkobf/de;-><init>()V

    .line 96
    .local v0, _out:Ltmsdkobf/de;
    iget-object v5, p0, Ltmsdkobf/cv;->jm:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ltmsdkobf/de;->ar(Ljava/lang/String;)I

    .line 97
    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5}, Ltmsdkobf/de;->a(Ljava/lang/Object;I)V

    .line 98
    invoke-virtual {v0}, Ltmsdkobf/de;->M()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Ltmsdkobf/dg;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 99
    .local v1, _sBuffer:[B
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v4, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v3, listType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v3, p2}, Ltmsdkobf/cv;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 102
    invoke-static {v3}, Ltmsdkobf/ct;->m(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, className:Ljava/lang/String;
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v5, p0, Ltmsdkobf/cv;->jl:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v5, p0, Ltmsdkobf/cv;->jj:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method
