.class public Lcom/android/camera/ui/SettingSwitchSublistLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "SettingSwitchSublistLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingSwitchSublistLayout$1;,
        Lcom/android/camera/ui/SettingSwitchSublistLayout$ViewHolder;,
        Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;,
        Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchSublistLayout"


# instance fields
.field private mAdapter:Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;

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

    iput-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingSwitchSublistLayout;)Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/SettingSwitchSublistLayout;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mPreference:Lcom/android/camera/ListPreference;

    .line 121
    new-instance v0, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;-><init>(Lcom/android/camera/ui/SettingSwitchSublistLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
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

    iput-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mSettingList:Landroid/view/ViewGroup;

    .line 63
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 132
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "SwitchSublistLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") oldIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mAdapter:Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;

    invoke-virtual {v2}, Lcom/android/camera/ui/SettingSwitchSublistLayout$MyAdapter;->getSelectedIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mListener:Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mListener:Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;

    invoke-interface {v0, p3}, Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;->onVoiceCommandChanged(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/ui/SettingSwitchSublistLayout;->mListener:Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;

    .line 128
    return-void
.end method
