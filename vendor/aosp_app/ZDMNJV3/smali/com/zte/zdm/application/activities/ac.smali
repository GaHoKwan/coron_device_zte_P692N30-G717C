.class Lcom/zte/zdm/application/activities/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/zte/zdm/a/j;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:I

.field final synthetic f:Lcom/zte/zdm/application/activities/z;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/z;Landroid/app/Activity;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/ac;->f:Lcom/zte/zdm/application/activities/z;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/ac;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/ac;->b:Lcom/zte/zdm/a/j;

    iput-object p4, p0, Lcom/zte/zdm/application/activities/ac;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/zte/zdm/application/activities/ac;->d:Ljava/lang/Runnable;

    iput p6, p0, Lcom/zte/zdm/application/activities/ac;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/zte/zdm/application/activities/ac;->f:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/ac;->f:Lcom/zte/zdm/application/activities/z;

    invoke-static {v1}, Lcom/zte/zdm/application/activities/z;->d(Lcom/zte/zdm/application/activities/z;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/zdm/application/activities/ac;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/zte/zdm/application/activities/ac;->b:Lcom/zte/zdm/a/j;

    iget-object v4, p0, Lcom/zte/zdm/application/activities/ac;->c:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/zte/zdm/application/activities/ac;->d:Ljava/lang/Runnable;

    iget v6, p0, Lcom/zte/zdm/application/activities/ac;->e:I

    invoke-virtual/range {v0 .. v6}, Lcom/zte/zdm/application/activities/z;->a(ILandroid/app/Activity;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method
