.class public Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;
.super Landroid/app/Activity;
.source "AgendaChoiceActivity.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IAgendaChoiceForExt;


# static fields
.field private static final KEY_OTHER_APP_RESTORE_TIME:Ljava/lang/String; = "other_app_request_time"


# instance fields
.field private mController:Lcom/android/calendar/CalendarController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setFragments(J)V
    .locals 3
    .parameter "timeMillis"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 38
    .local v1, ft:Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/mediatek/calendar/selectevent/EventSelectionFragment;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/calendar/selectevent/EventSelectionFragment;-><init>(J)V

    .line 39
    .local v0, frag:Lcom/android/calendar/agenda/AgendaFragment;
    const v2, 0x7f10000b

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 40
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 41
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 24
    const v2, 0x7f040006

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .local v0, timeMillis:J
    if-eqz p1, :cond_0

    .line 28
    const-string v2, "other_app_request_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 33
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;->setFragments(J)V

    .line 34
    return-void

    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "other_app_request_time"

    iget-object v1, p0, Lcom/mediatek/calendar/selectevent/AgendaChoiceActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    return-void
.end method

.method public retSelectedEvent(Landroid/content/Intent;)V
    .locals 1
    .parameter "ret"

    .prologue
    .line 51
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 53
    return-void
.end method
