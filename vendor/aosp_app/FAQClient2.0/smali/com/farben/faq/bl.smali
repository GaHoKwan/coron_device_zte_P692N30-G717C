.class final Lcom/farben/faq/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;

.field private final synthetic b:I

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;ILandroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/bl;->a:Lcom/farben/faq/WelcomeActivity;

    iput p2, p0, Lcom/farben/faq/bl;->b:I

    iput-object p3, p0, Lcom/farben/faq/bl;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/farben/faq/bl;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/bl;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/bl;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/common/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/farben/faq/common/a;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/bl;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Lcom/farben/faq/f/a;

    iget-object v1, p0, Lcom/farben/faq/bl;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, p0, Lcom/farben/faq/bl;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, v2, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/farben/faq/f/a;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/farben/faq/f/a;->start()V

    goto :goto_0
.end method
