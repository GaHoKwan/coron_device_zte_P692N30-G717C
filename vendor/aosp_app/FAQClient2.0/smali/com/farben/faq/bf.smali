.class final Lcom/farben/faq/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;Landroid/app/Dialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/bf;->a:Lcom/farben/faq/WelcomeActivity;

    iput-object p2, p0, Lcom/farben/faq/bf;->b:Landroid/app/Dialog;

    iput p3, p0, Lcom/farben/faq/bf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/farben/faq/bf;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget v0, p0, Lcom/farben/faq/bf;->c:I

    const/16 v1, 0x79

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/farben/faq/bf;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->e(Lcom/farben/faq/WelcomeActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/farben/faq/bf;->c:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/farben/faq/f/a;

    iget-object v1, p0, Lcom/farben/faq/bf;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, p0, Lcom/farben/faq/bf;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, v2, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/farben/faq/f/a;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/farben/faq/f/a;->start()V

    goto :goto_0
.end method
