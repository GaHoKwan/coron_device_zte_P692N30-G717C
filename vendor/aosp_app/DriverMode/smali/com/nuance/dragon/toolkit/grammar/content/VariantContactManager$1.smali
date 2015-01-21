.class final Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$1;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager$1;->a:Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/grammar/content/VariantContactManager;->onContentUpdate()V

    :cond_0
    return-void
.end method
