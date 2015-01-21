.class final Lcom/farben/faq/u;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/FaqHelpAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/FaqHelpAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/u;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/farben/faq/u;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-static {v0}, Lcom/farben/faq/FaqHelpAct;->a(Lcom/farben/faq/FaqHelpAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/u;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-virtual {v0}, Lcom/farben/faq/FaqHelpAct;->a()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/farben/faq/u;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-static {v0}, Lcom/farben/faq/FaqHelpAct;->a(Lcom/farben/faq/FaqHelpAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/u;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-static {v0}, Lcom/farben/faq/FaqHelpAct;->b(Lcom/farben/faq/FaqHelpAct;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/u;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-static {v0}, Lcom/farben/faq/FaqHelpAct;->a(Lcom/farben/faq/FaqHelpAct;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
