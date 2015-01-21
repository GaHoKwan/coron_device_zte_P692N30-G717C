.class public Lcom/zte/handservice/BluegodGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluegodGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private icons:[I

.field public options:[Ljava/lang/String;

.field private setImageView:Lcom/zte/handservice/SetImageView;

.field private viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->context:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/zte/handservice/SetImageView;

    invoke-direct {v0}, Lcom/zte/handservice/SetImageView;-><init>()V

    iput-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->setImageView:Lcom/zte/handservice/SetImageView;

    .line 26
    invoke-direct {p0}, Lcom/zte/handservice/BluegodGridViewAdapter;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->options:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->icons:[I

    .line 33
    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .parameter "convertView"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    const/high16 v0, 0x7f09

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 81
    iget-object v1, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    const v0, 0x7f090001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 82
    iget-object v1, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->option:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method private setViewContent(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 87
    new-instance v2, Lcom/zte/handservice/GetScreenInfo;

    invoke-direct {v2}, Lcom/zte/handservice/GetScreenInfo;-><init>()V

    iget-object v3, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/zte/handservice/GetScreenInfo;->getWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 89
    .local v0, metroWidth:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 92
    iget-object v2, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v2, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->icons:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    iget-object v2, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->setImageView:Lcom/zte/handservice/SetImageView;

    iget-object v3, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    iget-object v4, v4, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/zte/handservice/SetImageView;->setBlueGodImageSize(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    iget-object v2, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->option:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->options:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->setImageView:Lcom/zte/handservice/SetImageView;

    iget-object v3, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    iget-object v4, v4, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;->option:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4}, Lcom/zte/handservice/SetImageView;->setBlueGodTextSize(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->options:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->icons:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v0, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;-><init>(Lcom/zte/handservice/BluegodGridViewAdapter;)V

    iput-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    .line 65
    invoke-direct {p0, p2}, Lcom/zte/handservice/BluegodGridViewAdapter;->setView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    invoke-direct {p0, p1}, Lcom/zte/handservice/BluegodGridViewAdapter;->setViewContent(I)V

    .line 75
    return-object p2

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    iput-object v0, p0, Lcom/zte/handservice/BluegodGridViewAdapter;->viewHolder:Lcom/zte/handservice/BluegodGridViewAdapter$ViewHolder;

    goto :goto_0
.end method
