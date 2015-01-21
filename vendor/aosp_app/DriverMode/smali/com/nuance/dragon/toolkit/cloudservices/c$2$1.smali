.class final Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/cloudservices/c$2;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/c$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/c$2;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/c;->a(Lcom/nuance/dragon/toolkit/cloudservices/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/c$2$1;->b:Lcom/nuance/dragon/toolkit/cloudservices/c$2;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/cloudservices/c$2;->a:Lcom/nuance/dragon/toolkit/cloudservices/c;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/cloudservices/c;->a(Lcom/nuance/dragon/toolkit/cloudservices/c;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-void
.end method
