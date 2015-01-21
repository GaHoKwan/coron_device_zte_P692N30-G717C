.class public Lcom/zte/heartyservice/power/BrightnessDisplay;
.super Landroid/app/Activity;
.source "BrightnessDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/BrightnessDisplay$1;,
        Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;
    }
.end annotation


# instance fields
.field private handler:Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;-><init>(Lcom/zte/heartyservice/power/BrightnessDisplay;Lcom/zte/heartyservice/power/BrightnessDisplay$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/power/BrightnessDisplay;->handler:Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;

    .line 23
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessDisplay;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 31
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "brightness"

    const/16 v5, 0xff

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, brightness:I
    const-string v4, "brightness_mode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, brightnessMode:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 38
    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessDisplay;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 40
    .local v3, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    int-to-float v4, v0

    const/high16 v5, 0x437f

    div-float/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 41
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/BrightnessDisplay;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    .end local v3           #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/power/BrightnessDisplay;->handler:Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/heartyservice/power/BrightnessDisplay$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    return-void
.end method
