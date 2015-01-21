.class public abstract Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;
.super Landroid/app/ListFragment;
.source "DisguiseAbstractCommunicationFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DisguisedLoader;,
        Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/zte/heartyservice/common/datatype/CommonItem;",
        ">;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final SELECTED_ID:Ljava/lang/String; = "selected_id"

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_SELECTED:I = 0x1


# instance fields
.field protected mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurState:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mIsDefaultLayout:Z

.field protected mItemRes:I

.field private mSelectAll:Z

.field protected mSelectedId:J

.field protected mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    .line 46
    iput v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mCurState:I

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedId:J

    .line 49
    const v0, 0x7f0300d3

    iput v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mItemRes:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mIsDefaultLayout:Z

    .line 191
    return-void
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 252
    iget-boolean v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 254
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 265
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->updateActionBar()V

    .line 266
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/CommonItem;

    .line 258
    .local v1, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v1           #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 337
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;

    if-eqz v1, :cond_0

    .line 338
    check-cast v0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;

    .end local v0           #activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->updateActionBar(IZ)V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkedChanged(Landroid/widget/CompoundButton;ZLcom/zte/heartyservice/common/datatype/CommonItem;)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    iget v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mCurState:I

    if-ne v1, v3, :cond_3

    .line 305
    if-eqz p2, :cond_2

    .line 306
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 310
    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    .line 321
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->updateActionBar()V

    .line 333
    :cond_1
    :goto_1
    return-void

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    if-eqz v1, :cond_0

    .line 317
    iput-boolean v4, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectAll:Z

    goto :goto_0

    .line 323
    :cond_3
    if-eqz p2, :cond_1

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.ui.SelectItemFragment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fragment_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "selected_id"

    iget-wide v2, p3, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 329
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method

.method protected abstract deleteReal(Ljava/util/List;Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;",
            "Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;",
            ")Z"
        }
    .end annotation
.end method

.method protected deleteSelect(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v0, deleteList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->deleteReal(Ljava/util/List;Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$DeleteType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 279
    :cond_0
    return-void
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    if-nez p2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mItemRes:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    new-instance v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    .end local v1           #selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    invoke-direct {v1}, Lcom/zte/heartyservice/privacy/SelectListItem;-><init>()V

    .line 112
    .restart local v1       #selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    const v2, 0x7f0e0086

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    .line 114
    const v2, 0x7f0e0087

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    .line 116
    const v2, 0x7f0e0085

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    .line 118
    const v2, 0x7f0e0088

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonItem;

    .line 126
    .local v0, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    iget-object v2, v0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/CommonItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_1
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$3;-><init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;Lcom/zte/heartyservice/common/datatype/CommonItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    return-object p2

    .line 123
    .end local v0           #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    .restart local v1       #selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;
    goto :goto_0

    .line 129
    .restart local v0       #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    :cond_1
    iget-object v2, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/CommonItem;->summary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 74
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.zte.ui.SelectItemFragment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iput v6, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mCurState:I

    .line 77
    const-string v2, "selected_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedId:J

    .line 78
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->setHasOptionsMenu(Z)V

    .line 81
    :cond_0
    new-instance v2, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$1;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v5}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$1;-><init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 87
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-boolean v2, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mIsDefaultLayout:Z

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->setListShown(Z)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$2;-><init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 59
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->selectAll()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x7f0e0030
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 283
    const v0, 0x7f0d0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 285
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;"
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 152
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 153
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v2, -0x1

    .line 157
    .local v2, position:I
    if-eqz p2, :cond_1

    .line 158
    iget-wide v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedId:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_1

    .line 159
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/CommonItem;

    .line 160
    .local v1, item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    iget-wide v3, v1, Lcom/zte/heartyservice/common/datatype/CommonItem;->id:J

    iget-wide v5, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 161
    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 162
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iput-wide v8, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedId:J

    .line 169
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/zte/heartyservice/common/datatype/CommonItem;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 170
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 174
    :cond_2
    iget-boolean v3, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mIsDefaultLayout:Z

    if-eqz v3, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->setListShown(Z)V

    .line 182
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->updateActionBar()V

    .line 183
    return-void

    .line 178
    :cond_4
    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, arg0:Landroid/content/Loader;,"Landroid/content/Loader<Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonItem;>;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 188
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 290
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 299
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 292
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->showDeleteDialog()V

    .line 295
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0401
        :pswitch_0
    .end packed-switch
.end method

.method protected showDeleteDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0176

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0173

    new-instance v3, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$4;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment$4;-><init>(Lcom/zte/heartyservice/privacy/DisguiseAbstractCommunicationFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0174

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 355
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 356
    return-void
.end method
