.class public Lcom/nuance/dragon/toolkit/cloudservices/ChoiceParam;
.super Lcom/nuance/dragon/toolkit/cloudservices/StringParam;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dragon/toolkit/cloudservices/StringParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/dragon/toolkit/cloudservices/d;Lcom/nuance/dragon/toolkit/cloudservices/Param$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/ChoiceParam;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/ChoiceParam;->_value:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
