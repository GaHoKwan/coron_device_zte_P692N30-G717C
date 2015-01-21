.class public Lcom/mediatek/settings/plugin/BatteryExt;
.super Lcom/mediatek/settings/ext/DefaultBatteryExt;
.source "BatteryExt.java"


# static fields
.field private static final KEY_CPU_SAVING:Ljava/lang/String; = "cpu_dtm"

.field private static final TAG:Ljava/lang/String; = "OP09BatteryExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultBatteryExt;-><init>()V

    .line 18
    const-string v0, "OP09BatteryExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatteryExt - new BatteryExt(context)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-object p1, p0, Lcom/mediatek/settings/plugin/BatteryExt;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public loadPreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "listGroup"

    .prologue
    .line 24
    const-string v1, "OP09BatteryExt"

    const-string v2, "BatteryExt - loadPreference()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lcom/mediatek/settings/plugin/PowerSavingPreference;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/BatteryExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingPreference;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, preference:Lcom/mediatek/settings/plugin/PowerSavingPreference;
    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingPreference;->setOrder(I)V

    .line 27
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 28
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 32
    instance-of v0, p2, Lcom/mediatek/settings/plugin/PowerSavingPreference;

    return v0
.end method
