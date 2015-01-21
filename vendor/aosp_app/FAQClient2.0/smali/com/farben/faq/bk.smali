.class final Lcom/farben/faq/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;

.field private final synthetic b:Lcom/farben/faq/b/h;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;Lcom/farben/faq/b/h;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/bk;->a:Lcom/farben/faq/WelcomeActivity;

    iput-object p2, p0, Lcom/farben/faq/bk;->b:Lcom/farben/faq/b/h;

    iput-object p3, p0, Lcom/farben/faq/bk;->c:Landroid/app/Dialog;

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

    iget-object v3, p0, Lcom/farben/faq/bk;->b:Lcom/farben/faq/b/h;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/farben/faq/bk;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-virtual {v1, v0}, Lcom/farben/faq/WelcomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Lcom/farben/faq/f/a;

    iget-object v1, p0, Lcom/farben/faq/bk;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, p0, Lcom/farben/faq/bk;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, v2, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/farben/faq/f/a;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/farben/faq/f/a;->start()V

    iget-object v0, p0, Lcom/farben/faq/bk;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
