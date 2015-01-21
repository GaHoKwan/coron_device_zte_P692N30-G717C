.class final Lcom/nuance/dragon/toolkit/vocon/d$11;
.super Ljava/util/ArrayList;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nuance/dragon/toolkit/vocon/d;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/vocon/d;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/vocon/d$11;->b:Lcom/nuance/dragon/toolkit/vocon/d;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/vocon/d$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/vocon/d$11;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/dragon/toolkit/vocon/d$11;->add(Ljava/lang/Object;)Z

    return-void
.end method
