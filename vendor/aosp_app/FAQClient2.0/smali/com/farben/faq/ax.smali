.class final Lcom/farben/faq/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;

.field private final synthetic b:Landroid/widget/RadioGroup;

.field private final synthetic c:Landroid/view/View;

.field private final synthetic d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ax;->a:Lcom/farben/faq/WelcomeActivity;

    iput-object p2, p0, Lcom/farben/faq/ax;->b:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/farben/faq/ax;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/farben/faq/ax;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/ax;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget-object v1, p0, Lcom/farben/faq/ax;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/farben/faq/ax;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/farben/faq/common/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/farben/faq/ax;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/farben/faq/common/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/ax;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->b:Landroid/widget/TextView;

    const-string v1, "welcome_checknetwork"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/ax;->a:Lcom/farben/faq/WelcomeActivity;

    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Lcom/farben/faq/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "common_copyright"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/ax;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/ax;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->a(Lcom/farben/faq/WelcomeActivity;)V

    return-void
.end method
