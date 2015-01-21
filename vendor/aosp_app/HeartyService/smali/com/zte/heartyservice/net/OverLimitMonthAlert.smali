.class public Lcom/zte/heartyservice/net/OverLimitMonthAlert;
.super Landroid/app/Activity;
.source "OverLimitMonthAlert.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CleanAppAlert"


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    return-void
.end method

.method private getOverLimitString(D)Ljava/lang/String;
    .locals 7
    .parameter "value"

    .prologue
    const-wide v5, 0x3f847ae147ae147bL

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, valueString:Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###.##M"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, df:Ljava/text/DecimalFormat;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "###.##G"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, dfG:Ljava/text/DecimalFormat;
    const-wide v3, 0x408c200000000000L

    cmpl-double v3, p1, v3

    if-lez v3, :cond_0

    .line 108
    const-wide/high16 v3, 0x4090

    div-double v3, p1, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_0
    return-object v2

    .line 109
    :cond_0
    cmpl-double v3, p1, v5

    if-lez v3, :cond_1

    .line 110
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getOverLimitValue()D
    .locals 15

    .prologue
    const-wide/high16 v13, 0x4059

    const-wide/16 v9, 0x0

    .line 118
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v8

    .line 119
    .local v8, utils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v6

    .line 121
    .local v6, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    iget v11, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    invoke-virtual {v8, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v0

    .line 122
    .local v0, monthThreshold:J
    iget v11, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    invoke-virtual {v6, v11}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthFlowWarnPct(I)I

    move-result v7

    .line 124
    .local v7, percent:I
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-nez v11, :cond_1

    .line 125
    const-string v11, "CleanAppAlert"

    const-string v12, "liuji debug OverLimit monthThreshold == 0"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_0
    return-wide v9

    .line 130
    :cond_1
    iget v11, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    invoke-virtual {v8, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v4

    .line 132
    .local v4, monthUsed:D
    const/4 v11, -0x1

    if-ne v11, v7, :cond_2

    .line 133
    const-wide/16 v11, 0x5a

    mul-long/2addr v11, v0

    long-to-double v11, v11

    invoke-virtual {v8, v11, v12, v13, v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .line 140
    .local v2, monthThresholdStats:D
    :goto_1
    const-string v11, "CleanAppAlert"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "liuji debug OverLimit monthUsed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " monthThresholdStats:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    cmpl-double v11, v4, v2

    if-lez v11, :cond_0

    .line 142
    sub-double v9, v4, v2

    goto :goto_0

    .line 136
    .end local v2           #monthThresholdStats:D
    :cond_2
    int-to-long v11, v7

    mul-long/2addr v11, v0

    long-to-double v11, v11

    invoke-virtual {v8, v11, v12, v13, v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .restart local v2       #monthThresholdStats:D
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->finish()V

    .line 150
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->finish()V

    .line 156
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->mConnService:Landroid/net/ConnectivityManager;

    .line 49
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "msim_id"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    .line 51
    invoke-direct {p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getOverLimitValue()D

    move-result-wide v2

    .line 52
    .local v2, overLimit:D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->finish()V

    .line 56
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a00d5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 59
    iget v4, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    if-lez v4, :cond_1

    .line 60
    const v4, 0x7f0a05d0

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getOverLimitString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    :goto_0
    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/net/OverLimitMonthAlert$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert$1;-><init>(Lcom/zte/heartyservice/net/OverLimitMonthAlert;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    const v4, 0x7f0a00d6

    new-instance v5, Lcom/zte/heartyservice/net/OverLimitMonthAlert$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert$2;-><init>(Lcom/zte/heartyservice/net/OverLimitMonthAlert;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 94
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/zte/heartyservice/net/OverLimitMonthAlert$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert$3;-><init>(Lcom/zte/heartyservice/net/OverLimitMonthAlert;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 100
    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->setFinishOnTouchOutside(Z)V

    .line 101
    return-void

    .line 62
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    iget v4, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->simId:I

    if-nez v4, :cond_2

    .line 63
    const v4, 0x7f0a05cf

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getOverLimitString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 66
    :cond_2
    const v4, 0x7f0a00d8

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getOverLimitString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
