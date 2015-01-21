.class Lik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lih;


# direct methods
.method constructor <init>(Lih;)V
    .locals 0
    .parameter

    .prologue
    .line 1639
    iput-object p1, p0, Lik;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 1643
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1644
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1645
    iget-object v1, p0, Lik;->a:Lih;

    iget-object v1, v1, Lih;->a:Lhr;

    invoke-static {v1}, Lhr;->a(Lhr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1647
    const/4 v0, 0x1

    return v0
.end method
