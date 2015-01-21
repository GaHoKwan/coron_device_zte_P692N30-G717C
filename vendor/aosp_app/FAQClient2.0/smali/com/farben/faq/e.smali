.class final Lcom/farben/faq/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/DialogAct;

.field private final synthetic b:Lcom/farben/faq/b/h;


# direct methods
.method constructor <init>(Lcom/farben/faq/DialogAct;Lcom/farben/faq/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/e;->a:Lcom/farben/faq/DialogAct;

    iput-object p2, p0, Lcom/farben/faq/e;->b:Lcom/farben/faq/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.farben.faq.service.FAQUpdateService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "versionbean"

    iget-object v3, p0, Lcom/farben/faq/e;->b:Lcom/farben/faq/b/h;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/farben/faq/e;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v1, v0}, Lcom/farben/faq/DialogAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/farben/faq/e;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v0}, Lcom/farben/faq/DialogAct;->finish()V

    return-void
.end method
