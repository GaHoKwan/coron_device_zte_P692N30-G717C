.class public Lcom/android/calendar/CalendarSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarSettingsActivity.java"


# static fields
.field private static final CHECK_ACCOUNTS_DELAY:I = 0xbb8


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field mCheckAccounts:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHideMenuButtons:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHideMenuButtons:Z

    .line 115
    new-instance v0, Lcom/android/calendar/CalendarSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarSettingsActivity$1;-><init>(Lcom/android/calendar/CalendarSettingsActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCheckAccounts:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarSettingsActivity;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAccounts:[Landroid/accounts/Account;

    return-object v0
.end method


# virtual methods
.method public hideMenuButtons()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHideMenuButtons:Z

    .line 127
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v7, 0x7f060002

    invoke-virtual {p0, v7, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 46
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 47
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 48
    array-length v5, v1

    .line 49
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 50
    aget-object v2, v1, v4

    .line 51
    .local v2, acct:Landroid/accounts/Account;
    const-string v7, "com.android.calendar"

    invoke-static {v2, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 52
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 53
    .local v0, accountHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 54
    const-string v7, "com.android.calendar.selectcalendars.SelectCalendarsSyncFragment"

    iput-object v7, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 56
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v3, args:Landroid/os/Bundle;
    const-string v7, "account_name"

    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v7, "account_type"

    iget-object v8, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 60
    const/4 v7, 0x1

    invoke-interface {p1, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    .end local v0           #accountHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #args:Landroid/os/Bundle;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v2           #acct:Landroid/accounts/Account;
    .end local v4           #i:I
    .end local v5           #length:I
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mAccounts:[Landroid/accounts/Account;

    .line 65
    invoke-static {}, Lcom/android/calendar/Utils;->getTardis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 66
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 67
    .local v6, tardisHeader:Landroid/preference/PreferenceActivity$Header;
    const v7, 0x7f0c00cc

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 68
    const-string v7, "com.android.calendar.OtherPreferences"

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 69
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v6           #tardisHeader:Landroid/preference/PreferenceActivity$Header;
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x4

    .line 91
    iget-boolean v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHideMenuButtons:Z

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 133
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    :goto_0
    return v2

    .line 78
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f1000d2

    if-ne v3, v4, :cond_1

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, nextIntent:Landroid/content/Intent;
    new-array v0, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.calendar"

    aput-object v4, v0, v3

    .line 81
    .local v0, array:[Ljava/lang/String;
    const-string v3, "authorities"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #nextIntent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCheckAccounts:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/CalendarSettingsActivity;->mCheckAccounts:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    return-void
.end method
