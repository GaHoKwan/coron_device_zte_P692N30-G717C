.class Lcom/powermo/SmartBar/ao;
.super Lcom/powermo/SmartBar/at;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ai;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ai;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/ao;->a:Lcom/powermo/SmartBar/ai;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powermo/SmartBar/at;-><init>(Lcom/powermo/SmartBar/ai;Lcom/powermo/SmartBar/at;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/powermo/SmartBar/ar;I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/ao;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v0}, Lcom/powermo/SmartBar/ai;->a(Lcom/powermo/SmartBar/ai;)Lcom/powermo/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/powermo/b/a;->b(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ao;->a:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->g()V

    return-void
.end method
