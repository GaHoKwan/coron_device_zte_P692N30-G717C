.class final Lcom/farben/faq/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/FaqHelpAct;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/FaqHelpAct;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/y;->a:Lcom/farben/faq/FaqHelpAct;

    iput-object p2, p0, Lcom/farben/faq/y;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/y;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Lcom/farben/faq/aa;

    iget-object v1, p0, Lcom/farben/faq/y;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-direct {v0, v1}, Lcom/farben/faq/aa;-><init>(Lcom/farben/faq/FaqHelpAct;)V

    invoke-virtual {v0}, Lcom/farben/faq/aa;->start()V

    return-void
.end method
