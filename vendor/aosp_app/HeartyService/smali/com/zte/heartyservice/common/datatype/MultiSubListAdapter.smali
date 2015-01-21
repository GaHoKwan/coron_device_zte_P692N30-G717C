.class public Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSubListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;,
        Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private groupNumber:I

.field private listSize:I

.field private listView:Landroid/widget/ListView;

.field private listViewCallBacks:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;

.field private mInflater:Landroid/view/LayoutInflater;

.field private subjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, subjects:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    .line 25
    const/4 v1, 0x1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    .line 26
    const-string v1, "MultiSubListAdapter"

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->TAG:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->context:Landroid/content/Context;

    .line 73
    if-eqz p2, :cond_0

    .line 74
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getCommonListItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0           #i:I
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    return-void
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 4
    .parameter "subPlace"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030073

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 265
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addSubject(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, commonListItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-direct {v0, p1, p2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    .local v0, subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    .line 86
    return-void
.end method

.method public addSubjectDynamic(Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 5
    .parameter "title"
    .parameter "commonListItem"

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, is_find:Z
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    .line 112
    .local v3, subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v3, p2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->addCommonListItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 114
    const/4 v2, 0x1

    .line 119
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    :cond_1
    if-nez v2, :cond_2

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, commonListItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v3, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-direct {v3, p1, v0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 123
    .restart local v3       #subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v0           #commonListItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    .end local v3           #subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    :cond_2
    iget v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    .line 126
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public addSubjectDynamic(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, commonListItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    new-instance v0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-direct {v0, p1, p2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 103
    .local v0, subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    .line 105
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public addSubjects(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, subjects:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    .line 91
    .local v1, subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    iget v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getCommonListItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    goto :goto_0

    .line 93
    .end local v1           #subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    :cond_0
    return-void
.end method

.method public clearSuject()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    .line 132
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getListSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getItemAtIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemAtIndex(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    .line 156
    move v1, p1

    .line 157
    .local v1, index:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    .line 158
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    .line 159
    .local v2, subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getCommonListItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 160
    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getListSize()I

    move-result v3

    sub-int/2addr v1, v3

    .line 161
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    goto :goto_0

    .line 167
    .end local v2           #subject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    iget v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getCommonListItems()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 172
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListSize()I
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTxtViewPlace(I)I
    .locals 3
    .parameter "groupNum"

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, place:I
    const/4 v0, 0x0

    .local v0, cusor:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getListSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 213
    if-nez p1, :cond_0

    .line 214
    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    .line 215
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    .line 236
    :goto_0
    return-object v3

    .line 217
    :cond_0
    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, tmpItemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getListSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 221
    if-ne p1, v2, :cond_2

    .line 222
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    if-lez v3, :cond_1

    .line 223
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    goto :goto_0

    .line 225
    :cond_1
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    goto :goto_0

    .line 226
    :cond_2
    if-le p1, v2, :cond_3

    .line 227
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_3
    iget v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    iget-object v4, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_4

    .line 233
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    .line 235
    :cond_4
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 236
    .local v0, abstractListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    iget-object v3, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listViewCallBacks:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;

    invoke-interface {v3, v0, p1, p2, p3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;->updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public removeItem(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 181
    const-string v1, "MultiSubListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete postion:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->getItemAtIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .line 183
    .local v0, commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getListSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    :goto_0
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listSize:I

    .line 189
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->notifyDataSetChanged()V

    .line 190
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->subjects:Ljava/util/List;

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->groupNumber:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->removeCommonListItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    goto :goto_0
.end method

.method public setListView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "listView"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listView:Landroid/widget/ListView;

    .line 274
    return-void
.end method

.method public setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;)V
    .locals 0
    .parameter "listViewCallBacks"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->listViewCallBacks:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$ListViewCallBacks;

    .line 292
    return-void
.end method
