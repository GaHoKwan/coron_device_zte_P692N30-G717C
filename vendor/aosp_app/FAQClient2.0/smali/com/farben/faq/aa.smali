.class final Lcom/farben/faq/aa;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/FaqHelpAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/FaqHelpAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/aa;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/aa;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-static {v0}, Lcom/farben/faq/FaqHelpAct;->c(Lcom/farben/faq/FaqHelpAct;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/farben/faq/aa;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-static {v0}, Lcom/farben/faq/FaqHelpAct;->d(Lcom/farben/faq/FaqHelpAct;)V

    return-void
.end method
