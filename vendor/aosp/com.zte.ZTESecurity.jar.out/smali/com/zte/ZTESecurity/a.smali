.class public Lcom/zte/ZTESecurity/a;
.super Ljava/util/AbstractMap;


# instance fields
.field private cc:Lcom/zte/ZTESecurity/h;

.field private map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/zte/ZTESecurity/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Lcom/zte/ZTESecurity/a;->map:Ljava/util/Map;

    iput-object p2, p0, Lcom/zte/ZTESecurity/a;->cc:Lcom/zte/ZTESecurity/h;

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/zte/ZTESecurity/h;)Ljava/util/Map;
    .locals 1

    new-instance v0, Lcom/zte/ZTESecurity/a;

    invoke-direct {v0, p0, p1}, Lcom/zte/ZTESecurity/a;-><init>(Ljava/util/Map;Lcom/zte/ZTESecurity/h;)V

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/zte/ZTESecurity/a;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/ZTESecurity/a;->cc:Lcom/zte/ZTESecurity/h;

    invoke-interface {v0, p1}, Lcom/zte/ZTESecurity/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/ZTESecurity/a;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/a;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
