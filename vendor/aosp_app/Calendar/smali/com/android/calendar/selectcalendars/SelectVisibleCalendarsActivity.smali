.class public Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "SelectVisibleCalendarsActivity.java"


# instance fields
.field private mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const v3, 0x7f1000c1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 44
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    const v2, 0x7f040014

    invoke-direct {v1, v2}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 48
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;->mFragment:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 52
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x4

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 74
    :pswitch_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
