.class public Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListViewAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private prnValues:[Ljava/lang/String;

.field private snrValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "prnValues"
    .parameter "snrValues"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->prnValues:[Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->snrValues:[Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->prnValues:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 39
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 40
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    .local v0, layout:Landroid/widget/RelativeLayout;
    const v3, 0x7f07009b

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, prnView:Landroid/widget/TextView;
    const v3, 0x7f07009c

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, snrView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->prnValues:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/ListViewAdapter;->snrValues:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object v0
.end method
