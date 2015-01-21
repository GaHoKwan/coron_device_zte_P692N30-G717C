.class Laez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Laey;


# direct methods
.method constructor <init>(Laey;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Laez;->a:Laey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Laez;->a:Laey;

    iget-object v0, v0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    iget-object v0, p0, Laez;->a:Laey;

    iget-object v0, v0, Laey;->a:Laew;

    invoke-static {v0}, Laew;->a(Laew;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    return-void
.end method
