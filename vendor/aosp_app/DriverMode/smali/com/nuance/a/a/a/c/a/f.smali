.class final Lcom/nuance/a/a/a/c/a/f;
.super Lcom/nuance/a/a/a/c/a/b;


# instance fields
.field private c:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/a/a/a/c/a/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/f;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/f;->c:Landroid/media/AudioManager;

    return-void
.end method
