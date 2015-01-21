.class Labl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Labh;


# direct methods
.method constructor <init>(Labh;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Labl;->a:Labh;

    iput p2, p0, Labl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 1692
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1700
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v1, p0, Labl;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0323

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laaq;->a(Laaq;Ljava/lang/String;)Ljava/lang/String;

    .line 1704
    :goto_0
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget v1, p0, Labl;->a:I

    invoke-static {v0, v1}, Laaq;->a(Laaq;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1705
    const-string v1, ""

    .line 1706
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1707
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1708
    :cond_0
    iget-object v2, p0, Labl;->a:Labh;

    iget-object v2, v2, Labh;->a:Laaq;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Labl;->a:Labh;

    iget-object v4, v4, Labh;->a:Laaq;

    invoke-static {v4}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v2, v1}, Laaq;->a(Laaq;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1711
    iget-object v1, p0, Labl;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Labl;->a:Labh;

    iget-object v2, v2, Labh;->a:Laaq;

    invoke-static {v2, v0}, Laaq;->a(Laaq;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1712
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Labl;->a:Labh;

    iget-object v2, v2, Labh;->a:Laaq;

    invoke-static {v2}, Laaq;->b(Laaq;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labm;

    invoke-direct {v3, p0}, Labm;-><init>(Labl;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1740
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1741
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->c(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1742
    return-void

    .line 1702
    :cond_1
    iget-object v0, p0, Labl;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v1, p0, Labl;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laaq;->a(Laaq;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
