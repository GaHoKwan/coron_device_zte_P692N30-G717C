.class public Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "SelectClearableCalendarsActivity.java"


# instance fields
.field private mFragment:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const v3, 0x7f1000c1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    iput-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;->mFragment:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    .line 46
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;->mFragment:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    const v2, 0x7f040014

    invoke-direct {v1, v2}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;-><init>(I)V

    iput-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;->mFragment:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 50
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;->mFragment:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 51
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;->mFragment:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 52
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x4

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 85
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 74
    const v0, 0x102002c

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
