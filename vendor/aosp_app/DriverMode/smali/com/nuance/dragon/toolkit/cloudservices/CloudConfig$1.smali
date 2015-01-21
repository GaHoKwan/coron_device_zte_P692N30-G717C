.class final Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$1;
.super Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CalllogConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CalllogConfig;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
