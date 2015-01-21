.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "InterceptModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, listdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 59
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)V

    .line 60
    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v1, 0x7f0e007f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0e0130

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0e0134

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    .line 64
    const v1, 0x7f0e0132

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 65
    const v1, 0x7f0e0133

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->linearRadio:Landroid/view/View;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->linearRadio:Landroid/view/View;

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :goto_0
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getIsOnlyTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 118
    :goto_1
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 119
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 120
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->linearRadio:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getIsClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 159
    :goto_2
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->isShowDivider()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_3
    return-object p2

    .line 106
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;
    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 115
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->radioBtn:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->getRadioBtnIsSelected()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 156
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    .line 162
    :cond_3
    iget-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, ListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->mListData:Ljava/util/ArrayList;

    .line 37
    return-void
.end method
