.class Lcom/mediatek/settings/plugin/PowerSavingSettings$6;
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
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;Landroid/widget/SeekBar;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iput-object p2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->val$autoCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 234
    const-string v0, "Power Savings"

    const-string v1, "-->brightnessDialog -- onClick Cancel"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$100(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightness(I)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$100(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$300(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightnessAutoMode(I)V

    .line 238
    const-string v0, "Power Savings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- onClick Cancel, old brightness is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mBrightnessPreference:Lcom/mediatek/settings/plugin/PowerSavingSettingPref;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$700(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingSettingPref;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$200(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    #calls: Lcom/mediatek/settings/plugin/PowerSavingSettings;->getBrightnessPercent(F)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$600(Lcom/mediatek/settings/plugin/PowerSavingSettings;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->val$seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$200(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->val$autoCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z
    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$300(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessProgress:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$400(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$6;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mOldBrightnessAutoChecked:Z
    invoke-static {v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$300(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Z

    move-result v2

    #calls: Lcom/mediatek/settings/plugin/PowerSavingSettings;->saveBrightness(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$500(Lcom/mediatek/settings/plugin/PowerSavingSettings;IZ)V

    .line 244
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
