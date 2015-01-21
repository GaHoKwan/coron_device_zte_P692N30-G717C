.class public Lcom/android/camera/ui/SettingSublistLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "SettingSublistLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingSublistLayout$1;,
        Lcom/android/camera/ui/SettingSublistLayout$ViewHolder;,
        Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;,
        Lcom/android/camera/ui/SettingSublistLayout$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingSublistLayout"


# instance fields
.field private mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

.field private mPreference:Lcom/android/camera/ListPreference;

.field private mSettingList:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingSublistLayout;)Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingSublistLayout;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    .line 129
    new-instance v0, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;-><init>(Lcom/android/camera/ui/SettingSublistLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingSublistLayout;->reloadPreference()V

    .line 133
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/camera/ui/RotateLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "index"
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
    .line 159
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "SettingSublistLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") oldIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v3}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->getSelectedIndex()I

    move-result v1

    if-eq p3, v1, :cond_2

    const/4 v0, 0x1

    .line 161
    .local v0, realChanged:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, p3}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/SettingSublistLayout$Listener;->onSettingChanged(Z)V

    .line 167
    :cond_1
    return-void

    .line 160
    .end local v0           #realChanged:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/SettingSublistLayout$MyAdapter;->setSelectedIndex(I)V

    .line 145
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 150
    :goto_0
    const-string v2, "SettingSublistLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloadPreference() mPreference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 147
    :cond_1
    const-string v2, "SettingSublistLayout"

    const-string v3, "Invalid preference value."

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/android/camera/ui/SettingSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingSublistLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/ui/SettingSublistLayout;->mListener:Lcom/android/camera/ui/SettingSublistLayout$Listener;

    .line 155
    return-void
.end method
