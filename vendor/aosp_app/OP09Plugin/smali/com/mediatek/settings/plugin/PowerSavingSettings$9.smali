.class Lcom/mediatek/settings/plugin/PowerSavingSettings$9;
.super Ljava/lang/Object;
.source "PowerSavingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/PowerSavingSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 270
    const-string v0, "Power Savings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position: : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$000(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "power_saving_sleep_config"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$000(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$100(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setSleepTime()V

    .line 274
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mSleepPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$800(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    const v2, 0x7f09013a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$9;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p2

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 277
    return-void
.end method
