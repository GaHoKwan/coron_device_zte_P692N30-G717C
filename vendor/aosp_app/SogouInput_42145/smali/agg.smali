.class Lagg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 1397
    iput-object p1, p0, Lagg;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1399
    iget-object v0, p0, Lagg;->a:Lage;

    iget-object v1, p0, Lagg;->a:Lage;

    invoke-static {v1}, Lage;->a(Lage;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lqy;->a(I)Lsg;

    move-result-object v1

    invoke-static {v0, v1}, Lage;->a(Lage;Lsg;)Lsg;

    .line 1400
    iget-object v0, p0, Lagg;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v1, p0, Lagg;->a:Lage;

    iget-object v0, p0, Lagg;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lsg;

    move-result-object v0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lamr;

    invoke-static {v1, v0}, Lage;->a(Lage;Lamr;)Lamr;

    .line 1402
    iget-object v0, p0, Lagg;->a:Lage;

    invoke-static {v0}, Lage;->a(Lage;)Lamr;

    move-result-object v0

    invoke-virtual {v0}, Lamr;->b()V

    .line 1404
    :cond_0
    return-void
.end method
