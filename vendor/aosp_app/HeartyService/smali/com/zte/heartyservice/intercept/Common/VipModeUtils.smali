.class public Lcom/zte/heartyservice/intercept/Common/VipModeUtils;
.super Ljava/lang/Object;
.source "VipModeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVipModeOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vipmode_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static turnOffVipMode(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 14
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->turnOffVipMode()V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vipmode_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 16
    return-void
.end method

.method public static turnOnVipMode(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 9
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->turnOnVipMode()V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vipmode_settings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 11
    return-void
.end method
