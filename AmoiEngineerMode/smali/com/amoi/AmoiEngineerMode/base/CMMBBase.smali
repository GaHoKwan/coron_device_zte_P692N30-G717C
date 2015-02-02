.class public Lcom/amoi/AmoiEngineerMode/base/CMMBBase;
.super Landroid/app/Activity;
.source "CMMBBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 24
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.hisense.mobiletv"

    const-string v4, "com.hisense.mobiletv.MBBMSStartUpActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "EngineerMode"

    const-string v4, "CMMBBase ActivityNotFoundException: com.hisense.mobiletv.MBBMSStartUpActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v3, "oms.mobiletv"

    const-string v4, "oms.mobiletv.app.MobileTVStartUpActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    const-string v3, "EngineerMode"

    const-string v4, "CMMBBase ActivityNotFoundException: oms.mobiletv.app.MobileTVStartUpActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v3, "oms.mobiletv"

    const-string v4, "oms.mobiletv.app.cmmb.CMMBScanActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 47
    :catch_2
    move-exception v1

    .line 48
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "EngineerMode"

    const-string v4, "CMMBBase ActivityNotFoundException: oms.mobiletv.app.cmmb.CMMBScanActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v3, "\u672a\u627e\u5230CMMB\u7a0b\u5e8f"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
