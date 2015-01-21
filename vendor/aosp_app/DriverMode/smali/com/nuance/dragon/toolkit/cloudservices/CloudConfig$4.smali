.class final Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$4;
.super Ljava/util/ArrayList;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$4;->a:Z

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CalllogConfig;

    iget-boolean v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$4;->a:Z

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CalllogConfig;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$4;->add(Ljava/lang/Object;)Z

    return-void
.end method
