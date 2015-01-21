.class final Lcom/farben/faq/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/FAQDetailActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/FAQDetailActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/q;->a:Lcom/farben/faq/FAQDetailActivity;

    iput-object p2, p0, Lcom/farben/faq/q;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/q;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/q;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->p(Lcom/farben/faq/FAQDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/q;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-virtual {v0}, Lcom/farben/faq/FAQDetailActivity;->onBackPressed()V

    :cond_0
    return-void
.end method
