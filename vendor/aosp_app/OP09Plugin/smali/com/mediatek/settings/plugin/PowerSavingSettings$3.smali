.class Lcom/mediatek/settings/plugin/PowerSavingSettings$3;
.super Ljava/lang/Object;
.source "PowerSavingSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/PowerSavingSettings;->createBrightnessDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iput-object p2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "dialog"
    .parameter "checked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    const-string v0, "Power Savings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrightnessDialog1: onClick checkbox -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;->val$seekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$000(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "power_saving_brightness_auto"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$000(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$3;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$100(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v0

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightnessAutoMode(I)V

    .line 184
    return-void

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    :cond_1
    move v1, v2

    .line 183
    goto :goto_1
.end method
