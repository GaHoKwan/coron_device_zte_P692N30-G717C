.class Lcom/android/systemui/statusbar/phone/QuickSettings$8;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 11
    .parameter "view"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 439
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;

    .line 441
    .local v0, batteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->isPresent:Z

    if-eqz v5, :cond_3

    .line 442
    const v5, 0x7f08009a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 443
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f080099

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 444
    .local v2, iv:Landroid/widget/ImageView;
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->pluggedIn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingLaptopBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 448
    .local v1, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->batteryLevel:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_1

    .line 449
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00dc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, t:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->batteryLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 459
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00d2

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 462
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v3           #t:Ljava/lang/String;
    .end local v4           #tv:Landroid/widget/TextView;
    :goto_2
    return-void

    .line 444
    .restart local v2       #iv:Landroid/widget/ImageView;
    .restart local v4       #tv:Landroid/widget/TextView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mLaptopBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_0

    .line 451
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->pluggedIn:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b00db

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #t:Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v3           #t:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0062

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$LaptopBatteryState;->batteryLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 464
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #iv:Landroid/widget/ImageView;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
