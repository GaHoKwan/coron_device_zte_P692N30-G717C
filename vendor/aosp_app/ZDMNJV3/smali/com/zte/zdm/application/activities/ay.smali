.class Lcom/zte/zdm/application/activities/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/z;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/application/activities/z;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/ay;->a:Lcom/zte/zdm/application/activities/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zte/zdm/application/activities/ay;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/zdm/application/activities/z;->s:Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/ay;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/ay;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/ay;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/ay;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
