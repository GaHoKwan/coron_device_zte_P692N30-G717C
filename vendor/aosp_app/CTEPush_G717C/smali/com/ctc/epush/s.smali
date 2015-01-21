.class final Lcom/ctc/epush/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/s;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ctc/a/a;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ctc/epush/s;->a:Lcom/ctc/epush/PushDialogActivity;

    const-class v3, Lcom/ctc/epush/PushAppDetail;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "appModel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ctc/epush/s;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
