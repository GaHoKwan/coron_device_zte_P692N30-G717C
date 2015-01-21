.class Lakn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lakl;

.field final synthetic a:Landroid/os/Message;


# direct methods
.method constructor <init>(Lakl;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1971
    iput-object p1, p0, Lakn;->a:Lakl;

    iput-object p2, p0, Lakn;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1974
    iget-object v0, p0, Lakn;->a:Lakl;

    iget-object v0, v0, Lakl;->a:Lajq;

    iget-object v1, p0, Lakn;->a:Lakl;

    iget-object v1, v1, Lakl;->a:Lajq;

    invoke-static {v1}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lajq;->a(Lajq;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 1975
    const v0, 0x7f07011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1976
    iget-object v2, p0, Lakn;->a:Lakl;

    iget-object v2, v2, Lakl;->a:Lajq;

    invoke-static {v2}, Lajq;->a(Lajq;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1977
    iget-object v0, p0, Lakn;->a:Lakl;

    iget-object v0, v0, Lakl;->a:Lajq;

    iget-object v2, p0, Lakn;->a:Landroid/os/Message;

    invoke-static {v0, v2, v1}, Lajq;->a(Lajq;Landroid/os/Message;Landroid/view/View;)V

    .line 1978
    return-void
.end method
