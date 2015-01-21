.class Ltq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Ltq;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 553
    invoke-static {}, Ltm;->a()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Ltq;->a:Ltm;

    invoke-static {v0}, Ltm;->a(Ltm;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bn:I

    .line 555
    iget-object v0, p0, Ltq;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 556
    invoke-static {}, Ltm;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 557
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ltm;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 560
    return-void
.end method
