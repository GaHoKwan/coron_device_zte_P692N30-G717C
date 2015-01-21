.class public Lcom/android/camera/ui/SettingVirtualLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "SettingVirtualLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingVirtualLayout$1;,
        Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;,
        Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;,
        Lcom/android/camera/ui/SettingVirtualLayout$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingVirtualLayout"


# instance fields
.field private mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

.field private mPrefs:[Lcom/android/camera/ListPreference;

.field private mSettingList:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingVirtualLayout;)[Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingVirtualLayout;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initialize([Lcom/android/camera/ListPreference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_0
    array-length v1, p1

    .line 178
    .local v1, len:I
    new-array v2, v1, [Lcom/android/camera/ListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_1
    new-instance v2, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;-><init>(Lcom/android/camera/ui/SettingVirtualLayout;)V

    iput-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    .line 183
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingVirtualLayout;->reloadPreference()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;

    .line 205
    .local v1, holder:Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;
    iget-object v3, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mPref:Lcom/android/camera/ListPreference;

    .line 206
    .local v3, pref:Lcom/android/camera/ListPreference;
    const-string v5, "SettingVirtualLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") pref="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-nez v3, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    .line 211
    .local v4, selected:Landroid/widget/RadioButton;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 227
    :goto_1
    new-array v0, v11, [Landroid/widget/RadioButton;

    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    aput-object v5, v0, v8

    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    aput-object v5, v0, v9

    iget-object v5, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    aput-object v5, v0, v10

    .line 232
    .local v0, buttons:[Landroid/widget/RadioButton;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v11, :cond_3

    .line 233
    aget-object v5, v0, v2

    if-eq v4, v5, :cond_2

    .line 234
    aget-object v5, v0, v2

    invoke-virtual {v5, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 213
    .end local v0           #buttons:[Landroid/widget/RadioButton;
    .end local v2           #i:I
    :sswitch_0
    invoke-virtual {v3, v8}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 214
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio1:Landroid/widget/RadioButton;

    .line 215
    goto :goto_1

    .line 217
    :sswitch_1
    invoke-virtual {v3, v9}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 218
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio2:Landroid/widget/RadioButton;

    .line 219
    goto :goto_1

    .line 221
    :sswitch_2
    invoke-virtual {v3, v10}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 222
    iget-object v4, v1, Lcom/android/camera/ui/SettingVirtualLayout$ViewHolder;->mRadio3:Landroid/widget/RadioButton;

    .line 223
    goto :goto_1

    .line 237
    .restart local v0       #buttons:[Landroid/widget/RadioButton;
    .restart local v2       #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

    if-eqz v5, :cond_0

    .line 238
    iget-object v5, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

    invoke-interface {v5}, Lcom/android/camera/ui/SettingVirtualLayout$Listener;->onSettingChanged()V

    goto :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0148 -> :sswitch_0
        0x7f0b014b -> :sswitch_1
        0x7f0b014e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mSettingList:Landroid/view/ViewGroup;

    .line 62
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    array-length v1, v2

    .line 190
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 191
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mAdapter:Lcom/android/camera/ui/SettingVirtualLayout$MyAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingVirtualLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/camera/ui/SettingVirtualLayout;->mListener:Lcom/android/camera/ui/SettingVirtualLayout$Listener;

    .line 200
    return-void
.end method
