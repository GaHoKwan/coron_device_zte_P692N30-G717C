.class public Lcom/mediatek/schpwronoff/AlarmClock;
.super Landroid/preference/PreferenceActivity;
.source "AlarmClock.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final MAX_ALARM_COUNT:I = 0xc

.field static final PREFERENCES:Ljava/lang/String; = "AlarmClock"

.field static final PREF_CLOCK_FACE:Ljava/lang/String; = "face"

.field static final PREF_SHOW_CLOCK:Ljava/lang/String; = "show_clock"

.field private static final TAG:Ljava/lang/String; = "AlarmClock"


# instance fields
.field private mAlarmsList:Landroid/widget/ListView;

.field private mAm:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mPm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/schpwronoff/AlarmClock;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/schpwronoff/AlarmClock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/schpwronoff/AlarmClock;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mPm:Ljava/lang/String;

    return-object v0
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    .line 223
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 224
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f04

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, v:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 226
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    new-instance v3, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;

    iget-object v4, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, p0, v4}, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/mediatek/schpwronoff/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 229
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, viewFocus:Landroid/view/View;
    const/4 v3, -0x1

    .line 204
    .local v3, viewId:I
    const/4 v1, -0x1

    .line 205
    .local v1, position:I
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 207
    instance-of v4, v2, Landroid/widget/ListView;

    if-eqz v4, :cond_0

    .line 208
    check-cast v2, Landroid/widget/ListView;

    .end local v2           #viewFocus:Landroid/view/View;
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 212
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    if-ltz v3, :cond_1

    if-ltz v1, :cond_1

    .line 216
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 217
    .local v0, mListView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 220
    .end local v0           #mListView:Landroid/widget/ListView;
    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 165
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v5, 0x7f0a000b

    if-ne v3, v5, :cond_2

    .line 166
    iget-object v3, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 167
    .local v1, c:Landroid/database/Cursor;
    new-instance v0, Lcom/mediatek/schpwronoff/Alarm;

    invoke-direct {v0, v1}, Lcom/mediatek/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 168
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    iget v5, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    iget-boolean v3, v0, Lcom/mediatek/schpwronoff/Alarm;->mEnabled:Z

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {p0, v5, v3}, Lcom/mediatek/schpwronoff/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 169
    iget-boolean v3, v0, Lcom/mediatek/schpwronoff/Alarm;->mEnabled:Z

    if-nez v3, :cond_0

    .line 170
    iget v3, v0, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    iget v5, v0, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    iget-object v6, v0, Lcom/mediatek/schpwronoff/Alarm;->mDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    iget v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mId:I

    invoke-static {p0, v3, v5, v6, v7}, Lcom/mediatek/schpwronoff/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/mediatek/schpwronoff/Alarm$DaysOfWeek;I)V

    .line 174
    .end local v0           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_0
    :goto_1
    return v4

    .line 168
    .restart local v0       #alarm:Lcom/mediatek/schpwronoff/Alarm;
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 174
    .end local v0           #alarm:Lcom/mediatek/schpwronoff/Alarm;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, ampm:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAm:Ljava/lang/String;

    .line 182
    aget-object v2, v0, v5

    iput-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mPm:Ljava/lang/String;

    .line 183
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    .line 184
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/schpwronoff/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 185
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCursor.getCount() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f04

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 190
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 191
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    new-instance v3, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;

    iget-object v4, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, p0, v4}, Lcom/mediatek/schpwronoff/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/mediatek/schpwronoff/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 194
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 195
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const v10, 0x7f0a000b

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v8, 0x7f09

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object v3, p3

    .line 246
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 247
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 248
    .local v1, c:Landroid/database/Cursor;
    new-instance v0, Lcom/mediatek/schpwronoff/Alarm;

    invoke-direct {v0, v1}, Lcom/mediatek/schpwronoff/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 251
    .local v0, alarm:Lcom/mediatek/schpwronoff/Alarm;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 252
    .local v2, cal:Ljava/util/Calendar;
    const/16 v7, 0xb

    iget v8, v0, Lcom/mediatek/schpwronoff/Alarm;->mHour:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v7, 0xc

    iget v8, v0, Lcom/mediatek/schpwronoff/Alarm;->mMinutes:I

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-static {p0, v2}, Lcom/mediatek/schpwronoff/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, time:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    const v8, 0x7f040002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 258
    .local v6, v:Landroid/view/View;
    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 259
    .local v4, textView:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 266
    iget-boolean v7, v0, Lcom/mediatek/schpwronoff/Alarm;->mEnabled:Z

    if-eqz v7, :cond_1

    .line 267
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f070007

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f070006

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 237
    iget-object v0, p0, Lcom/mediatek/schpwronoff/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 275
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick, id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/mediatek/schpwronoff/SetAlarm;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "alarm_id"

    long-to-int v3, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 282
    return-void
.end method
