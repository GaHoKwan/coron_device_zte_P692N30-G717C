.class Lcom/powermo/SmartBar/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/AppListEditorActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/v;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/v;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/powermo/SmartBar/c;->c(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/v;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    return-void
.end method
