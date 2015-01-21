.class public Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;
.super Lcom/nuance/dragon/toolkit/util/internal/g;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(I)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>(Ljava/util/List;)V

    return-void
.end method

.method varargs constructor <init>([Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/util/internal/g;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;
    .locals 4

    const-string v0, "entries"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->addInternal(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lcom/nuance/dragon/toolkit/util/a/b;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/util/a/b;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "entries"

    invoke-virtual {v1, v0, v2}, Lcom/nuance/dragon/toolkit/util/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v1
.end method
