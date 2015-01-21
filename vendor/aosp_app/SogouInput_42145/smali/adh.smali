.class Ladh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Ladc;


# direct methods
.method constructor <init>(Ladc;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Ladh;->a:Ladc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Ladh;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lalt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Ladh;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lalt;

    move-result-object v0

    invoke-virtual {v0}, Lalt;->a()V

    .line 280
    :cond_0
    return-void
.end method
