.class final Lcom/farben/faq/common/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Dialog;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/common/b;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/farben/faq/common/b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/common/b;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/common/b;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/farben/faq/common/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/farben/faq/common/a;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
