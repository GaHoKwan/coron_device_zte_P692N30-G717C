.class Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;
.super Ljava/lang/Object;
.source "PowerSavingCheckBoxPref.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingCheckBoxPref;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->turnOnPowerSavingMode(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
