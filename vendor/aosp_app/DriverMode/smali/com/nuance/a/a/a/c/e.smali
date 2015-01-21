.class public Lcom/nuance/a/a/a/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/a/a/a/a/b/a/c;


# static fields
.field private static final a:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field private final b:Lcom/nuance/a/a/a/c/a;

.field private final c:Ljava/lang/Thread;

.field private final d:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/c/e;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/e;->d:Ljava/util/Hashtable;

    new-instance v0, Lcom/nuance/a/a/a/c/a;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/e;->b:Lcom/nuance/a/a/a/c/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/a/a/a/c/e$1;

    invoke-direct {v1, p0}, Lcom/nuance/a/a/a/c/e$1;-><init>(Lcom/nuance/a/a/a/c/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nuance/a/a/a/c/e;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/nuance/a/a/a/c/e;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/a/a/a/c/e;)Lcom/nuance/a/a/a/c/a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e;->b:Lcom/nuance/a/a/a/c/a;

    return-object v0
.end method

.method static synthetic d()Lcom/nuance/a/a/a/a/b/a/b$a;
    .locals 1

    sget-object v0, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nuance/a/a/a/a/b/a/f$a;J)V
    .locals 4

    new-instance v0, Lcom/nuance/a/a/a/c/e$b;

    invoke-direct {v0, p0, p1}, Lcom/nuance/a/a/a/c/e$b;-><init>(Lcom/nuance/a/a/a/c/e;Lcom/nuance/a/a/a/a/b/a/f$a;)V

    sget-object v1, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TIMER _handler.postDelayed("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/a/a/a/c/e;->b:Lcom/nuance/a/a/a/c/a;

    invoke-virtual {v1, v0, p2, p3}, Lcom/nuance/a/a/a/c/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/nuance/a/a/a/c/e$a;

    invoke-direct {v0, p1, p2}, Lcom/nuance/a/a/a/c/e$a;-><init>(Ljava/lang/Object;Lcom/nuance/a/a/a/a/b/a/c$b;)V

    check-cast p4, Ljava/lang/Thread;

    iput-object p4, v0, Lcom/nuance/a/a/a/c/e$a;->b:Ljava/lang/Thread;

    check-cast p3, Ljava/lang/Thread;

    iput-object p3, v0, Lcom/nuance/a/a/a/c/e$a;->a:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/nuance/a/a/a/c/e;->b:Lcom/nuance/a/a/a/c/a;

    new-instance v2, Lcom/nuance/a/a/a/c/e$2;

    invoke-direct {v2, v0}, Lcom/nuance/a/a/a/c/e$2;-><init>(Lcom/nuance/a/a/a/c/e$a;)V

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/c/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/nuance/a/a/a/a/b/a/f$a;)Z
    .locals 4

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/c/e$b;

    sget-object v1, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TIMER cancelTask() _pendingTimerTasks.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/a/a/a/c/e;->d:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nuance/a/a/a/c/e;->a:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TIMER _handler.removeCallbacks("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/nuance/a/a/a/c/e;->b:Lcom/nuance/a/a/a/c/a;

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/c/a;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e;->b:Lcom/nuance/a/a/a/c/a;

    new-instance v1, Lcom/nuance/a/a/a/c/e$3;

    invoke-direct {v1}, Lcom/nuance/a/a/a/c/e$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/c/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
