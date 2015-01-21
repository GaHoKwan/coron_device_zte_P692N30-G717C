.class public Lcom/nuance/dragon/toolkit/cloudservices/StringParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/DataParam;


# instance fields
.field protected final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;-><init>(ILjava/lang/String;)V

    const-string v0, "value"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/StringParam;->_value:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/DataParam;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/StringParam;->_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/StringParam;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/StringParam;->_value:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
