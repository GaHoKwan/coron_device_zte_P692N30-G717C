.class final Lcom/ctc/epush/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/epush/IndexActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/IndexActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/f;->a:Lcom/ctc/epush/IndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/ctc/epush/f;->a:Lcom/ctc/epush/IndexActivity;

    iget-object v1, p0, Lcom/ctc/epush/f;->a:Lcom/ctc/epush/IndexActivity;

    invoke-static {v1}, Lcom/ctc/epush/IndexActivity;->a(Lcom/ctc/epush/IndexActivity;)Lcom/ctc/c/n;

    move-result-object v1

    const-string v2, "pushAppJson"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ctc/c/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
