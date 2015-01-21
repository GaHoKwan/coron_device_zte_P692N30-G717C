.class public abstract Lcom/zte/zdm/omacp/a/a;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/omacp/a/a;->a:Z

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/omacp/a/a;->a:Z

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Lcom/zte/zdm/omacp/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/omacp/a/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/omacp/a/a;->a:Z

    new-instance v0, Lcom/zte/zdm/omacp/a/b;

    invoke-direct {v0}, Lcom/zte/zdm/omacp/a/b;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/a/a;->show()V

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/a/a;->b()I

    move-result v0

    return v0
.end method

.method public abstract b()I
.end method

.method public dismiss()V
    .locals 1

    const-string v0, "dismiss"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/zte/zdm/omacp/a/a;->d()V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
