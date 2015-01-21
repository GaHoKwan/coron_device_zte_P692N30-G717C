.class Lcom/zte/zdm/application/activities/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/a/j;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/zte/zdm/application/activities/b;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/b;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/g;->d:Lcom/zte/zdm/application/activities/b;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/g;->a:Lcom/zte/zdm/a/j;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/g;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/zte/zdm/application/activities/g;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/application/activities/g;->d:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/g;->a:Lcom/zte/zdm/a/j;

    iget-object v2, p0, Lcom/zte/zdm/application/activities/g;->b:Ljava/lang/Runnable;

    new-instance v3, Lcom/zte/zdm/application/activities/h;

    invoke-direct {v3, p0}, Lcom/zte/zdm/application/activities/h;-><init>(Lcom/zte/zdm/application/activities/g;)V

    invoke-static {v0, v1, v2, v3}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/application/activities/b;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
