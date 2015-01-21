.class Lcom/zte/zdm/application/activities/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/g;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/h;->a:Lcom/zte/zdm/application/activities/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/h;->a:Lcom/zte/zdm/application/activities/g;

    iget-object v0, v0, Lcom/zte/zdm/application/activities/g;->c:Landroid/app/Activity;

    sget v1, Lcom/zte/zdm/application/activities/b;->g:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method
