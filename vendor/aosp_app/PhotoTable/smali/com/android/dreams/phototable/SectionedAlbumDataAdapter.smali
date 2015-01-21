.class public Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;
.super Landroid/database/DataSetObserver;
.source "SectionedAlbumDataAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SectionedAlbumDataAdapter"


# instance fields
.field private final mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayout:I

.field private sections:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;IILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "settings"
    .parameter "headerLayout"
    .parameter "itemLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 47
    iput p3, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mLayout:I

    .line 48
    iput-object p1, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mContext:Landroid/content/Context;

    .line 49
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    new-instance v0, Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/android/dreams/phototable/AlbumDataAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    .line 51
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    new-instance v1, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;

    invoke-direct {v1}, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->onChanged()V

    .line 53
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 54
    return-void
.end method

.method private internalPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 199
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 200
    add-int/lit8 v1, v0, 0x1

    neg-int v0, v1

    .line 202
    :cond_0
    sub-int v1, p1, v0

    return v1
.end method

.method private isHeader(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    iget-object v0, v0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 132
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    move-object v0, p2

    .line 174
    .local v0, item:Landroid/view/View;
    if-nez v0, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mLayout:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 177
    :cond_0
    const v4, 0x7f0b0004

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 178
    .local v3, vTextView:Landroid/view/View;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 179
    check-cast v2, Landroid/widget/TextView;

    .line 180
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2           #textView:Landroid/widget/TextView;
    :cond_1
    move-object v1, v0

    .line 187
    .end local v0           #item:Landroid/view/View;
    .end local v3           #vTextView:Landroid/view/View;
    .local v1, item:Landroid/view/View;
    :goto_0
    return-object v1

    .line 186
    .end local v1           #item:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v5

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/dreams/phototable/AlbumDataAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0       #item:Landroid/view/View;
    move-object v1, v0

    .line 187
    .end local v0           #item:Landroid/view/View;
    .restart local v1       #item:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-direct {p0, p1}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->internalPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onChanged()V
    .locals 6

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, numSections:I
    const-string v3, ""

    .line 64
    .local v3, previous:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 66
    .local v1, item:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    :cond_0
    iget-object v3, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v1           #item:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_2
    new-array v4, v2, [I

    iput-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    .line 75
    const/4 v2, 0x0

    .line 76
    const-string v3, ""

    .line 78
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 79
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 80
    .restart local v1       #item:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 81
    :cond_3
    iget-object v3, v1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    aput v0, v4, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 78
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    .end local v1           #item:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 88
    iget-object v4, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->sections:[I

    aget v5, v4, v0

    add-int/2addr v5, v0

    aput v5, v4, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    :cond_6
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->onChanged()V

    .line 96
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 162
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/dreams/phototable/SectionedAlbumDataAdapter;->mAlbumData:Lcom/android/dreams/phototable/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 167
    return-void
.end method
