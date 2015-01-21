.class Lcom/zte/zdm/application/activities/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/a/j;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zte/zdm/application/activities/b;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/b;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/f;->e:Lcom/zte/zdm/application/activities/b;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/f;->a:Lcom/zte/zdm/a/j;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/f;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/zte/zdm/application/activities/f;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/zte/zdm/application/activities/f;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeyEventAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/activities/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "alert back to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/activities/f;->e:Lcom/zte/zdm/application/activities/b;

    iget v1, v1, Lcom/zte/zdm/application/activities/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/f;->e:Lcom/zte/zdm/application/activities/b;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/f;->a:Lcom/zte/zdm/a/j;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/zte/zdm/application/activities/f;->b:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/zte/zdm/application/activities/f;->c:Ljava/lang/Runnable;

    const-wide/16 v5, 0x0

    iget-object v8, p0, Lcom/zte/zdm/application/activities/f;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;JILjava/lang/String;)I

    :cond_0
    return v7
.end method
