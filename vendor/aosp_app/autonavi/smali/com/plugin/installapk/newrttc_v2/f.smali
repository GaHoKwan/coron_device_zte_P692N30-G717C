.class public Lcom/plugin/installapk/newrttc_v2/f;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;


# direct methods
.method public constructor <init>(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)V
    .locals 0

    iput-object p1, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Z)Z

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0, p1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Z)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-static {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b(Lcom/plugin/installapk/newrttc_v2/NewRttcService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->b(Lcom/plugin/installapk/newrttc_v2/NewRttcService;Z)Z

    iget-object v0, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/plugin/installapk/newrttc_v2/f;->a:Lcom/plugin/installapk/newrttc_v2/NewRttcService;

    invoke-virtual {v1, v0}, Lcom/plugin/installapk/newrttc_v2/NewRttcService;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
