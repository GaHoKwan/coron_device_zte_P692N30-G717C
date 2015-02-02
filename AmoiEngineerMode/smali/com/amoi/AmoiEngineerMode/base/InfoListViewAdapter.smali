.class public Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoListViewAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/base/InfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/base/InfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/AmoiEngineerMode/base/InfoItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 40
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amoi/AmoiEngineerMode/base/InfoItem;

    .line 41
    .local v0, item:Lcom/amoi/AmoiEngineerMode/base/InfoItem;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/base/InfoListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 45
    .local v1, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f070056

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v3, 0x7f070057

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textView:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .restart local v2       #textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Lcom/amoi/AmoiEngineerMode/base/InfoItem;->getLevel()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 51
    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :cond_1
    return-object v1
.end method
