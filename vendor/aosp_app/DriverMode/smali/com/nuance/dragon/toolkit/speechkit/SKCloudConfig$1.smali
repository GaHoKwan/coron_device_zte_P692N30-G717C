.class final Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;
.super Ljava/util/ArrayList;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;->a:Z

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CalllogConfig;

    invoke-direct {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/CalllogConfig;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;

    invoke-direct {v0, v1, v2, v2}, Lcom/nuance/dragon/toolkit/cloudservices/SSLConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
