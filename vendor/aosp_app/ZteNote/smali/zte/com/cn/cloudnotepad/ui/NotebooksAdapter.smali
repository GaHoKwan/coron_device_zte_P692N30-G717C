.class public Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotebooksAdapter.java"


# static fields
.field private static final NEW_NOTEBOOK_RESULT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->onItemClick(I)V

    return-void
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->createPopupMenu(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private createPopupMenu(ILandroid/view/View;)V
    .locals 3
    .parameter "position"
    .parameter "menu"

    .prologue
    .line 156
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 157
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0003

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->initMenuItem(I)V

    .line 159
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;

    invoke-direct {v1, p0, p1}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$3;-><init>(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 168
    return-void
.end method

.method private initMenuItem(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0600e5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 173
    .local v0, exportItem:Landroid/view/MenuItem;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f0600e4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 174
    .local v1, moveItem:Landroid/view/MenuItem;
    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    if-nez v2, :cond_0

    .line 175
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 178
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 180
    :cond_1
    return-void
.end method

.method private onItemClick(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 141
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v1, v0, v3}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 145
    :cond_0
    if-ne p1, v3, :cond_1

    .line 146
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->doNotebookClick(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->doNotebookClick(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    sget-object v0, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 56
    if-nez p2, :cond_2

    .line 57
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030020

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 61
    .local v8, view:Landroid/view/View;
    :goto_0
    const v9, 0x7f0600a8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, name:Landroid/widget/TextView;
    const v9, 0x7f0600a9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    .local v4, number:Landroid/widget/TextView;
    const v9, 0x7f0600a7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 65
    .local v6, textLayout:Landroid/widget/LinearLayout;
    const v9, 0x7f0600a6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, menu:Landroid/view/View;
    const v9, 0x7f0600a5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, cover:Landroid/widget/ImageView;
    new-instance v9, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;

    invoke-direct {v9, p0, p1}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$1;-><init>(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v9, 0x1

    if-le p1, v9, :cond_4

    .line 80
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 83
    new-instance v1, Lzte/com/cn/cloudnotepad/data/NotebookData;

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    .line 84
    .local v1, mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 86
    .end local v1           #mNotebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    :cond_0
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v9, v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v5, v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 88
    .local v5, postion:I
    sget-object v9, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-eqz v9, :cond_3

    sget-object v10, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget-object v9, v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 89
    const v9, 0x7f0200b0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 96
    :goto_1
    sget-object v9, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;->mCoverIds:[Ljava/lang/Integer;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    sget-object v9, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    iget v9, v9, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v9, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;

    invoke-direct {v9, p0, p1, v2}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter$2;-><init>(Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;ILandroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .end local v5           #postion:I
    :cond_1
    :goto_2
    return-object v8

    .line 59
    .end local v0           #cover:Landroid/widget/ImageView;
    .end local v2           #menu:Landroid/view/View;
    .end local v3           #name:Landroid/widget/TextView;
    .end local v4           #number:Landroid/widget/TextView;
    .end local v6           #textLayout:Landroid/widget/LinearLayout;
    .end local v8           #view:Landroid/view/View;
    :cond_2
    move-object v8, p2

    .restart local v8       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 92
    .restart local v0       #cover:Landroid/widget/ImageView;
    .restart local v2       #menu:Landroid/view/View;
    .restart local v3       #name:Landroid/widget/TextView;
    .restart local v4       #number:Landroid/widget/TextView;
    .restart local v5       #postion:I
    .restart local v6       #textLayout:Landroid/widget/LinearLayout;
    :cond_3
    const v9, 0x106000d

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_1

    .line 114
    .end local v5           #postion:I
    :cond_4
    if-nez p1, :cond_5

    .line 115
    const v9, 0x7f02009c

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const v9, 0x106000d

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_2

    .line 120
    :cond_5
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 121
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    const v9, 0x7f090061

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 124
    sget-object v9, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->mNotebook:Ljava/lang/String;

    if-nez v9, :cond_6

    .line 125
    const v9, 0x7f0200b0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    :goto_3
    const v9, 0x7f020004

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    invoke-static {}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getTotalNotesNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, totalNumber:Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 128
    .end local v7           #totalNumber:Ljava/lang/String;
    :cond_6
    const v9, 0x106000d

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_3
.end method

.method protected menuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 9
    .parameter "position"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 184
    sget-object v6, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 185
    .local v2, notebookdata:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 217
    :goto_0
    return v4

    .line 187
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    const-class v6, Lzte/com/cn/cloudnotepad/ui/NewNotebookActivity;

    invoke-direct {v1, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "position"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v4, v1, v5}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v5

    .line 190
    goto :goto_0

    .line 193
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    sget-object v4, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNoteBookData()Lzte/com/cn/cloudnotepad/data/NotebookData;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/data/NotebookData;->updateNotebookData()V

    move v4, v5

    .line 197
    goto :goto_0

    .line 199
    :pswitch_2
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/NoteApp;->hasEnoughExtStorage()Z

    move-result v6

    if-nez v6, :cond_0

    .line 200
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0900ac

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 201
    goto :goto_0

    .line 203
    :cond_0
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->getNotesData()Lzte/com/cn/cloudnotepad/data/NotesData;

    move-result-object v3

    .line 205
    .local v3, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    iget-object v4, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->isValidFilename(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getExportPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, folderPath:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v6, v2, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lzte/com/cn/cloudnotepad/data/NotesData;->getByNoteBookName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateMutiExportDlg(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V

    move v4, v5

    .line 212
    goto/16 :goto_0

    .line 208
    .end local v0           #folderPath:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getExportPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #folderPath:Ljava/lang/String;
    goto :goto_1

    .line 214
    .end local v0           #folderPath:Ljava/lang/String;
    .end local v3           #notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    :pswitch_3
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/ui/NotebooksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateNotebookDeleteAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V

    move v4, v5

    .line 215
    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x7f0600e3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
