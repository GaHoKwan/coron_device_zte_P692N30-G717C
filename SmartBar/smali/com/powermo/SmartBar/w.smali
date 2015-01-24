.class Lcom/powermo/SmartBar/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/AppListEditorActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/w;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/w;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->e(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/w;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->e(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/w;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/w;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->f(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/bv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bv;->b(Z)V

    :cond_0
    return-void
.end method
