.class Llk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Llf;


# direct methods
.method constructor <init>(Llf;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Llk;->a:Llf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Llk;->a:Llf;

    iget-object v1, p0, Llk;->a:Llf;

    invoke-static {v1}, Llf;->a(Llf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lqy;->a(I)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Llf;->a(Llf;Lsg;)Lsg;

    .line 529
    iget-object v0, p0, Llk;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v1, p0, Llk;->a:Llf;

    iget-object v0, p0, Llk;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamr;

    invoke-static {v1, v0}, Llf;->a(Llf;Lamr;)Lamr;

    .line 532
    iget-object v0, p0, Llk;->a:Llf;

    invoke-static {v0}, Llf;->a(Llf;)Lamr;

    move-result-object v0

    invoke-virtual {v0}, Lamr;->b()V

    .line 535
    :cond_0
    return-void
.end method
