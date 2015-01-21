.class Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;
.super Ljava/lang/Object;
.source "DetailModeSettingsActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/power/BrightnessPreference$OnBrightnessChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->InitialListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckBoxClicked(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iput-boolean p1, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    .line 349
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBrightness()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$1000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 350
    return-void
.end method

.method public onNegativeClosed()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget v1, v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessValue:I

    iput v1, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    .line 340
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-boolean v1, v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessAutomatic:Z

    iput-boolean v1, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessAutomatic:Z

    .line 341
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBrightness()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$1000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 342
    return-void
.end method

.method public onPositiveClosed()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget v1, v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    iput v1, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessValue:I

    .line 331
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    iget-boolean v1, v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessAutomatic:Z

    iput-boolean v1, v0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->oldBrightnessAutomatic:Z

    .line 332
    iget-object v0, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBrightness()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$1000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 333
    return-void
.end method

.method public onProgressChanged(I)I
    .locals 3
    .parameter "progress"

    .prologue
    .line 306
    const-string v1, "DetailModeSettingsActivity"

    const-string v2, "onBrighenessChangedListener OnProgressChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 309
    .local v0, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    add-int/lit8 v1, p1, 0x14

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 310
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 312
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    add-int/lit8 v2, p1, 0x14

    iput v2, v1, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->brightnessValue:I

    .line 313
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->updateBrightness()V
    invoke-static {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$1000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    .line 314
    return p1
.end method

.method public setBrightness(I)I
    .locals 3
    .parameter "progress"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 321
    .local v0, localLayoutParams1:Landroid/view/WindowManager$LayoutParams;
    int-to-float v1, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 322
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$12;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 323
    return p1
.end method
