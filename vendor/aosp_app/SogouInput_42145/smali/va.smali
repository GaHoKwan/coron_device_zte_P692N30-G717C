.class Lva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luv;


# direct methods
.method constructor <init>(Luv;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lva;->a:Luv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 679
    invoke-static {}, Luv;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lva;->a:Luv;

    invoke-static {v0}, Luv;->a(Luv;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bm:I

    .line 681
    iget-object v0, p0, Lva;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 682
    invoke-static {}, Luv;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 683
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 685
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Luv;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 686
    return-void
.end method
