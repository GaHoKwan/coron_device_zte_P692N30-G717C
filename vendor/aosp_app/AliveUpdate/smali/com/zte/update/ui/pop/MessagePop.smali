.class public Lcom/zte/update/ui/pop/MessagePop;
.super Lcom/zte/update/ui/pop/AbstractPopoupWindow;
.source "MessagePop.java"


# instance fields
.field message:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "stringId"

    .prologue
    .line 12
    const v0, 0x7f030013

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;-><init>(Landroid/content/Context;I)V

    .line 13
    iget-object v0, p0, Lcom/zte/update/ui/pop/MessagePop;->popupView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/update/ui/pop/MessagePop;->message:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/zte/update/ui/pop/MessagePop;->message:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    return-void
.end method
