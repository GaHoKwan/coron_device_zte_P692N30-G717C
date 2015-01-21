.class final Lcom/powermo/connectivity/services/c;
.super Lcom/powermo/base/r;


# instance fields
.field final synthetic a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;


# direct methods
.method private constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/connectivity/services/c;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-direct {p0}, Lcom/powermo/base/r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/connectivity/services/c;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V

    return-void
.end method


# virtual methods
.method protected final c()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/powermo/connectivity/services/c;->a:Lcom/powermo/connectivity/services/AndroidServiceRootServer;

    invoke-static {v1}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->b(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pm_sainputserver start -n input_proxy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "pm_sainputserver start -n qwerty"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
