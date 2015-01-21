.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventInfoActivity"


# instance fields
.field private mEndMillis:J

.field private mEventId:J

.field private mInfoFragment:Lcom/android/calendar/EventInfoFragment;

.field private mStartMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment;->setNeedSaveEvent(Z)V

    .line 243
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 32
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v26

    .line 56
    .local v26, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 57
    .local v8, attendeeResponse:I
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 58
    const/16 v18, 0x0

    .line 60
    .local v18, isDialog:Z
    if-eqz p1, :cond_2

    .line 61
    const-string v1, "key_event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 62
    const-string v1, "key_start_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 63
    const-string v1, "key_end_millis"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 64
    const-string v1, "key_attendee_response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 65
    const-string v1, "key_fragment_is_dialog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 71
    const v1, 0x7f090006

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v28

    .line 72
    .local v28, isTabletConfig:Z
    const-string v1, "display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/display/DisplayManager;

    .line 73
    .local v22, dm:Landroid/hardware/display/DisplayManager;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v27

    .line 74
    .local v27, isPluggedIn:Z
    :goto_0
    const-string v1, "EventInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dm= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isPluggedIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTabletConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEventId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEndMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v27, :cond_3

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 164
    .end local v22           #dm:Landroid/hardware/display/DisplayManager;
    .end local v27           #isPluggedIn:Z
    .end local v28           #isTabletConfig:Z
    :cond_0
    :goto_1
    return-void

    .line 73
    .restart local v22       #dm:Landroid/hardware/display/DisplayManager;
    .restart local v28       #isTabletConfig:Z
    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    .line 84
    .end local v22           #dm:Landroid/hardware/display/DisplayManager;
    .end local v28           #isTabletConfig:Z
    :cond_2
    if-eqz v26, :cond_3

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    const-string v1, "beginTime"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 86
    const-string v1, "endTime"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 87
    const-string v1, "attendeeStatus"

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 89
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 90
    .local v21, data:Landroid/net/Uri;
    if-eqz v21, :cond_3

    .line 92
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v29

    .line 93
    .local v29, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v31

    .line 94
    .local v31, size:I
    const/4 v1, 0x2

    move/from16 v0, v31

    if-le v0, v1, :cond_5

    const-string v1, "EventTime"

    const/4 v2, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    const/4 v1, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 98
    const/4 v1, 0x4

    move/from16 v0, v31

    if-le v0, v1, :cond_3

    .line 99
    const/4 v1, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 100
    const/4 v1, 0x4

    move-object/from16 v0, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v21           #data:Landroid/net/Uri;
    .end local v29           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v31           #size:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 119
    const-string v1, "EventInfoActivity"

    const-string v2, "No event id"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const v1, 0x7f0c0084

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 126
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 127
    .local v30, res:Landroid/content/res/Resources;
    const v1, 0x7f090004

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_7

    const v1, 0x7f090005

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 129
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 103
    .end local v30           #res:Landroid/content/res/Resources;
    .restart local v21       #data:Landroid/net/Uri;
    .restart local v29       #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31       #size:I
    :cond_5
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 105
    .end local v29           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v31           #size:I
    :catch_0
    move-exception v23

    .line 106
    .local v23, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 108
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 111
    :cond_6
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 112
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    goto/16 :goto_2

    .line 135
    .end local v21           #data:Landroid/net/Uri;
    .end local v23           #e:Ljava/lang/NumberFormatException;
    .restart local v30       #res:Landroid/content/res/Resources;
    :cond_7
    const v1, 0x7f040039

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1000c1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v20

    .line 144
    .local v20, bar:Landroid/app/ActionBar;
    if-eqz v20, :cond_8

    .line 145
    const/4 v1, 0x6

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 149
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-nez v1, :cond_9

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v24

    .line 151
    .local v24, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual/range {v24 .. v24}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v25

    .line 152
    .local v25, ft:Landroid/app/FragmentTransaction;
    new-instance v9, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    if-eqz v18, :cond_a

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v10, p0

    move/from16 v17, v8

    invoke-direct/range {v9 .. v19}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 156
    const v1, 0x7f1000c1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    const-string v3, "fragment_tag"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 157
    invoke-virtual/range {v25 .. v25}, Landroid/app/FragmentTransaction;->commit()I

    .line 161
    .end local v24           #fragmentManager:Landroid/app/FragmentManager;
    .end local v25           #ft:Landroid/app/FragmentTransaction;
    :cond_9
    invoke-static {}, Lcom/mediatek/calendar/features/Features;->isBeamPlusEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/mediatek/calendar/nfc/NfcHandler;->register(Landroid/app/Activity;Lcom/android/calendar/EventInfoFragment;)V

    goto/16 :goto_1

    .line 152
    .restart local v24       #fragmentManager:Landroid/app/FragmentManager;
    .restart local v25       #ft:Landroid/app/FragmentTransaction;
    :cond_a
    const/16 v19, 0x0

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mInfoFragment:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment;->setNeedSaveEvent(Z)V

    .line 233
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 275
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 270
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 253
    .local v2, fm:Landroid/app/FragmentManager;
    const-string v3, "fragment_tag"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 254
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 255
    check-cast v0, Lcom/android/calendar/EventInfoFragment;

    .line 256
    .local v0, eif:Lcom/android/calendar/EventInfoFragment;
    const-string v3, "key_event_id"

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 257
    const-string v3, "key_start_millis"

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    const-string v3, "key_end_millis"

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 259
    const-string v3, "EventInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", startMillis= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endMillis= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0           #eif:Lcom/android/calendar/EventInfoFragment;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method
