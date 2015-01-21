.class public Lcom/zte/heartyservice/net/OverLimitAlert;
.super Landroid/app/Activity;
.source "OverLimitAlert.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CleanAppAlert"


# instance fields
.field private mConnService:Landroid/net/ConnectivityManager;

.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    return-void
.end method

.method private getOverLimitString(D)Ljava/lang/String;
    .locals 7
    .parameter "value"

    .prologue
    const-wide v5, 0x3f847ae147ae147bL

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, valueString:Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "###.##M"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, df:Ljava/text/DecimalFormat;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "###.##G"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, dfG:Ljava/text/DecimalFormat;
    const-wide v3, 0x408c200000000000L

    cmpl-double v3, p1, v3

    if-lez v3, :cond_0

    .line 102
    const-wide/high16 v3, 0x4090

    div-double v3, p1, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    :goto_0
    return-object v2

    .line 103
    :cond_0
    cmpl-double v3, p1, v5

    if-lez v3, :cond_1

    .line 104
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 106
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
    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    .line 112
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v8

    .line 113
    .local v8, utils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    iget v11, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    invoke-virtual {v8, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v4

    .line 114
    .local v4, monthThreshold:J
    iget v11, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    invoke-virtual {v8, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDayThreshold(I)J

    move-result-wide v0

    .line 115
    .local v0, dayThreshold:J
    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    cmp-long v11, v0, v12

    if-nez v11, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-wide v9

    .line 120
    :cond_1
    iget v11, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    invoke-virtual {v8, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed(I)D

    move-result-wide v6

    .line 122
    .local v6, todayUsed:D
    cmp-long v11, v0, v12

    if-nez v11, :cond_2

    .line 123
    long-to-double v11, v4

    const-wide/high16 v13, 0x403e

    invoke-virtual {v8, v11, v12, v13, v14}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v2

    .line 128
    .local v2, dayThresholdStats:D
    :goto_1
    cmpl-double v11, v6, v2

    if-lez v11, :cond_0

    .line 129
    sub-double v9, v6, v2

    goto :goto_0

    .line 125
    .end local v2           #dayThresholdStats:D
    :cond_2
    long-to-double v2, v0

    .restart local v2       #dayThresholdStats:D
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitAlert;->finish()V

    .line 137
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitAlert;->finish()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/net/OverLimitAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->mConnService:Landroid/net/ConnectivityManager;

    .line 42
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitAlert;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "msim_id"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    .line 44
    invoke-direct {p0}, Lcom/zte/heartyservice/net/OverLimitAlert;->getOverLimitValue()D

    move-result-wide v2

    .line 45
    .local v2, overLimit:D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 46
    const-string v4, "OverLimitAlert"

    const-string v5, "liuji test2 finish"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/OverLimitAlert;->finish()V

    .line 49
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a00d4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 52
    iget v4, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    if-lez v4, :cond_1

    .line 53
    const v4, 0x7f0a05ce

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/OverLimitAlert;->getOverLimitString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/OverLimitAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    :goto_0
    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/net/OverLimitAlert$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/net/OverLimitAlert$1;-><init>(Lcom/zte/heartyservice/net/OverLimitAlert;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const v4, 0x7f0a00d6

    new-instance v5, Lcom/zte/heartyservice/net/OverLimitAlert$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/net/OverLimitAlert$2;-><init>(Lcom/zte/heartyservice/net/OverLimitAlert;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 88
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v4, Lcom/zte/heartyservice/net/OverLimitAlert$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/OverLimitAlert$3;-><init>(Lcom/zte/heartyservice/net/OverLimitAlert;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 94
    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/net/OverLimitAlert;->setFinishOnTouchOutside(Z)V

    .line 95
    return-void

    .line 55
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    iget v4, p0, Lcom/zte/heartyservice/net/OverLimitAlert;->simId:I

    if-nez v4, :cond_2

    .line 56
    const v4, 0x7f0a05cd

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/OverLimitAlert;->getOverLimitString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/OverLimitAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 59
    :cond_2
    const v4, 0x7f0a00d7

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/zte/heartyservice/net/OverLimitAlert;->getOverLimitString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/OverLimitAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
