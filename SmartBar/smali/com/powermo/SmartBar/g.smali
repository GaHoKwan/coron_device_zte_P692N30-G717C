.class Lcom/powermo/SmartBar/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/c;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/g;->a:Lcom/powermo/SmartBar/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/powermo/SmartBar/g;->a:Lcom/powermo/SmartBar/c;

    invoke-static {v0}, Lcom/powermo/SmartBar/c;->c(Lcom/powermo/SmartBar/c;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/g;->a:Lcom/powermo/SmartBar/c;

    invoke-static {v0}, Lcom/powermo/SmartBar/c;->d(Lcom/powermo/SmartBar/c;)Lcom/powermo/SmartBar/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v1}, Lcom/powermo/SmartBar/l;->a(ZZ)V

    :cond_0
    return-void
.end method
