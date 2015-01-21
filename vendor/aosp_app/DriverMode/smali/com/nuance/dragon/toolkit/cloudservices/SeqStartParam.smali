.class public Lcom/nuance/dragon/toolkit/cloudservices/SeqStartParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/DictionaryParam;-><init>(ILjava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/SeqStartParam;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/SeqStartParam;->_dict:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    invoke-interface {p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/d;->d(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;)V

    const/4 v0, 0x1

    return v0
.end method
