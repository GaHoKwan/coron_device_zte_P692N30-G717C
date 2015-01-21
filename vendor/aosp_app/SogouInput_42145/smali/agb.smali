.class Lagb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lagb;->a:Lafs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lagb;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)V

    .line 319
    iget-object v7, p0, Lagb;->a:Lafs;

    const/4 v0, 0x5

    iget-object v2, p0, Lagb;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Lamj;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    invoke-static {v7, v0}, Lafs;->a(Lafs;Lsg;)Lsg;

    .line 322
    iget-object v0, p0, Lagb;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lagb;->a:Lafs;

    invoke-static {v2}, Lafs;->a(Lafs;)Lsg;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lqy;->a(ILsg;)I

    move-result v0

    .line 323
    if-lez v0, :cond_0

    .line 324
    iget-object v0, p0, Lagb;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    :cond_0
    return-void
.end method
