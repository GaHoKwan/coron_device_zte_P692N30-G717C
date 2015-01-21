.class public Lcom/android/soundrecorder/EditViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;
    }
.end annotation


# static fields
.field private static final NO_CHECK_POS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SR/EditViewAdapter"


# instance fields
.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedItemId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPos:I

.field private mDurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPos:Landroid/util/SparseIntArray;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "curPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, titleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, durationList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput v1, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCurPos:I

    .line 52
    invoke-virtual/range {p0 .. p6}, Lcom/android/soundrecorder/EditViewAdapter;->initEditViewAdapter(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 53
    iput p7, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCurPos:I

    .line 54
    iget v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCurPos:I

    if-eq v1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    iget v1, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCurPos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, titleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, durationList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, posCheckedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCurPos:I

    .line 80
    invoke-virtual/range {p0 .. p6}, Lcom/android/soundrecorder/EditViewAdapter;->initEditViewAdapter(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 81
    if-eqz p7, :cond_0

    .line 82
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 83
    .local v1, item:I
    iget-object v2, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 86
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCheckedItemsCount()I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/soundrecorder/EditViewAdapter;->getCheckedItemsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getCheckedItemsList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, checkedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 135
    .local v3, listSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 136
    iget-object v5, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 137
    .local v4, state:Z
    iget-object v5, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 138
    .local v1, curPos:I
    if-eqz v4, :cond_0

    .line 139
    const-string v5, "SR/EditViewAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<getCheckedItemsList>, curPos is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v5, p0, Lcom/android/soundrecorder/EditViewAdapter;->mPathList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/soundrecorder/EditViewAdapter;->getItemPos(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1           #curPos:I
    .end local v4           #state:Z
    :cond_1
    return-object v0
.end method

.method protected getCheckedPosList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 107
    .local v2, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 108
    iget-object v4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 109
    .local v3, state:Z
    iget-object v4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 110
    .local v0, curPos:I
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckedItemId:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    const-string v4, "SR/EditViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<getCheckedPosList>, curPos is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckedItemId:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0           #curPos:I
    .end local v3           #state:Z
    :cond_1
    iget-object v4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckedItemId:Ljava/util/List;

    return-object v4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getGrayOutItems()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    .line 187
    .local v0, id:J
    iget-object v2, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdPos:Landroid/util/SparseIntArray;

    long-to-int v3, v0

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    return-wide v0
.end method

.method public getItemPos(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdPos:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 216
    move-object v1, p2

    .line 217
    .local v1, editListItemView:Landroid/view/View;
    if-nez v1, :cond_0

    .line 218
    iget-object v7, p0, Lcom/android/soundrecorder/EditViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 220
    new-instance v2, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;

    invoke-direct {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;-><init>()V

    .line 221
    .local v2, editViewTag:Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;
    const v7, 0x7f0c0001

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    #setter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mName:Landroid/widget/TextView;
    invoke-static {v2, v7}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$002(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 222
    const/high16 v7, 0x7f0c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    #setter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2, v7}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$102(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 223
    const v7, 0x7f0c0002

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    #setter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mTitle:Landroid/widget/TextView;
    invoke-static {v2, v7}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$202(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 224
    const v7, 0x7f0c0003

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    #setter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mDuration:Landroid/widget/TextView;
    invoke-static {v2, v7}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$302(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    :goto_0
    #getter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$000(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    #getter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$000(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v7, p0, Lcom/android/soundrecorder/EditViewAdapter;->mNameList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 235
    .local v3, fileName:Ljava/lang/String;
    #getter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$000(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v7, p0, Lcom/android/soundrecorder/EditViewAdapter;->mTitleList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 237
    .local v6, title:Ljava/lang/String;
    #getter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mTitle:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$200(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v7, p0, Lcom/android/soundrecorder/EditViewAdapter;->mDurationList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, duration:Ljava/lang/String;
    #getter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mDuration:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$300(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/soundrecorder/EditViewAdapter;->getItemId(I)J

    move-result-wide v7

    long-to-int v4, v7

    .line 241
    .local v4, id:I
    #getter for: Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;->access$100(Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;)Landroid/widget/CheckBox;

    move-result-object v7

    iget-object v8, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 242
    return-object v1

    .line 228
    .end local v0           #duration:Ljava/lang/String;
    .end local v2           #editViewTag:Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #id:I
    .end local v5           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;

    .restart local v2       #editViewTag:Lcom/android/soundrecorder/EditViewAdapter$EditViewTag;
    goto :goto_0
.end method

.method public initEditViewAdapter(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, nameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, titleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, durationList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 263
    iput-object p2, p0, Lcom/android/soundrecorder/EditViewAdapter;->mNameList:Ljava/util/List;

    .line 264
    iput-object p3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mPathList:Ljava/util/List;

    .line 265
    iput-object p4, p0, Lcom/android/soundrecorder/EditViewAdapter;->mTitleList:Ljava/util/List;

    .line 266
    iput-object p5, p0, Lcom/android/soundrecorder/EditViewAdapter;->mDurationList:Ljava/util/List;

    .line 267
    iput-object p6, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdList:Ljava/util/List;

    .line 268
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckedItemId:Ljava/util/List;

    .line 270
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdPos:Landroid/util/SparseIntArray;

    .line 272
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_0
    iget-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    .line 274
    .local v0, itemId:J
    iget-object v3, p0, Lcom/android/soundrecorder/EditViewAdapter;->mIdPos:Landroid/util/SparseIntArray;

    long-to-int v4, v0

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    const-string v3, "SR/EditViewAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The recordId is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; pos is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v0           #itemId:J
    :cond_0
    return-void
.end method

.method protected setCheckBox(IZ)V
    .locals 1
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/soundrecorder/EditViewAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 98
    return-void
.end method
