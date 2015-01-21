.class Labi;
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
    .line 1630
    iput-object p1, p0, Labi;->a:Labh;

    iput p2, p0, Labi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0327

    const v4, 0x7f0b0326

    const/4 v3, 0x0

    .line 1633
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laaq;->b(Laaq;Z)Z

    .line 1634
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1635
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->d(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Labi;->a:I

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1637
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->d(Laaq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 1638
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1682
    :cond_0
    :goto_0
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Labh;

    move-result-object v0

    invoke-virtual {v0}, Labh;->notifyDataSetChanged()V

    .line 1683
    return-void

    .line 1643
    :cond_1
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->d(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1644
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->d(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1645
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->e(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1646
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->e(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    :cond_2
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Landroid/widget/Toast;

    if-nez v0, :cond_3

    .line 1649
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Laaq;->a:Landroid/widget/Toast;

    .line 1650
    :cond_3
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setText(I)V

    .line 1651
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1656
    :cond_4
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->d(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1657
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->e(Laaq;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1658
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 1659
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Laaq;->a:Landroid/widget/Toast;

    .line 1660
    :cond_5
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setText(I)V

    .line 1661
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    iget-object v0, v0, Laaq;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1664
    :cond_6
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->a(Laaq;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->c(Laaq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labi;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labp;

    .line 1665
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Labi;->a:Labh;

    iget-object v1, v1, Labh;->a:Laaq;

    invoke-static {v1}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1666
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Labi;->a:Labh;

    iget-object v2, v2, Labh;->a:Laaq;

    invoke-static {v2}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labj;

    invoke-direct {v3, p0}, Labj;-><init>(Labi;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1672
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Labi;->a:Labh;

    iget-object v2, v2, Labh;->a:Laaq;

    invoke-static {v2}, Laaq;->a(Laaq;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Labk;

    invoke-direct {v3, p0}, Labk;-><init>(Labi;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1677
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1678
    iget-object v0, p0, Labi;->a:Labh;

    iget-object v0, v0, Labh;->a:Laaq;

    invoke-static {v0}, Laaq;->b(Laaq;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
