.class Lcom/mediatek/settings/plugin/PowerSavingSettings$7;
.super Ljava/lang/Object;
.source "PowerSavingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$autoCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/CheckBox;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iput-object p2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->val$autoCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->val$autoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    #setter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$302(Lcom/mediatek/settings/plugin/PowerSavingSettings;Z)Z

    .line 227
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$200(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$402(Lcom/mediatek/settings/plugin/PowerSavingSettings;I)I

    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$700(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    #calls: Lcom/mediatek/settings/plugin/PowerSavingSettings;->getBrightnessPercent(F)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$600(Lcom/mediatek/settings/plugin/PowerSavingSettings;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$7;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z
    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$300(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Z

    move-result v2

    #calls: Lcom/mediatek/settings/plugin/PowerSavingSettings;->saveBrightness(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$500(Lcom/mediatek/settings/plugin/PowerSavingSettings;IZ)V

    .line 230
    return-void
.end method