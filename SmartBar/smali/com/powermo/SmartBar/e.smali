.class Lcom/powermo/SmartBar/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/c;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/e;->a:Lcom/powermo/SmartBar/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/e;->a:Lcom/powermo/SmartBar/c;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/c;Ljava/text/Collator;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/e;->a:Lcom/powermo/SmartBar/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/c;Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/e;->a:Lcom/powermo/SmartBar/c;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/c;->d()V

    return-void
.end method
