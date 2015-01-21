.class public final Lcom/nuance/dragon/toolkit/util/a/a;
.super Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/nuance/dragon/toolkit/util/JSONCompliant;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nuance/dragon/toolkit/util/JSONCompliant;

    invoke-interface {p1}, Lcom/nuance/dragon/toolkit/util/JSONCompliant;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/util/a/a;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x1

    return v0
.end method
