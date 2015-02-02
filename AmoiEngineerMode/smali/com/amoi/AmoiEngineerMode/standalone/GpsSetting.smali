.class public Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;
.super Landroid/app/Activity;
.source "GpsSetting.java"


# static fields
.field private static final DEFAULT_EFFECTIVE_SATELLITES_COUNT:I = 0x3

.field private static final DEFAULT_EFFECTIVE_SNR:I = 0xf

.field private static final DEFAULT_SEARCH_TIME:I = 0x78

.field public static final SETTING_EFFECTIVE_SATELLITES_COUNT:Ljava/lang/String; = "gps_test_effective_satellites_count"

.field public static final SETTING_EFFECTIVE_SNR:Ljava/lang/String; = "gps_test_effective_snr"

.field public static final SETTING_SEARCH_TIME:Ljava/lang/String; = "gps_test_search_time"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEffectiveSatellitesCount:I

.field private mEffectiveSatellitesCountEdit:Landroid/widget/EditText;

.field private mEffectiveSnr:I

.field private mEffectiveSnrEdit:Landroid/widget/EditText;

.field private mSearchTime:I

.field private mSearchTimeEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getEffectiveSatellitesCount(Landroid/content/ContentResolver;)I
    .locals 3
    .parameter "contentResolver"

    .prologue
    .line 122
    const-string v1, "gps_test_effective_satellites_count"

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    .local v0, count:I
    return v0
.end method

.method public static getEffectiveSnr(Landroid/content/ContentResolver;)I
    .locals 3
    .parameter "contentResolver"

    .prologue
    .line 116
    const-string v1, "gps_test_effective_snr"

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, snr:I
    return v0
.end method

.method public static getSearchTime(Landroid/content/ContentResolver;)I
    .locals 3
    .parameter "contentResolver"

    .prologue
    .line 134
    const-string v1, "gps_test_search_time"

    const/16 v2, 0x78

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, time:I
    return v0
.end method


# virtual methods
.method public exit(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->finish()V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f030016

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getEffectiveSnr(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnr:I

    .line 49
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getEffectiveSatellitesCount(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCount:I

    .line 50
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getSearchTime(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTime:I

    .line 54
    const v1, 0x7f070041

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnrEdit:Landroid/widget/EditText;

    .line 55
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnrEdit:Landroid/widget/EditText;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnr:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCountEdit:Landroid/widget/EditText;

    .line 58
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCountEdit:Landroid/widget/EditText;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v1, 0x7f070043

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTimeEdit:Landroid/widget/EditText;

    .line 61
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTimeEdit:Landroid/widget/EditText;

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTime:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 76
    :try_start_0
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnrEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, effectiveSnr:I
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCountEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, effectiveSatellitesCount:I
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTimeEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 86
    .local v3, searchTime:I
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnr:I

    if-eq v2, v4, :cond_0

    .line 87
    iput v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSnr:I

    .line 88
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "gps_test_effective_snr"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    :cond_0
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCount:I

    if-eq v1, v4, :cond_1

    .line 92
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mEffectiveSatellitesCount:I

    .line 93
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "gps_test_effective_satellites_count"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    :cond_1
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTime:I

    if-eq v3, v4, :cond_2

    .line 98
    iput v3, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mSearchTime:I

    .line 99
    iget-object v4, p0, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "gps_test_search_time"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :cond_2
    const v4, 0x7f0600a9

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/GpsSetting;->finish()V

    .line 103
    .end local v1           #effectiveSatellitesCount:I
    .end local v2           #effectiveSnr:I
    .end local v3           #searchTime:I
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "EngineerMode"

    const-string v5, "input error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const-string v4, "\u8bf7\u8f93\u5165\u6574\u6570"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
