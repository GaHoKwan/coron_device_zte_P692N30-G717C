.class public abstract Lcom/zte/update/ui/pop/DataNetworkAlertPop;
.super Lcom/zte/update/ui/pop/NetworkAlertPop;
.source "DataNetworkAlertPop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const v0, 0x7f03000e

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/pop/NetworkAlertPop;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public abstract action()V
.end method

.method protected initCancelAndWifiButton(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/zte/update/ui/pop/NetworkAlertPop;->initCancelAndWifiButton(Landroid/content/Context;)V

    .line 23
    iget-object v2, p0, Lcom/zte/update/ui/pop/DataNetworkAlertPop;->popupView:Landroid/view/ViewGroup;

    const v3, 0x7f0a004c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 24
    .local v1, sure:Landroid/widget/Button;
    new-instance v0, Lcom/zte/update/ui/pop/DataNetworkAlertPop$1;

    invoke-direct {v0, p0}, Lcom/zte/update/ui/pop/DataNetworkAlertPop$1;-><init>(Lcom/zte/update/ui/pop/DataNetworkAlertPop;)V

    .line 35
    .local v0, l3:Landroid/view/View$OnClickListener;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
