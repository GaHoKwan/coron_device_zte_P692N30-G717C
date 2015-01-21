.class public abstract Lcom/nuance/dragon/toolkit/data/Data;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/util/JSONCompliant;
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ASCII:S = 0x16s

.field public static final TYPE_BYTES:S = 0x4s

.field public static final TYPE_DICT:S = 0xe0s

.field public static final TYPE_INT:S = 0xc0s

.field public static final TYPE_NULL:S = 0x5s

.field public static final TYPE_SEQ:S = 0x10s

.field public static final TYPE_STRING:S = 0xc1s

.field public static final TYPE_UTF8:S = 0xc1s


# instance fields
.field private a:S


# direct methods
.method constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/data/Data;)S
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    return v0
.end method

.method public static createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data;
    .locals 1

    const-string v0, "json"

    invoke-static {v0, p0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/nuance/dragon/toolkit/data/Data$Null;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/data/Data$Null;-><init>()V

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {p0}, Lcom/nuance/dragon/toolkit/data/Data$Integer;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/nuance/dragon/toolkit/data/Data$String;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/nuance/dragon/toolkit/data/Data$Bytes;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Bytes;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {p0}, Lcom/nuance/dragon/toolkit/data/Data$Sequence;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Sequence;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x10 -> :sswitch_4
        0x16 -> :sswitch_1
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_1
        0xe0 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/nuance/dragon/toolkit/data/Data;

    iget-short v2, p0, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    iget-short v3, p1, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getType()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method protected abstract putInJSON(Lorg/json/JSONObject;)V
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nuance/dragon/toolkit/data/Data;->putInJSON(Lorg/json/JSONObject;)V

    const-string v0, "type"

    iget-short v2, p0, Lcom/nuance/dragon/toolkit/data/Data;->a:S

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Error adding to JSON"

    invoke-static {p0, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract toString(Ljava/lang/String;)Ljava/lang/String;
.end method
