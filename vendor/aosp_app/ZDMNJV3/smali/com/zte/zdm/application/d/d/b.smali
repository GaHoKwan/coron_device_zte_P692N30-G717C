.class Lcom/zte/zdm/application/d/d/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/d/d/a;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/d/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Session  mTimerInterval######: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-static {v1}, Lcom/zte/zdm/application/d/d/a;->a(Lcom/zte/zdm/application/d/d/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Session  mTimerretrytime######: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-static {v1}, Lcom/zte/zdm/application/d/d/a;->b(Lcom/zte/zdm/application/d/d/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine().isEngineBusy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needToReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-virtual {v1}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    iget-object v1, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-static {v1}, Lcom/zte/zdm/application/d/d/a;->a(Lcom/zte/zdm/application/d/d/a;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/zte/zdm/application/d/d/a;->a(Lcom/zte/zdm/application/d/d/a;I)I

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-static {v0}, Lcom/zte/zdm/application/d/d/a;->c(Lcom/zte/zdm/application/d/d/a;)I

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/d/d/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/d/d/a;->a(Lcom/zte/zdm/application/d/d/a;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/d/d/b;->a:Lcom/zte/zdm/application/d/d/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/d/d/a;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->g()V

    :cond_0
    return-void
.end method
