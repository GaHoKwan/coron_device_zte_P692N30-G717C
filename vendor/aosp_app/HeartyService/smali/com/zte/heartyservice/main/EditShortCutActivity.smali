.class public Lcom/zte/heartyservice/main/EditShortCutActivity;
.super Landroid/app/Activity;
.source "EditShortCutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "EditShortCutActivity"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isShortCutOrderChanged:Z

.field private itemLineHeigth:I

.field private listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

.field private listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

.field private mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

.field private mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

.field private mShortCutArrayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;"
        }
    .end annotation
.end field

.field private scrollLineNumberLimet:I

.field private unSelectListView:Landroid/widget/LinearLayout;

.field private unselectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->isShortCutOrderChanged:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/zte/heartyservice/main/EditShortCutActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/EditShortCutActivity$2;-><init>(Lcom/zte/heartyservice/main/EditShortCutActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    .line 177
    new-instance v0, Lcom/zte/heartyservice/main/EditShortCutActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/EditShortCutActivity$3;-><init>(Lcom/zte/heartyservice/main/EditShortCutActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unSelectListView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/main/EditShortCutActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollLineNumberLimet:I

    return v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/EditShortCutActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->resetListViewHeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/common/datatype/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/main/EditShortCutActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->isShortCutOrderChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/main/EditShortCutActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I

    return v0
.end method

.method private initTwoList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAllShortCutItems()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, allShortCuts:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/main/ShortCutItem;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShowShortCutItems()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 63
    .local v2, shortCut:Lcom/zte/heartyservice/main/ShortCutItem;
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v2           #shortCut:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->resetListViewHeight()V

    .line 68
    invoke-direct {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->listInit()V

    .line 69
    invoke-direct {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollViewInit()V

    .line 70
    return-void
.end method

.method private listInit()V
    .locals 2

    .prologue
    .line 156
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/EditableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setCacheColorHint(I)V

    .line 160
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDropListener:Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setDropListener(Lcom/zte/heartyservice/common/datatype/EditableListView$DropListener;)V

    .line 161
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mRemoveListener:Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setRemoveListener(Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;)V

    .line 162
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;-><init>(Lcom/zte/heartyservice/main/EditShortCutActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    .line 164
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mDragAndDropListView:Lcom/zte/heartyservice/common/datatype/EditableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    return-void
.end method

.method private resetListViewHeight()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollLineNumberLimet:I

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollLineNumberLimet:I

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I

    mul-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private scrollViewInit()V
    .locals 5

    .prologue
    .line 86
    const v4, 0x7f0e00b6

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unSelectListView:Landroid/widget/LinearLayout;

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, k:I
    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unselectedItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 89
    .local v1, item:Lcom/zte/heartyservice/main/ShortCutItem;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #k:I
    .local v3, k:I
    invoke-virtual {p0, v2, v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I

    move v2, v3

    .end local v3           #k:I
    .restart local v2       #k:I
    goto :goto_0

    .line 91
    .end local v1           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addNewScrollView(ILcom/zte/heartyservice/main/ShortCutItem;)I
    .locals 7
    .parameter "viewId"
    .parameter "item"

    .prologue
    .line 94
    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030128

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setId(I)V

    .line 96
    const v4, 0x7f0e03cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 97
    .local v1, imageView:Landroid/widget/ImageView;
    iget v4, p2, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    if-nez v4, :cond_0

    .line 99
    const v4, 0x7f02016f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :goto_0
    const v4, 0x7f0e03aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, textView:Landroid/widget/TextView;
    iget-object v4, p2, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 106
    iget-object v4, p2, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_1
    const v4, 0x7f0e03ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 118
    .local v0, addBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/zte/heartyservice/main/EditShortCutActivity$1;

    invoke-direct {v4, p0, v3, p2}, Lcom/zte/heartyservice/main/EditShortCutActivity$1;-><init>(Lcom/zte/heartyservice/main/EditShortCutActivity;Landroid/view/View;Lcom/zte/heartyservice/main/ShortCutItem;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->unSelectListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 132
    return p1

    .line 102
    .end local v0           #addBtn:Landroid/widget/ImageButton;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_0
    iget v4, p2, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    .restart local v2       #textView:Landroid/widget/TextView;
    :cond_1
    iget v4, p2, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    if-nez v4, :cond_2

    .line 110
    const v4, 0x7f0a0610

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 114
    :cond_2
    iget v4, p2, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v1, 0x8

    .line 256
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 257
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 261
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f03003a

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/EditShortCutActivity;->setContentView(I)V

    .line 44
    const v2, 0x7f0a003c

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/EditShortCutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/main/EditShortCutActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->inflater:Landroid/view/LayoutInflater;

    .line 46
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->itemLineHeigth:I

    .line 47
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->scrollLineNumberLimet:I

    .line 48
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 50
    .local v1, lrMargin:I
    const-string v2, "EditShortCutActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "margin:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->listViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1, v5, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->initTwoList()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 186
    iget-boolean v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->isShortCutOrderChanged:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateShowShortCutItems(Ljava/util/List;)V

    .line 189
    :cond_0
    return-void
.end method
