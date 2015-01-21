.class public Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/DataParam;


# instance fields
.field protected final _dict:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;-><init>(ILjava/lang/String;)V

    const-string v0, "dict"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;->_dict:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(ILjava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "json"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/dragon/toolkit/data/Data$Dictionary;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;->_dict:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    return-void
.end method


# virtual methods
.method a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;->_dict:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-interface {p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    const/4 v0, 0x1

    return v0
.end method
