.class Lcom/powermo/SmartBar/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bo;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bp;->a:Lcom/powermo/SmartBar/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/bp;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/SmartBar/bp;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v1}, Lcom/powermo/SmartBar/bo;->b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/powermo/SmartBar/dc;->q:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/SmartBar/bp;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v1}, Lcom/powermo/SmartBar/bo;->b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
