.class Lcom/powermo/SmartBar/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/AppListEditorActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/s;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/s;)Lcom/powermo/SmartBar/AppListEditorActivity;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/s;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/s;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/c;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/powermo/SmartBar/k;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n        \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\"\n        \""

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/s;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    new-instance v3, Lcom/powermo/SmartBar/t;

    invoke-direct {v3, p0, p3}, Lcom/powermo/SmartBar/t;-><init>(Lcom/powermo/SmartBar/s;I)V

    new-instance v4, Lcom/powermo/SmartBar/u;

    invoke-direct {v4, p0, v0}, Lcom/powermo/SmartBar/u;-><init>(Lcom/powermo/SmartBar/s;Lcom/powermo/SmartBar/k;)V

    invoke-static {v2, v1, v3, v4}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_2
    iget-object v0, p0, Lcom/powermo/SmartBar/s;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/s;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/powermo/SmartBar/c;->b(II)V

    goto :goto_2
.end method
