.class Lcom/powermo/SmartBar/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/MasterEntryActivity;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/MasterEntryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bk;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/SmartBar/bk;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    const-class v2, Lcom/powermo/SmartBar/SmartShowHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/bk;->a:Lcom/powermo/SmartBar/MasterEntryActivity;

    invoke-virtual {v1, v0}, Lcom/powermo/SmartBar/MasterEntryActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
