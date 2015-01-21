.class Lcom/powermo/SmartBar/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/AppListEditorActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/o;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/SmartBar/o;->b:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/powermo/SmartBar/o;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/powermo/SmartBar/o;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/powermo/SmartBar/o;->b:Z

    invoke-virtual {v1, v0, v2}, Lcom/powermo/SmartBar/c;->a(ZZ)V

    iget-boolean v1, p0, Lcom/powermo/SmartBar/o;->b:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/powermo/SmartBar/o;->b:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/o;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    :cond_1
    return-void
.end method
