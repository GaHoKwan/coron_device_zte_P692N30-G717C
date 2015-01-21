.class public Lcom/nuance/dragon/toolkit/cloudservices/SequenceParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/Param;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Sequence;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/Param;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 1

    const-string v0, "Sending single sequence param is not supported, sequence param should be wrapped by DictionaryParam"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
