.class final Lcom/farben/faq/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/DialogAct;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/farben/faq/DialogAct;I)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/f;->a:Lcom/farben/faq/DialogAct;

    iput p2, p0, Lcom/farben/faq/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/farben/faq/f;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/f;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v0}, Lcom/farben/faq/common/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/farben/faq/common/a;->a()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/f;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v0}, Lcom/farben/faq/DialogAct;->finish()V

    goto :goto_0
.end method
