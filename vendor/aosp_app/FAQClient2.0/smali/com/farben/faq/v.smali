.class final Lcom/farben/faq/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/FaqHelpAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/FaqHelpAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/v;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/v;->a:Lcom/farben/faq/FaqHelpAct;

    invoke-virtual {v0}, Lcom/farben/faq/FaqHelpAct;->finish()V

    return-void
.end method
