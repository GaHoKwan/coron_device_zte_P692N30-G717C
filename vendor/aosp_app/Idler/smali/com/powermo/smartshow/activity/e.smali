.class Lcom/powermo/smartshow/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/a;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/a;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/e;->a:Lcom/powermo/smartshow/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/e;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/a;->c(Lcom/powermo/smartshow/activity/a;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/e;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/a;->d(Lcom/powermo/smartshow/activity/a;)Lcom/powermo/smartshow/activity/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, v1}, Lcom/powermo/smartshow/activity/j;->a(ZZ)V

    :cond_0
    return-void
.end method
