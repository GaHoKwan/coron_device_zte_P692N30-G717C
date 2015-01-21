.class public Lcom/mediatek/schpwronoff/RepeatPreference;
.super Landroid/preference/ListPreference;
.source "RepeatPreference.java"


# instance fields
.field private final mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

.field public mIsPressedPositive:Z

.field private final mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v2, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    .line 53
    new-instance v2, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    .line 55
    iput-boolean v3, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mIsPressedPositive:Z

    .line 65
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, weekdays:[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    aget-object v2, v1, v5

    aput-object v2, v0, v3

    aget-object v2, v1, v6

    aput-object v2, v0, v4

    aget-object v2, v1, v7

    aput-object v2, v0, v5

    const/4 v2, 0x5

    aget-object v2, v1, v2

    aput-object v2, v0, v6

    const/4 v2, 0x6

    aget-object v2, v1, v2

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aget-object v3, v1, v4

    aput-object v3, v0, v2

    .line 69
    .local v0, values:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/schpwronoff/RepeatPreference;)Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    return-object v0
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    const/4 v2, 0x1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iput-boolean v2, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mIsPressedPositive:Z

    .line 77
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->set(Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)V

    .line 78
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->set(Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    new-instance v2, Lcom/mediatek/schpwronoff/RepeatPreference$1;

    invoke-direct {v2, p0}, Lcom/mediatek/schpwronoff/RepeatPreference$1;-><init>(Lcom/mediatek/schpwronoff/RepeatPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    return-void
.end method

.method public setDaysOfWeek(Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)V
    .locals 2
    .parameter "dow"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->set(Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference;->mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->set(Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;)V

    .line 104
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
