.class Ladd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ladc;


# direct methods
.method constructor <init>(Ladc;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ladd;->a:Ladc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ladd;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lajq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladd;->a:Ladc;

    invoke-static {v0}, Ladc;->a(Ladc;)Lajq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lajq;->a(Z)V

    .line 55
    :cond_0
    iget-object v0, p0, Ladd;->a:Ladc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ladc;->a(Ladc;Lajq;)Lajq;

    .line 56
    return-void
.end method
