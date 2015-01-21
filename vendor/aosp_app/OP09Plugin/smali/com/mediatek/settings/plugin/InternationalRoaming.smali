.class public Lcom/mediatek/settings/plugin/InternationalRoaming;
.super Landroid/app/Activity;
.source "InternationalRoaming.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# static fields
.field private static final KEY_CURRENT_SLOT:Ljava/lang/String; = "current_slot"

.field private static final TAG:Ljava/lang/String; = "InternationalRoaming"


# instance fields
.field private mCurSlot:I

.field private mSlot1Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

.field private mSlot2Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    .line 43
    new-instance v0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-direct {v0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot1Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    .line 44
    new-instance v0, Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-direct {v0}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot2Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 48
    iget-object v3, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot1Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->setSlotId(I)V

    .line 49
    iget-object v3, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot2Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-virtual {v3, v6}, Lcom/mediatek/settings/plugin/SlotSettingsFragment;->setSlotId(I)V

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v3, 0x7f030024

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 57
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 58
    .local v1, simSlot1:Landroid/app/ActionBar$Tab;
    const v3, 0x7f090129

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 59
    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 63
    .local v2, simSlot2:Landroid/app/ActionBar$Tab;
    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 64
    invoke-virtual {v2, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 65
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v3, "current_slot"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    .line 73
    :cond_0
    const-string v3, "InternationalRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: savedInstanceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mSlot1Fragement = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot1Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSlot2Fragement = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot2Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v3, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    if-nez v3, :cond_2

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget v3, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    if-ne v3, v6, :cond_1

    .line 79
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "current_slot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    .line 94
    const-string v0, "InternationalRoaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 85
    const-string v0, "current_slot"

    iget v1, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "InternationalRoaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState: outState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 116
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "tab"
    .parameter "ft"

    .prologue
    const v3, 0x7f0b0097

    .line 99
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    .line 100
    const-string v0, "InternationalRoaming"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected: tab.getPosition() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot1Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-virtual {p2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mCurSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mediatek/settings/plugin/InternationalRoaming;->mSlot2Fragement:Lcom/mediatek/settings/plugin/SlotSettingsFragment;

    invoke-virtual {p2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 112
    return-void
.end method
