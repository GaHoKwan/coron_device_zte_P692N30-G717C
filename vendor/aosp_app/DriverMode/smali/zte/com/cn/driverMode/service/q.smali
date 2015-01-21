.class final Lzte/com/cn/driverMode/service/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/m;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/q;->a:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/service/q;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->h(Lzte/com/cn/driverMode/service/m;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/q;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/m;->h(Lzte/com/cn/driverMode/service/m;)Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;

    move-result-object v0

    new-instance v1, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;

    iget-object v2, p0, Lzte/com/cn/driverMode/service/q;->a:Lzte/com/cn/driverMode/service/m;

    invoke-static {}, Lzte/com/cn/driverMode/service/m;->l()Lcom/nuance/dragon/toolkit/language/Language;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nuance/dragon/toolkit/vocon/VoconConfig;-><init>(Lcom/nuance/dragon/toolkit/language/Language;)V

    const-string v2, "default"

    new-instance v3, Lzte/com/cn/driverMode/service/r;

    invoke-direct {v3, p0}, Lzte/com/cn/driverMode/service/r;-><init>(Lzte/com/cn/driverMode/service/q;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer;->initialize(Lcom/nuance/dragon/toolkit/vocon/VoconConfig;Ljava/lang/String;Lcom/nuance/dragon/toolkit/vocon/VoconRecognizer$InitializeListener;)V

    :cond_0
    return-void
.end method
