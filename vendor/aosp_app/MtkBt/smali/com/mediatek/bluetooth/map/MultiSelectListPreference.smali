.class public Lcom/mediatek/bluetooth/map/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;
    }
.end annotation


# static fields
.field private static final SEPERATOR:Ljava/lang/String; = "99899"


# instance fields
.field private isDialogShowing:Z

.field private mClickedDialogEntryItems:[Z

.field private mClickedItemsInHistory:[Z

.field private mMultiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->isDialogShowing:Z

    .line 61
    new-instance v0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$1;-><init>(Lcom/mediatek/bluetooth/map/MultiSelectListPreference;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mMultiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/bluetooth/map/MultiSelectListPreference;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    return-object v0
.end method

.method private composeRecords([Z)Ljava/lang/String;
    .locals 5
    .parameter "items"

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v2, value:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 134
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-eqz p1, :cond_1

    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 135
    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    .line 136
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "99899"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private parseRecords(Ljava/lang/String;)[Z
    .locals 9
    .parameter "value"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    .local v1, entries:[Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 147
    const/4 v7, 0x0

    .line 164
    :cond_0
    return-object v7

    .line 149
    :cond_1
    array-length v8, v1

    new-array v7, v8, [Z

    .line 150
    .local v7, selectedItems:[Z
    if-eqz p1, :cond_0

    .line 153
    const-string v8, "99899"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, items:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v0, v2

    .line 155
    .local v6, oldItem:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_2

    .line 156
    aget-object v8, v1, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 160
    :cond_2
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 161
    const/4 v8, 0x1

    aput-boolean v8, v7, v3

    .line 154
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSelectedItems()[Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->isDialogShowing:Z

    .line 121
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    invoke-virtual {p0, v1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->setSelectedItems([Z)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 98
    .local v2, values:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->isDialogShowing:Z

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedItemsInHistory:[Z

    iput-object v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    .line 105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedItemsInHistory:[Z

    .line 111
    :goto_1
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    iget-object v4, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mMultiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->isDialogShowing:Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, oldItems:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->parseRecords(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 193
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 187
    check-cast v0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;

    .line 190
    .local v0, myState:Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;
    iget-object v1, v0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;->value:[Z

    iput-object v1, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedItemsInHistory:[Z

    .line 191
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->isDialogShowing:Z

    .line 192
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 170
    .local v1, superState:Landroid/os/Parcelable;
    iget-boolean v2, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->isDialogShowing:Z

    if-nez v2, :cond_0

    .line 177
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 174
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 175
    .local v0, myState:Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;->value:[Z

    .line 176
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference$SavedState;->length:I

    move-object v1, v0

    .line 177
    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->mClickedDialogEntryItems:[Z

    array-length v2, v2

    goto :goto_1
.end method

.method public reverseSelectedItems(Ljava/lang/String;)[Z
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->parseRecords(Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "entries"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setSelectedItems([Z)V
    .locals 6
    .parameter "values"

    .prologue
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v2, summary:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 85
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/MultiSelectListPreference;->composeRecords([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-eqz p1, :cond_1

    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 87
    aget-boolean v3, p1, v1

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, "MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entries[index]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
