.class Lcom/mediatek/settings/plugin/PowerSavingSettings$4;
.super Ljava/lang/Object;
.source "PowerSavingSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$4;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 213
    const-string v0, "Power Savings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrightnessDialog1: onProgressChanged -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$4;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mPowerSavingManager:Lcom/mediatek/settings/plugin/PowerSavingManager;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$100(Lcom/mediatek/settings/plugin/PowerSavingSettings;)Lcom/mediatek/settings/plugin/PowerSavingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$4;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    #getter for: Lcom/mediatek/settings/plugin/PowerSavingSettings;->mScreenBrightnessDim:I
    invoke-static {v1}, Lcom/mediatek/settings/plugin/PowerSavingSettings;->access$200(Lcom/mediatek/settings/plugin/PowerSavingSettings;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/plugin/PowerSavingManager;->setBrightness(I)V

    .line 217
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 209
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 204
    return-void
.end method
