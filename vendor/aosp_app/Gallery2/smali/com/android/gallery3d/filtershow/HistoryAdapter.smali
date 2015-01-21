.class public Lcom/android/gallery3d/filtershow/HistoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/gallery3d/filtershow/presets/ImagePreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Gallery2/HistoryAdapter"


# instance fields
.field private mBorders:Ljava/lang/String;

.field private mCrop:Ljava/lang/String;

.field private mCurrentPresetPosition:I

.field private mMirror:Ljava/lang/String;

.field private mRedoMenuItem:Landroid/view/MenuItem;

.field private mResetMenuItem:Landroid/view/MenuItem;

.field private mRotate:Ljava/lang/String;

.field private mStraighten:Ljava/lang/String;

.field private mUndoMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 36
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 42
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 43
    iput-object v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .line 48
    .local v0, activity:Lcom/android/gallery3d/filtershow/FilterShowActivity;
    const v1, 0x7f0c0195

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    .line 49
    const v1, 0x7f0c01bd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    .line 50
    const v1, 0x7f0c01be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    .line 51
    const v1, 0x7f0c01bc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    .line 52
    const v1, 0x7f0c01bf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V
    .locals 1
    .parameter "preset"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canAddHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 130
    :cond_0
    return-void
.end method

.method public canAddHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z
    .locals 3
    .parameter "preset"

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->same(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->getIsColorPreset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canReset()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :cond_0
    return v0
.end method

.method public canUndo()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteLast()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 141
    :goto_0
    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 138
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-eqz v0, :cond_1

    .line 139
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 141
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    goto :goto_0
.end method

.method public getLast()Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-ltz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f020116

    const v8, 0x7f020117

    .line 204
    move-object v5, p2

    .line 205
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 208
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04001a

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 211
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 212
    .local v1, item:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    if-eqz v1, :cond_2

    .line 213
    const v6, 0x7f0b0067

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 214
    .local v2, itemView:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    const v6, 0x7f0b0066

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 218
    .local v3, markView:Landroid/widget/ImageView;
    iget v6, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-ne p1, v6, :cond_3

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :goto_0
    const v6, 0x7f0b0068

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 225
    .local v4, typeView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_4

    .line 226
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    .end local v2           #itemView:Landroid/widget/TextView;
    .end local v3           #markView:Landroid/widget/ImageView;
    .end local v4           #typeView:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    return-object v5

    .line 221
    .restart local v2       #itemView:Landroid/widget/TextView;
    .restart local v3       #markView:Landroid/widget/ImageView;
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 227
    .restart local v4       #typeView:Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mBorders:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 228
    const v6, 0x7f020113

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mStraighten:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 230
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 231
    :cond_6
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCrop:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 232
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 233
    :cond_7
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRotate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 234
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 235
    :cond_8
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->historyName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mMirror:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 236
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 237
    :cond_9
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/presets/ImagePreset;->isFx()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 238
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 240
    :cond_a
    const v6, 0x7f020114

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V
    .locals 3
    .parameter "preset"
    .parameter "position"

    .prologue
    .line 161
    iget v2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-eqz v2, :cond_2

    .line 163
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 164
    .local v1, oldItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 168
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    iput p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 172
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canAddHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    .end local v0           #i:I
    .end local v1           #oldItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/gallery3d/filtershow/presets/ImagePreset;>;"
    :goto_2
    return-void

    .line 177
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 178
    iput p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 179
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public bridge synthetic insert(Ljava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p1, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->insert(Lcom/android/gallery3d/filtershow/presets/ImagePreset;I)V

    return-void
.end method

.method public redo()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 184
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    if-gez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 189
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/presets/ImagePreset;

    .line 106
    .local v0, first:Lcom/android/gallery3d/filtershow/presets/ImagePreset;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->addHistoryItem(Lcom/android/gallery3d/filtershow/presets/ImagePreset;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    goto :goto_0
.end method

.method public setCurrentPreset(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 97
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 98
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public setMenuItems(Landroid/view/MenuItem;Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 0
    .parameter "undoItem"
    .parameter "redoItem"
    .parameter "resetItem"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    .line 57
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    .line 58
    iput-object p3, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 60
    return-void
.end method

.method public undo()I
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 194
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 198
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->updateMenuItems()V

    .line 199
    iget v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mCurrentPresetPosition:I

    return v0
.end method

.method public updateMenuItems()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mUndoMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canUndo()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mRedoMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canRedo()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/HistoryAdapter;->mResetMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/HistoryAdapter;->canReset()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 93
    :cond_2
    return-void
.end method
