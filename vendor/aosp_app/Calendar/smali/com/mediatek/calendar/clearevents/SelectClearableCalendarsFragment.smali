.class public Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;
.super Landroid/app/Fragment;
.source "SelectClearableCalendarsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final FLAG_ACCOUNT_CHECK_DISABLE:I = 0x0

.field private static final IS_PRIMARY:Ljava/lang/String; = "\"primary\""

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SELECTION:Ljava/lang/String; = "sync_events=?"

.field private static final SELECTION_ARGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static mCalendarItemLayout:I

.field private static sDeleteToken:I

.field private static sQueryToken:I


# instance fields
.field private mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnDelete:Landroid/widget/Button;

.field private mCalendarIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mClearEventsDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/app/Activity;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ListView;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mToast:Landroid/widget/Toast;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    .line 71
    const v0, 0x7f04002d

    sput v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarItemLayout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;-><init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;-><init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClearEventsDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "itemLayout"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;-><init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;

    invoke-direct {v0, p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$3;-><init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClearEventsDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 92
    sput p1, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarItemLayout:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Lcom/android/calendar/AsyncQueryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClearEventsDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->dismissAlertDialog()V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->sDeleteToken:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->sDeleteToken:I

    return p0
.end method

.method private createProgressDialog()Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 302
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 306
    return-object v0
.end method

.method private dismissAlertDialog()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 298
    :cond_0
    return-void
.end method

.method private getSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "selection"

    .prologue
    .line 282
    const-string v2, ""

    .line 283
    .local v2, tmpSelection:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 284
    .local v0, calId:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR calendar_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 286
    .end local v0           #calId:Ljava/lang/Long;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    const-string v3, " OR "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    .end local p1
    :cond_1
    return-object p1
.end method


# virtual methods
.method public disableAccountCheckStatus(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 319
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 320
    .local v3, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 321
    .local v4, numColumns:I
    new-array v0, v4, [Ljava/lang/String;

    .line 322
    .local v0, data:[Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 324
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    :cond_0
    const-string v5, "visible"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 328
    .local v2, index:I
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 329
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    .end local v1           #i:I
    .end local v2           #index:I
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 332
    return-object v3
.end method

.method public isProgressDialogShowing()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;

    sget v2, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarItemLayout:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .line 168
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;

    .line 99
    new-instance v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$1;-><init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-direct {p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->createProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 177
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->sQueryToken:I

    .line 178
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->sQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 139
    const v2, 0x7f040038

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mView:Landroid/view/View;

    .line 140
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mView:Landroid/view/View;

    const v3, 0x7f1000bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mList:Landroid/widget/ListView;

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090007

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mView:Landroid/view/View;

    const v3, 0x7f1000bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 149
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mView:Landroid/view/View;

    const v3, 0x7f1000c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    .line 153
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mView:Landroid/view/View;

    const v3, 0x7f1000bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    .local v0, cancel:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 159
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->dismissAlertDialog()V

    .line 190
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 194
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 199
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 202
    iput-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCursor:Landroid/database/Cursor;

    .line 204
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getCount()I

    move-result v0

    if-gt v0, p3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0, p3}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->saveCalendarId(I)V

    goto :goto_0
.end method

.method public saveCalendarId(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 261
    const-string v3, "Calendar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toggling calendar at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v3, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getItemId(I)J

    move-result-wide v0

    .line 263
    .local v0, calId:J
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v3, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getVisible(I)I

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    .line 265
    .local v2, selected:I
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->setVisible(II)V

    .line 266
    if-eqz v2, :cond_1

    .line 267
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 279
    :goto_1
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mCalendarIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_2
    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mBtnDelete:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method
