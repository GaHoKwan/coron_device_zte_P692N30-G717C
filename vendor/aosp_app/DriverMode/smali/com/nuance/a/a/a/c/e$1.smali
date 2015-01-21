.class final Lcom/nuance/a/a/a/c/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/c/e;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/c/e$1;->a:Lcom/nuance/a/a/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e$1;->a:Lcom/nuance/a/a/a/c/e;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/e;->b(Lcom/nuance/a/a/a/c/e;)Lcom/nuance/a/a/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/c/a;->a()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
