.class public Leu/chainfire/supersu/SettingsFragment;
.super Leu/chainfire/supersu/PreferenceListFragment;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/SettingsFragment$IconItem;
    }
.end annotation


# instance fields
.field private Ą:Landroid/preference/CheckBoxPreference;

.field private ą:Landroid/preference/ListPreference;

.field private Ć:Landroid/preference/ListPreference;

.field private ć:Landroid/preference/CheckBoxPreference;

.field private ċ:Landroid/preference/Preference;

.field private đ:Landroid/preference/ListPreference;

.field private Ē:Z

.field private ē:Z

.field private Ė:Landroid/content/res/Resources;

.field private ȃ:Landroid/preference/CheckBoxPreference;

.field private Ȋ:Landroid/preference/CheckBoxPreference;

.field private ˮ͈:Landroid/preference/CheckBoxPreference;

.field private ˮ͍:Landroid/preference/Preference;

.field private ܕ:Landroid/preference/Preference;

.field private 㥳:Z

.field private 䒧:Landroid/preference/ListPreference;

.field private 岱:Landroid/preference/ListPreference;

.field private 庸:Landroid/preference/CheckBoxPreference;

.field private 櫯:Landroid/content/SharedPreferences;

.field private 纫:Landroid/preference/ListPreference;

.field private 躆:Landroid/preference/ListPreference;

.field private 鷭:Landroid/os/Handler;

.field private 띥:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->鷭:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ą:Landroid/preference/CheckBoxPreference;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ą:Landroid/preference/ListPreference;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ć:Landroid/preference/ListPreference;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ć:Landroid/preference/CheckBoxPreference;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ˮ͍:Landroid/preference/Preference;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->岱:Landroid/preference/ListPreference;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ȋ:Landroid/preference/CheckBoxPreference;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->纫:Landroid/preference/ListPreference;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->躆:Landroid/preference/ListPreference;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->đ:Landroid/preference/ListPreference;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->ē:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->띥:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    .line 48
    return-void
.end method

.method static synthetic ˮ͈(Leu/chainfire/supersu/SettingsFragment;)Landroid/os/Handler;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->鷭:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic 櫯(Leu/chainfire/supersu/SettingsFragment;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->鷭(Z)V

    return-void
.end method

.method static synthetic 櫯(Ljava/lang/String;)Z
    .locals 1

    .line 0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment;I)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/SettingsFragment;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/MainActivity;

    invoke-static {p1}, Leu/chainfire/supersu/Settings;->鷭(Ljava/lang/String;)I

    move-result p1

    iget-object v0, v0, Leu/chainfire/supersu/compat/FragmentActivity;->ȃ:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    const-string v0, "icon"

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/SettingsFragment;->鷭(Ljava/lang/String;)V

    return-void
.end method

