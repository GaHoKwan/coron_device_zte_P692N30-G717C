.class Laca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Labz;


# direct methods
.method constructor <init>(Labz;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Laca;->a:Labz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const-string v0, "onITemClick"

    invoke-static {v0}, Labz;->a(Ljava/lang/String;)V

    .line 81
    instance-of v0, p2, Lcom/sohu/inputmethod/ui/ContactItemView;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, checked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/sohu/inputmethod/ui/ContactItemView;

    invoke-virtual {p2}, Lcom/sohu/inputmethod/ui/ContactItemView;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",list, checked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laca;->a:Labz;

    invoke-static {v1}, Labz;->a(Labz;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labz;->a(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Laca;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Laca;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget-object v1, p0, Laca;->a:Labz;

    invoke-static {v1}, Labz;->a(Labz;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Laca;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Laca;->a:Labz;

    invoke-static {v0}, Labz;->a(Labz;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method
