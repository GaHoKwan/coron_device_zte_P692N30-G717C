.class Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$1;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$1;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$1;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->onContentUpdate()V
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$000(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)V

    :cond_0
    return-void
.end method
