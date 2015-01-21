.class Lcom/powermo/SmartBar/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/AppListEditorActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/x;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/powermo/SmartBar/x;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    iget-object v0, p0, Lcom/powermo/SmartBar/x;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->g(Lcom/powermo/SmartBar/AppListEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
