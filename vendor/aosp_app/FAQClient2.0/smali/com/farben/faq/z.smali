.class final Lcom/farben/faq/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/FaqHelpAct;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/FaqHelpAct;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/z;->a:Lcom/farben/faq/FaqHelpAct;

    iput-object p2, p0, Lcom/farben/faq/z;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/z;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/z;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-virtual {v0}, Lcom/farben/faq/FaqHelpAct;->onBackPressed()V

    return-void
.end method
