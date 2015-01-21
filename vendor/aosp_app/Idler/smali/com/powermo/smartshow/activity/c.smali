.class Lcom/powermo/smartshow/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/a;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/a;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/c;->a:Lcom/powermo/smartshow/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/c;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;Ljava/text/Collator;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/c;->a:Lcom/powermo/smartshow/activity/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;Z)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/c;->a:Lcom/powermo/smartshow/activity/a;

    invoke-virtual {v0}, Lcom/powermo/smartshow/activity/a;->c()V

    return-void
.end method
