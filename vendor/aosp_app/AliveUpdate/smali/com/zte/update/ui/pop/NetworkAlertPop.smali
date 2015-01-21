.class public Lcom/zte/update/ui/pop/NetworkAlertPop;
.super Lcom/zte/update/ui/pop/AbstractPopoupWindow;
.source "NetworkAlertPop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const v0, 0x7f03000f

    invoke-direct {p0, p1, v0}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/zte/update/ui/pop/NetworkAlertPop;->initCancelAndWifiButton(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/zte/update/ui/pop/NetworkAlertPop;->initCancelAndWifiButton(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected initCancelAndWifiButton(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 24
    iget-object v4, p0, Lcom/zte/update/ui/pop/NetworkAlertPop;->popupView:Landroid/view/ViewGroup;

    const v5, 0x7f0a004b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 25
    .local v0, cancel:Landroid/widget/Button;
    new-instance v1, Lcom/zte/update/ui/pop/NetworkAlertPop$1;

    invoke-direct {v1, p0}, Lcom/zte/update/ui/pop/NetworkAlertPop$1;-><init>(Lcom/zte/update/ui/pop/NetworkAlertPop;)V

    .line 34
    .local v1, l:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v4, p0, Lcom/zte/update/ui/pop/NetworkAlertPop;->popupView:Landroid/view/ViewGroup;

    const v5, 0x7f0a004d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 38
    .local v3, setWifi:Landroid/widget/Button;
    new-instance v2, Lcom/zte/update/ui/pop/NetworkAlertPop$2;

    invoke-direct {v2, p0}, Lcom/zte/update/ui/pop/NetworkAlertPop$2;-><init>(Lcom/zte/update/ui/pop/NetworkAlertPop;)V

    .line 48
    .local v2, l2:Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method
