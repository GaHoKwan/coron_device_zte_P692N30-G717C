.class final Lcom/b/a/a/g;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/b/a/a/g;->a:Lcom/b/a/a/e;

    invoke-virtual {v0}, Lcom/b/a/a/e;->a()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
