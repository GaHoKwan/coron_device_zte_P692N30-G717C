.class Lcom/zte/zdm/application/activities/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field a:I

.field final synthetic b:Lcom/zte/zdm/application/activities/b;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/activities/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/x;->b:Lcom/zte/zdm/application/activities/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zte/zdm/application/activities/x;->a:I

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/x;->b:Lcom/zte/zdm/application/activities/b;

    iget v1, p0, Lcom/zte/zdm/application/activities/x;->a:I

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/b;->d(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/x;->b:Lcom/zte/zdm/application/activities/b;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/b;->c(Lcom/zte/zdm/application/activities/b;)Ljava/util/Hashtable;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/activities/x;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const-string v1, "Check an action is to be performed after dismiss"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "Action found - Starting action thread"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v0, "Removing Action from dismissRunnable list"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/x;->b:Lcom/zte/zdm/application/activities/b;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/b;->c(Lcom/zte/zdm/application/activities/b;)Ljava/util/Hashtable;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/activities/x;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
