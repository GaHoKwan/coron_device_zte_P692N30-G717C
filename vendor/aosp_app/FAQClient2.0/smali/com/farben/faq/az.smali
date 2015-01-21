.class final Lcom/farben/faq/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/az;->a:Lcom/farben/faq/WelcomeActivity;

    iput-object p2, p0, Lcom/farben/faq/az;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/az;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/az;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->d(Lcom/farben/faq/WelcomeActivity;)V

    return-void
.end method
