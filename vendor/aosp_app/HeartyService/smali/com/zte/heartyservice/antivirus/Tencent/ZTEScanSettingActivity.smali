.class public Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingActivity;
.super Landroid/app/Activity;
.source "ZTEScanSettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 15
    .local v0, transaction:Landroid/app/FragmentTransaction;
    const v1, 0x1020002

    new-instance v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;

    invoke-direct {v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanSettingsFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 16
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 17
    return-void
.end method