.method private 鷭(Z)V
    .locals 4

    .line 0
    if-eqz p1, :cond_0

    .line 822
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 823
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 824
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 825
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$17;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$17;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090068

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 834
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$18;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$18;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090067

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 843
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$19;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$19;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090069

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 822
    .line 849
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    return-void

    .line 852
    :catch_0
    return-void

    .line 853
    :cond_0
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 854
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 855
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f090068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Leu/chainfire/supersu/SettingsFragment$20;

    invoke-direct {v2, p0}, Leu/chainfire/supersu/SettingsFragment$20;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 871
    const v1, 0x7f090009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 853
    .line 873
    :try_start_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 874
    return-void

    .line 877
    :catch_1
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p2}, Leu/chainfire/supersu/SettingsFragment;->鷭(Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Leu/chainfire/supersu/PreferenceListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 883
    return-void
.end method

.method protected final 鷭(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    .line 135
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;Z)Z

    move-result v0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Leu/chainfire/supersu/SettingsFragment;->ē:Z

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Leu/chainfire/supersu/SettingsFragment;->띥:Z

    .line 142
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/User;->櫯(Landroid/content/Context;)Z

    move-result v0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    .line 146
    const-string v10, "SuperSU"

    .line 147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->ē:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Pro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 148
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Sauce"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 149
    :cond_1
    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (XBIN)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 150
    :cond_2
    invoke-static {}, Leu/chainfire/supersu/Settings;->鷭()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (CM)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 151
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 152
    if-eqz v11, :cond_4

    .line 154
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 155
    if-eqz v11, :cond_4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 162
    :catch_0
    :cond_4
    new-instance v11, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Copyright (C) 2012-2014 - Chainfire\nTwitter: @ChainfireXDA\nG+: http://google.com/+Chainfire\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    move-object/from16 v1, p0

    iget-object v1, v1, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    const-string v0, "copyright"

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 172
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SettingsFragment$1;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->ē:Z

    if-nez v0, :cond_6

    .line 188
    new-instance v10, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 189
    const v0, 0x7f090028

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->띥:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0900ee

    goto :goto_0

    :cond_5
    const v0, 0x7f090029

    :goto_0
    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 191
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$2;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SettingsFragment$2;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f09002b

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v10

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "superuser"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f09002c

    invoke-static {v0, v10, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_7

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ˮ͈:Landroid/preference/CheckBoxPreference;

    new-instance v1, Leu/chainfire/supersu/SettingsFragment$3;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Leu/chainfire/supersu/SettingsFragment$3;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "survival"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f09002f

    invoke-static {v0, v10, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f09002a

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_b

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_d

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ȃ:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 241
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "reauthenticate"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f090032

    invoke-static {v0, v10, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->Ą:Landroid/preference/CheckBoxPreference;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ą:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ą:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f090035

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v10

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_access"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prompt"

    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "prompt"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "grant"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string v2, "deny"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const v2, 0x7f090036

    const/4 v3, 0x0

    const v4, 0x7f090037

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ą:Landroid/preference/ListPreference;

    .line 247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    if-eqz v0, :cond_e

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_wait"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "10"

    const/4 v2, 0x6

    new-array v7, v2, [Ljava/lang/CharSequence;

    .line 249
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    .line 250
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    .line 251
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v7, v3

    .line 252
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    .line 253
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v7, v3

    .line 254
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v7, v3

    .line 255
    const/4 v2, 0x6

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "10"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "20"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string v2, "30"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const-string v2, "60"

    const/4 v3, 0x3

    aput-object v2, v8, v3

    const-string v2, "120"

    const/4 v3, 0x4

    aput-object v2, v8, v3

    const-string v2, "300"

    const/4 v3, 0x5

    aput-object v2, v8, v3

    .line 248
    const v2, 0x7f0900ad

    const/4 v3, 0x0

    const v4, 0x7f0900ad

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->Ć:Landroid/preference/ListPreference;

    .line 256
    goto/16 :goto_6

    .line 257
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_wait"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "10"

    const/4 v2, 0x6

    new-array v7, v2, [Ljava/lang/CharSequence;

    .line 258
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    .line 259
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    .line 260
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v7, v3

    .line 261
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    .line 262
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v7, v3

    .line 263
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v7, v3

    .line 264
    const/4 v2, 0x6

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "10"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "20"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string v2, "30"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const-string v2, "60"

    const/4 v3, 0x3

    aput-object v2, v8, v3

    const-string v2, "120"

    const/4 v3, 0x4

    aput-object v2, v8, v3

    const-string v2, "300"

    const/4 v3, 0x5

    aput-object v2, v8, v3

    .line 257
    const v2, 0x7f0900ad

    const v3, 0x7f09002a

    const v4, 0x7f0900ad

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->Ć:Landroid/preference/ListPreference;

    .line 266
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "config_%s_notify"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f090038

    invoke-static {v0, v10, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ć:Landroid/preference/CheckBoxPreference;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ć:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ć:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f09003b

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v10

    .line 271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    if-eqz v0, :cond_f

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "content"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "access"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string v2, "none"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const v2, 0x7f09003c

    const/4 v3, 0x0

    const v4, 0x7f09003d

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->纫:Landroid/preference/ListPreference;

    .line 273
    goto/16 :goto_7

    .line 274
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "config_%s_log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_%s_log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 278
    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/CharSequence;

    .line 279
    const/4 v0, 0x1

    aget-object v0, v11, v0

    const/4 v1, 0x0

    aput-object v0, v12, v1

    .line 280
    const/4 v0, 0x2

    aget-object v0, v11, v0

    const/4 v1, 0x1

    aput-object v0, v12, v1

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    move-object v7, v12

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "access"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "none"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const v2, 0x7f09003c

    const/4 v3, 0x0

    const v4, 0x7f09003d

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->纫:Landroid/preference/ListPreference;

    .line 283
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_logage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x6

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "0"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "14"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string v2, "7"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const-string v2, "3"

    const/4 v3, 0x3

    aput-object v2, v8, v3

    const-string v2, "2"

    const/4 v3, 0x4

    aput-object v2, v8, v3

    const-string v2, "1"

    const/4 v3, 0x5

    aput-object v2, v8, v3

    const v2, 0x7f09003e

    const/4 v3, 0x0

    const v4, 0x7f09003f

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$4;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$4;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090040

    const v3, 0x7f090041

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 327
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v2, "config_%s_logformat"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "default"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "31122359"

    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/CharSequence;

    const-string v2, "31122359"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    const-string v2, "12312359"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    const-string v2, "31121159PM"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    const-string v2, "12311159PM"

    const/4 v3, 0x3

    aput-object v2, v8, v3

    const v2, 0x7f090043

    const/4 v3, 0x0

    const v4, 0x7f090044

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->躆:Landroid/preference/ListPreference;

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0900b5

    invoke-static {v0, v10, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v11

    .line 329
    const v0, 0x7f0900b6

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 330
    const v0, 0x7f0900b7

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 332
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f090046

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v12

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v12

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$5;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$5;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090047

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    .line 340
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    if-nez v0, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->鷭()Z

    move-result v0

    if-nez v0, :cond_11

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 343
    goto :goto_8

    .line 344
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_12

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 347
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "config_%s_enableduringboot"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0900e4

    invoke-static {v0, v12, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v10

    .line 348
    const v0, 0x7f0900e5

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 349
    const v0, 0x7f0900e6

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 350
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_13

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 352
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "enforce_permission"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0900eb

    invoke-static {v0, v12, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v10

    .line 353
    const v0, 0x7f0900ec

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 354
    const v0, 0x7f0900ed

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 355
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_14

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 357
    :cond_14
    invoke-static {}, Leu/chainfire/supersu/User;->鷭()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 358
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "config_%s_enablemultiuser"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0900bf

    invoke-static {v0, v12, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_15

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v0, 0x1

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_16

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900c0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 365
    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f09009c

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v10

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->ȃ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$6;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$6;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f09009f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ˮ͍:Landroid/preference/Preference;

    .line 446
    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 448
    move-object v1, v10

    .line 449
    .line 450
    .line 451
    .line 452
    const-string v5, "theme"

    .line 453
    const-string v6, "light"

    .line 454
    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/CharSequence;

    .line 455
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v7, v3

    .line 456
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    .line 457
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v7, v3

    .line 458
    move-object/from16 v2, p0

    iget-object v2, v2, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    .line 460
    const/4 v2, 0x4

    new-array v8, v2, [Ljava/lang/CharSequence;

    .line 461
    const-string v2, "dark"

    const/4 v3, 0x0

    aput-object v2, v8, v3

    .line 462
    const-string v2, "light"

    const/4 v3, 0x1

    aput-object v2, v8, v3

    .line 463
    const-string v2, "light_darkbar"

    const/4 v3, 0x2

    aput-object v2, v8, v3

    .line 464
    const-string v2, "devicedefault"

    const/4 v3, 0x3

    aput-object v2, v8, v3

    .line 446
    .line 466
    const v2, 0x7f0900a6

    const/4 v3, 0x0

    const v4, 0x7f0900a6

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->岱:Landroid/preference/ListPreference;

    .line 471
    :cond_17
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v15

    array-length v14, v15

    const/4 v13, 0x0

    goto :goto_a

    :cond_18
    aget-object v12, v15, v13

    .line 473
    const-string v0, "_"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 474
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_19
    add-int/lit8 v13, v13, 0x1

    :goto_a
    if-lt v13, v14, :cond_18

    .line 477
    new-instance v0, Leu/chainfire/supersu/SettingsFragment$7;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SettingsFragment$7;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v12, v0, [Ljava/lang/CharSequence;

    .line 524
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v13, v0, [Ljava/lang/CharSequence;

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v12, v1

    .line 527
    const-string v0, ""

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 529
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 530
    :cond_1a
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 532
    const-string v0, "_"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "_"

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 534
    new-instance v16, Ljava/util/Locale;

    const-string v0, "_"

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    goto :goto_b

    .line 536
    :cond_1b
    new-instance v16, Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 539
    :goto_b
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v1, v16

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 540
    add-int/lit8 v0, v14, 0x1

    aput-object v15, v13, v0

    .line 529
    add-int/lit8 v14, v14, 0x1

    :goto_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v14, v0, :cond_1a

    .line 543
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    const-string v5, "locale"

    const-string v6, ""

    .line 544
    move-object v7, v12

    .line 545
    move-object v8, v13

    .line 543
    .line 546
    const v2, 0x7f09009d

    const/4 v3, 0x0

    const v4, 0x7f09007d

    const/4 v9, 0x1

    invoke-static/range {v0 .. v9}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z)Landroid/preference/ListPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->đ:Landroid/preference/ListPreference;

    .line 549
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f090085

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v11

    .line 550
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-virtual {v2}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1c

    const v3, 0x7f090087

    goto :goto_d

    :cond_1c
    const v3, 0x7f090088

    :goto_d
    move-object/from16 v2, p0

    invoke-virtual {v2}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v4, 0x0

    goto :goto_e

    :cond_1d
    const/4 v4, 0x1

    :goto_e
    new-instance v5, Leu/chainfire/supersu/SettingsFragment$8;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$8;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090086

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v10

    .line 588
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_1e

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 589
    :cond_1e
    move-object v14, v10

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 591
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "config_%s_trustsystem"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f09008c

    invoke-static {v0, v11, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v12

    .line 592
    const v0, 0x7f09008d

    invoke-virtual {v12, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 593
    const v0, 0x7f09008e

    invoke-virtual {v12, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 595
    invoke-static {}, Leu/chainfire/supersu/Settings;->鷭()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 596
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f090092

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v13

    .line 597
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "config_%s_respectcm"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f090093

    invoke-static {v0, v13, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->Ȋ:Landroid/preference/CheckBoxPreference;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ȋ:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090094

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->Ȋ:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 602
    :cond_20
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/addon.d"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 603
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f0900e1

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v13

    .line 604
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v13

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$9;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$9;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090096

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_21

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 619
    :cond_21
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f0900cb

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v13

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "dev_permisison_warning"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f0900cc

    invoke-static {v0, v13, v3, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    .line 622
    const v0, 0x7f0900cd

    invoke-virtual {v14, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 623
    const v0, 0x7f0900ce

    invoke-virtual {v14, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f09004d

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v15

    .line 626
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v15

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$10;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$10;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090054

    const v3, 0x7f090055

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v10

    .line 644
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_22

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 645
    :cond_22
    move-object v14, v10

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 647
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v15

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$11;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$11;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090051

    const v3, 0x7f090052

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v10

    .line 665
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_24

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 666
    :cond_24
    move-object v14, v10

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 668
    :cond_25
    new-instance v0, Leu/chainfire/supersu/Installer;

    invoke-direct {v0}, Leu/chainfire/supersu/Installer;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 669
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v15

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$12;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$12;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f0900d9

    const v3, 0x7f0900da

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v10

    .line 676
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_26

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 677
    :cond_26
    move-object v14, v10

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 680
    :cond_27
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v15

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$13;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$13;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f09004e

    const v3, 0x7f09004f

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v10

    .line 698
    move-object/from16 v16, v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->㥳:Z

    if-nez v0, :cond_28

    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v16

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 699
    :cond_28
    move-object v14, v10

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0900e0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 701
    :cond_29
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f09004a

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v16

    .line 702
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, v16

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$14;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$14;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f09004b

    const v3, 0x7f09004c

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 716
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, v16

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$15;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$15;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090063

    const v3, 0x7f090064

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 724
    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->ē:Z

    if-nez v0, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Leu/chainfire/supersu/SettingsFragment;->띥:Z

    if-nez v0, :cond_2a

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "freeload"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, v16

    const v4, 0x7f0900d2

    invoke-static {v0, v3, v4, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;ILjava/lang/String;Ljava/lang/Boolean;)Landroid/preference/CheckBoxPreference;

    move-result-object v10

    .line 726
    const v0, 0x7f0900d3

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 727
    const v0, 0x7f0900d4

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 730
    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object/from16 v1, p1

    const v2, 0x7f0900ef

    invoke-static {v0, v1, v2}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceScreen;I)Landroid/preference/PreferenceCategory;

    move-result-object v10

    .line 731
    move-object/from16 v0, p0

    invoke-virtual {v0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, v10

    new-instance v5, Leu/chainfire/supersu/SettingsFragment$16;

    move-object/from16 v2, p0

    invoke-direct {v5, v2}, Leu/chainfire/supersu/SettingsFragment$16;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f0900f0

    const v3, 0x7f0900f1

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Leu/chainfire/supersu/Pref;->鷭(Landroid/support/v4/app/FragmentActivity;Landroid/preference/PreferenceCategory;IIZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "shown_follow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 810
    if-nez v0, :cond_2b

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shown_follow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 812
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Z)V

    .line 815
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 816
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/SettingsFragment;->鷭(Ljava/lang/String;)V

    .line 817
    return-object p1
.end method

.method public final 鷭(Ljava/lang/String;)V
    .locals 11

    .line 0
    :try_start_0
    const/4 v9, 0x0

    .line 889
    if-eqz p1, :cond_0

    const-string v0, "config_%s_access"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "config_%s_access"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prompt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 891
    :pswitch_0
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ą:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 892
    :pswitch_1
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ą:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 893
    :pswitch_2
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ą:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const/high16 v4, 0x7f0b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 895
    :goto_0
    if-eqz p1, :cond_1

    const/4 v9, 0x1

    .line 898
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "config_%s_wait"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    :cond_2
    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    if-eqz v0, :cond_3

    .line 900
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ć:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "settings_access_countdown_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v5, "config_%s_wait"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "default"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "10"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 902
    :cond_3
    if-eqz p1, :cond_4

    const/4 v9, 0x1

    .line 905
    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "config_%s_notify"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 906
    :cond_5
    if-eqz p1, :cond_6

    const/4 v9, 0x1

    .line 909
    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "config_%s_log"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 910
    :cond_7
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "config_%s_log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->ˮ͈(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 912
    :pswitch_3
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->纫:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 913
    goto :goto_1

    .line 914
    :pswitch_4
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->纫:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 915
    :pswitch_5
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->纫:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 917
    :goto_1
    if-eqz p1, :cond_8

    const/4 v9, 0x1

    .line 920
    :cond_8
    if-eqz p1, :cond_9

    const-string v0, "config_%s_logage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 921
    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "config_%s_logage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    nop

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_7
    .end packed-switch

    .line 922
    :pswitch_6
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 923
    :pswitch_7
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 924
    :pswitch_8
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 925
    :pswitch_9
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 926
    :pswitch_a
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 927
    :pswitch_b
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->䒧:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 929
    :goto_2
    :pswitch_c
    if-eqz p1, :cond_a

    const/4 v9, 0x1

    .line 932
    :cond_a
    if-eqz p1, :cond_b

    const-string v0, "config_%s_logformat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 933
    :cond_b
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "config_%s_logformat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31122359"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 934
    const-string v0, "31122359"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->躆:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 935
    :cond_c
    const-string v0, "12312359"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->躆:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 936
    :cond_d
    const-string v0, "31121159PM"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->躆:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 937
    :cond_e
    const-string v0, "12311159PM"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->躆:Landroid/preference/ListPreference;

    const-string v1, "[ %s ]\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 938
    :cond_f
    if-eqz p1, :cond_10

    const/4 v9, 0x1

    .line 941
    :cond_10
    if-nez p1, :cond_13

    .line 942
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 943
    invoke-static {}, Leu/chainfire/supersu/PINActivity;->櫯()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 944
    iget-boolean v0, p0, Leu/chainfire/supersu/SettingsFragment;->Ē:Z

    if-nez v0, :cond_11

    .line 946
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 947
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 948
    goto :goto_3

    .line 949
    :cond_11
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 951
    goto :goto_3

    .line 952
    :cond_12
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ܕ:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 957
    :cond_13
    :goto_3
    if-eqz p1, :cond_14

    const-string v0, "config_%s_respectcm"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 958
    :cond_14
    if-eqz p1, :cond_15

    const/4 v9, 0x1

    .line 961
    :cond_15
    if-nez p1, :cond_18

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    if-eqz v0, :cond_18

    .line 962
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/addon.d/99-supersu.sh"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 963
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 964
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 965
    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 966
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 967
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 968
    goto :goto_4

    .line 969
    :cond_17
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 970
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ċ:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 974
    :cond_18
    :goto_4
    if-eqz p1, :cond_19

    const-string v0, "config_%s_trustsystem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 975
    :cond_19
    if-eqz p1, :cond_1a

    const/4 v9, 0x1

    .line 978
    :cond_1a
    if-eqz p1, :cond_1b

    const-string v0, "config_%s_enableduringboot"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 979
    :cond_1b
    if-eqz p1, :cond_1c

    const/4 v9, 0x1

    .line 982
    :cond_1c
    if-eqz p1, :cond_1d

    const-string v0, "survival"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 983
    new-instance v10, Leu/chainfire/supersu/Installer;

    invoke-direct {v10}, Leu/chainfire/supersu/Installer;-><init>()V

    .line 984
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v10, v0}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;)V

    .line 985
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v2, "survival"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v10, v0, v1}, Leu/chainfire/supersu/Installer;->鷭(Landroid/content/Context;Z)Z

    .line 988
    :cond_1d
    if-eqz p1, :cond_1e

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 989
    :cond_1e
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v1, "locale"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 990
    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 991
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->đ:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ %s ]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v5, 0x7f09007e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 992
    goto/16 :goto_5

    .line 993
    :cond_1f
    new-instance v0, Ljava/util/Locale;

    const-string v1, "_"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    .line 994
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->đ:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ %s ]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 997
    :goto_5
    if-eqz p1, :cond_20

    .line 998
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 999
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1000
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1001
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$21;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$21;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1007
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$22;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$22;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1017
    :cond_20
    if-eqz p1, :cond_21

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1018
    :cond_21
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->ˮ͍:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "settings_custom_icon_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v5, "icon"

    const-string v6, "emblem"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1021
    :cond_22
    if-eqz p1, :cond_23

    const-string v0, "theme"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1022
    :cond_23
    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->岱:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "settings_custom_theme_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Leu/chainfire/supersu/SettingsFragment;->櫯:Landroid/content/SharedPreferences;

    const-string v5, "theme"

    const-string v6, "light"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/SettingsFragment;->Ė:Landroid/content/res/Resources;

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1024
    if-eqz p1, :cond_24

    .line 1025
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1026
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1027
    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1028
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$23;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$23;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1034
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$24;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$24;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1044
    :cond_24
    if-eqz p1, :cond_25

    const-string v0, "config_%s_enablemultiuser"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1045
    :cond_25
    if-eqz p1, :cond_26

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_26

    iget-object v0, p0, Leu/chainfire/supersu/SettingsFragment;->庸:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1046
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1047
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1048
    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1049
    const v1, 0x7f090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1052
    :cond_26
    if-eqz p1, :cond_27

    const/4 v9, 0x1

    .line 1055
    :cond_27
    if-eqz p1, :cond_28

    const-string v0, "freeload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1056
    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1057
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1058
    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1059
    new-instance v1, Leu/chainfire/supersu/SettingsFragment$25;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/SettingsFragment$25;-><init>(Leu/chainfire/supersu/SettingsFragment;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1069
    :cond_28
    if-eqz v9, :cond_29

    .line 1070
    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    return-void

    .line 1074
    :catch_0
    :cond_29
    return-void
.end method
