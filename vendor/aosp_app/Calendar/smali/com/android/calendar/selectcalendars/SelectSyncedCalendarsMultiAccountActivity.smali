.class public Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
.super Landroid/app/ExpandableListActivity;
.source "SelectSyncedCalendarsMultiAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCOUNT_UNIQUE_KEY:Ljava/lang/String; = "ACCOUNT_KEY"

.field private static final EXPANDED_KEY:Ljava/lang/String; = "is_expanded"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type || account_name AS ACCOUNT_KEY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1000be

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->doSaveAction()V

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1000bd

    if-ne v0, v1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 63
    invoke-static {p0}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getAccountExt(Landroid/app/Activity;)Lcom/mediatek/calendar/extension/IAccountExt;

    move-result-object v8

    .line 64
    .local v8, ext:Lcom/mediatek/calendar/extension/IAccountExt;
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    invoke-interface {v8, v0}, Lcom/mediatek/calendar/extension/IAccountExt;->accountQuery([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 67
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->PROJECTION:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (ACCOUNT_KEY"

    const/4 v4, 0x0

    const-string v5, "account_name"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 73
    .local v6, accountsCursor:Landroid/database/MatrixCursor;
    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 77
    :cond_1
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    const/high16 v1, 0x7f10

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6, p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    .line 83
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 83
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 88
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->startCalendarMetafeedSync()V

    .line 90
    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f1000bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x4

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->cancelRefreshStopDelay()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 142
    const-string v2, "is_expanded"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 143
    .local v1, isExpanded:[Z
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 145
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 144
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 152
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mAdapter:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->startRefreshStopDelay()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    .line 125
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 127
    .local v0, count:I
    new-array v2, v0, [Z

    .line 128
    .local v2, isExpanded:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #isExpanded:[Z
    :cond_0
    const/4 v2, 0x0

    .line 134
    .restart local v2       #isExpanded:[Z
    :cond_1
    const-string v3, "is_expanded"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 136
    return-void
.end method
