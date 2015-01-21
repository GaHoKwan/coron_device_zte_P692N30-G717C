.class Lcom/zte/zdm/application/activities/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/application/activities/z;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/ak;->b:Lcom/zte/zdm/application/activities/z;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/ak;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/activities/ak;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
