.class Lalk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lalh;


# direct methods
.method constructor <init>(Lalh;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lalk;->a:Lalh;

    iput p2, p0, Lalk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x6

    const/4 v1, -0x1

    const/16 v2, 0x17

    .line 540
    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lqy;->a(II)I

    move-result v0

    .line 543
    if-ne v0, v1, :cond_1

    .line 544
    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lqy;->c(I)I

    move-result v0

    .line 545
    if-eq v0, v1, :cond_0

    .line 546
    iget-object v0, p0, Lalk;->a:Lalh;

    iget-object v1, p0, Lalk;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lqy;->b(I)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lalh;->a(Lalh;Lsg;)Lsg;

    .line 547
    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    .line 549
    iget-object v1, p0, Lalk;->a:Lalh;

    iget-object v1, v1, Lalh;->a:Lalm;

    invoke-virtual {v0, v1}, Lalh;->a(Lalm;)V

    .line 550
    invoke-virtual {v0, v0}, Lalh;->a(Lalh;)V

    .line 561
    :cond_0
    :goto_0
    iget-object v0, p0, Lalk;->a:Lalh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lalh;->a(Lalh;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 562
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lalk;->a:Lalh;

    iget-object v1, p0, Lalk;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lqy;->a(II)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lalh;->a(Lalh;Lsg;)Lsg;

    .line 556
    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    .line 557
    invoke-virtual {v0}, Lalh;->a()V

    .line 558
    iget-object v0, p0, Lalk;->a:Lalh;

    invoke-static {v0}, Lalh;->a(Lalh;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lalk;->a:Lalh;

    invoke-static {v1}, Lalh;->a(Lalh;)Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 559
    iget v1, p0, Lalk;->a:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
