.class public Lcom/zte/heartyservice/setting/SwitchModeSettings;
.super Landroid/app/Fragment;
.source "SwitchModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

.field private mActivity:Landroid/app/Activity;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hs_switch_mode"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x10

    const/4 v4, -0x2

    .line 31
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/SwitchModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActivity:Landroid/app/Activity;

    .line 33
    new-instance v1, Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    .line 34
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 35
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 37
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 53
    iget-object v1, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActionBarSwitch:Lcom/zte/heartyservice/common/datatype/ZTESwitch;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/SwitchModeSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hs_switch_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/ZTESwitch;->setChecked(Z)V

    .line 56
    return-void
.end method
