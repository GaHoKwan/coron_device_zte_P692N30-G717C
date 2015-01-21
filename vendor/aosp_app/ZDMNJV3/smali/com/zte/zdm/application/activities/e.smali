.class Lcom/zte/zdm/application/activities/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/zte/zdm/a/j;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:I

.field final synthetic f:Lcom/zte/zdm/application/activities/b;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/b;Landroid/app/Activity;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/e;->f:Lcom/zte/zdm/application/activities/b;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/e;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/e;->b:Lcom/zte/zdm/a/j;

    iput-object p4, p0, Lcom/zte/zdm/application/activities/e;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/zte/zdm/application/activities/e;->d:Ljava/lang/Runnable;

    iput p6, p0, Lcom/zte/zdm/application/activities/e;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/zte/zdm/application/activities/e;->f:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/e;->f:Lcom/zte/zdm/application/activities/b;

    invoke-static {v1}, Lcom/zte/zdm/application/activities/b;->d(Lcom/zte/zdm/application/activities/b;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/e;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/e;->b:Lcom/zte/zdm/a/j;

    iget-object v4, p0, Lcom/zte/zdm/application/activities/e;->c:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/zte/zdm/application/activities/e;->d:Ljava/lang/Runnable;

    iget v6, p0, Lcom/zte/zdm/application/activities/e;->e:I

    invoke-virtual/range {v0 .. v6}, Lcom/zte/zdm/application/activities/b;->a(ILandroid/app/Activity;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method
