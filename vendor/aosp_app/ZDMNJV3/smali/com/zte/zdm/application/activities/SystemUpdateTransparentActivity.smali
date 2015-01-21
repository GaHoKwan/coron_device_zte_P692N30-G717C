.class public Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/zte/zdm/a/j;


# instance fields
.field private a:Lcom/zte/zdm/application/a;

.field private b:Lcom/zte/zdm/application/b/g;

.field private c:Lcom/zte/zdm/application/activities/b;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->d:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->setContentView(I)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->a:Lcom/zte/zdm/application/a;

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->a:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/b;->h:Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/b;

    iput-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->c:Lcom/zte/zdm/application/activities/b;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; and mmicontroller.screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->b:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/d;->a(Lcom/zte/zdm/a/j;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->d:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/application/activities/SystemUpdateTransparentActivity;->d:Z

    return-void
.end method
