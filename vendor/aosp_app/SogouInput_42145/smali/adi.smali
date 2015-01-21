.class Ladi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ladc;


# direct methods
.method constructor <init>(Ladc;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Ladi;->a:Ladc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Ladi;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lajq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladi;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lajq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lajq;->a(Z)V

    .line 285
    :cond_0
    iget-object v0, p0, Ladi;->a:Ladc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ladc;->a(Ladc;Lajq;)Lajq;

    .line 286
    return-void
.end method
