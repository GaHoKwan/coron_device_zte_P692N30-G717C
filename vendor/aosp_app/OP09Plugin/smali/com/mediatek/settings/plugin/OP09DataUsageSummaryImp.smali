.class public Lcom/mediatek/settings/plugin/OP09DataUsageSummaryImp;
.super Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;
.source "OP09DataUsageSummaryImp.java"


# static fields
.field private static final TAB_SIM_1:Ljava/lang/String; = "sim1"

.field private static final TAB_SIM_1_INDEX:Ljava/lang/String; = "1"

.field private static final TAB_SIM_2:Ljava/lang/String; = "sim2"

.field private static final TAB_SIM_2_INDEX:Ljava/lang/String; = "2"

.field private static final TAB_SIM_3:Ljava/lang/String; = "sim3"

.field private static final TAG:Ljava/lang/String; = "DataUsageSummaryImp"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/mediatek/settings/plugin/OP09DataUsageSummaryImp;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public customizeMobileDataSummary(Landroid/view/View;Landroid/view/View;I)V
    .locals 11
    .parameter "container"
    .parameter "titleView"
    .parameter "slotId"

    .prologue
    const v10, 0x7f0b0010

    const/16 v9, 0x9

    const/4 v7, -0x2

    const/4 v8, 0x0

    .line 40
    instance-of v6, p1, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    move-object v5, p1

    .line 41
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 42
    .local v5, viewContainer:Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09DataUsageSummaryImp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, simIndicator:Landroid/widget/ImageView;
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 44
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v3, simIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49
    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09DataUsageSummaryImp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 51
    .local v0, marginRight:I
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09DataUsageSummaryImp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 55
    .local v1, paddingLeft:I
    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 56
    if-nez p3, :cond_1

    const v6, 0x7f0200b3

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-virtual {v5, v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 62
    .local v4, titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 63
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 66
    .end local v0           #marginRight:I
    .end local v1           #paddingLeft:I
    .end local v2           #simIndicator:Landroid/widget/ImageView;
    .end local v3           #simIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #titleLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #viewContainer:Landroid/widget/RelativeLayout;
    :cond_0
    return-void

    .line 56
    .restart local v0       #marginRight:I
    .restart local v1       #paddingLeft:I
    .restart local v2       #simIndicator:Landroid/widget/ImageView;
    .restart local v3       #simIndicatorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5       #viewContainer:Landroid/widget/RelativeLayout;
    :cond_1
    const v6, 0x7f0200b4

    goto :goto_0
.end method

.method public customizeTabInfo(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabWidget;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 7
    .parameter "activity"
    .parameter "tag"
    .parameter "tab"
    .parameter "tabWidget"
    .parameter "title"

    .prologue
    .line 75
    const-string v5, "sim1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "sim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/mediatek/settings/plugin/OP09DataUsageSummaryImp;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 78
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 81
    .local v2, layout:Landroid/widget/RelativeLayout;
    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 83
    .local v4, simTitle:Landroid/widget/TextView;
    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v5, 0x7f0b003e

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, numberIndicator:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 87
    .local v0, indicatorText:Ljava/lang/String;
    const-string v5, "sim1"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    const-string v0, "1"

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 95
    .end local v0           #indicatorText:Ljava/lang/String;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #numberIndicator:Landroid/widget/TextView;
    .end local v4           #simTitle:Landroid/widget/TextView;
    :cond_2
    return-object p3

    .line 89
    .restart local v0       #indicatorText:Ljava/lang/String;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #layout:Landroid/widget/RelativeLayout;
    .restart local v3       #numberIndicator:Landroid/widget/TextView;
    .restart local v4       #simTitle:Landroid/widget/TextView;
    :cond_3
    const-string v5, "sim2"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    const-string v0, "2"

    goto :goto_0
.end method
