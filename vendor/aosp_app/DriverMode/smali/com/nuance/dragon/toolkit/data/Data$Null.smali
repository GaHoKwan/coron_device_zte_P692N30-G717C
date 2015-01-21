.class public final Lcom/nuance/dragon/toolkit/data/Data$Null;
.super Lcom/nuance/dragon/toolkit/data/Data;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/data/Data;-><init>(S)V

    return-void
.end method


# virtual methods
.method protected final putInJSON(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[null]"

    return-object v0
.end method
