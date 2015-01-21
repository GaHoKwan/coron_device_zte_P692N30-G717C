.class public Lcom/zte/heartyservice/setting/QAActivity;
.super Landroid/app/Activity;
.source "QAActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;

.field private mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/setting/QAGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mAdapter:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;

    .line 76
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/QAActivity;->initGroups()V

    .line 46
    const v0, 0x7f0e031e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/QAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mList:Landroid/widget/ExpandableListView;

    .line 47
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 48
    new-instance v0, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/QAActivity;->mGroups:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;-><init>(Lcom/zte/heartyservice/setting/QAActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mAdapter:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/QAActivity;->mAdapter:Lcom/zte/heartyservice/setting/QAActivity$QAGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/zte/heartyservice/setting/QAActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 52
    return-void
.end method

.method private initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "title"
    .parameter "icon"

    .prologue
    const/16 v2, 0x8

    .line 37
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/QAActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 42
    return-void
.end method

.method private initGroups()V
    .locals 13

    .prologue
    .line 55
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/zte/heartyservice/setting/QAActivity;->mGroups:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/QAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 57
    .local v8, res:Landroid/content/res/Resources;
    const v10, 0x7f070051

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, title:[Ljava/lang/String;
    array-length v6, v9

    .line 59
    .local v6, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 60
    new-instance v1, Lcom/zte/heartyservice/setting/QAGroup;

    invoke-direct {v1}, Lcom/zte/heartyservice/setting/QAGroup;-><init>()V

    .line 61
    .local v1, group:Lcom/zte/heartyservice/setting/QAGroup;
    aget-object v10, v9, v2

    iput-object v10, v1, Lcom/zte/heartyservice/setting/QAGroup;->title:Ljava/lang/String;

    .line 62
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v1, Lcom/zte/heartyservice/setting/QAGroup;->children:Ljava/util/List;

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qa_content_q"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "array"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/QAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, question:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qa_content_a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "array"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/QAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, answer:[Ljava/lang/String;
    array-length v10, v7

    array-length v11, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 66
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 67
    new-instance v3, Lcom/zte/heartyservice/setting/QAItem;

    invoke-direct {v3}, Lcom/zte/heartyservice/setting/QAItem;-><init>()V

    .line 68
    .local v3, item:Lcom/zte/heartyservice/setting/QAItem;
    aget-object v10, v7, v4

    iput-object v10, v3, Lcom/zte/heartyservice/setting/QAItem;->question:Ljava/lang/String;

    .line 69
    aget-object v10, v0, v4

    iput-object v10, v3, Lcom/zte/heartyservice/setting/QAItem;->answer:Ljava/lang/String;

    .line 70
    iget-object v10, v1, Lcom/zte/heartyservice/setting/QAGroup;->children:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    .end local v3           #item:Lcom/zte/heartyservice/setting/QAItem;
    :cond_0
    iget-object v10, p0, Lcom/zte/heartyservice/setting/QAActivity;->mGroups:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0           #answer:[Ljava/lang/String;
    .end local v1           #group:Lcom/zte/heartyservice/setting/QAGroup;
    .end local v4           #j:I
    .end local v5           #length:I
    .end local v7           #question:[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0300d8

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/QAActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/QAActivity;->init()V

    .line 33
    const v0, 0x7f0a05d4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/QAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/setting/QAActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method
