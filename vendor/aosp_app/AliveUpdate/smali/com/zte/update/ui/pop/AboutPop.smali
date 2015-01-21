.class public Lcom/zte/update/ui/pop/AboutPop;
.super Lcom/zte/update/ui/pop/AbstractPopoupWindow;
.source "AboutPop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 17
    const/high16 v5, 0x7f03

    invoke-direct {p0, p1, v5}, Lcom/zte/update/ui/pop/AbstractPopoupWindow;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getDefault()Lcom/zte/aliveupdate/main/AliveUpdateApp;

    move-result-object v0

    .line 20
    .local v0, app:Lcom/zte/aliveupdate/main/AliveUpdateApp;
    iget-object v5, p0, Lcom/zte/update/ui/pop/AboutPop;->popupView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0003

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 21
    .local v3, currentVersion:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v1, buffer:Ljava/lang/StringBuffer;
    const v5, 0x7f060055

    invoke-virtual {v0, v5}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v0}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v5, p0, Lcom/zte/update/ui/pop/AboutPop;->popupView:Landroid/view/ViewGroup;

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 28
    .local v2, checkButton:Landroid/widget/Button;
    new-instance v4, Lcom/zte/update/ui/pop/AboutPop$1;

    invoke-direct {v4, p0, p1}, Lcom/zte/update/ui/pop/AboutPop$1;-><init>(Lcom/zte/update/ui/pop/AboutPop;Landroid/content/Context;)V

    .line 36
    .local v4, l:Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/zte/update/ui/pop/AboutPop;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/zte/update/ui/pop/AboutPop;->startCheck(Landroid/content/Context;)V

    return-void
.end method

.method private startCheck(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    new-instance v0, Lcom/zte/update/ui/pop/AboutPop$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/zte/update/ui/pop/AboutPop$2;-><init>(Lcom/zte/update/ui/pop/AboutPop;Landroid/content/Context;Landroid/content/Context;)V

    .line 58
    .local v0, pop:Lcom/zte/update/ui/pop/CheckActionWithPop;
    invoke-virtual {v0}, Lcom/zte/update/ui/pop/CheckActionWithPop;->startAction()V

    .line 59
    invoke-virtual {p0}, Lcom/zte/update/ui/pop/AboutPop;->dismiss()V

    .line 60
    return-void
.end method
