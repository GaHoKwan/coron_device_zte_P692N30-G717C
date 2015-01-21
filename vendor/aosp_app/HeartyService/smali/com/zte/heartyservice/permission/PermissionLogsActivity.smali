.class public Lcom/zte/heartyservice/permission/PermissionLogsActivity;
.super Landroid/app/ListActivity;
.source "PermissionLogsActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;
    }
.end annotation


# static fields
.field private static final MENU_DELETE_ALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionLogsActivity"


# instance fields
.field private final MAX_PERMISSION_LOG_COUNT:I

.field private cleanButton:Landroid/widget/Button;

.field final mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

.field private mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

.field private noticeState:Landroid/widget/TextView;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 56
    const v0, 0x186a0

    iput v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->MAX_PERMISSION_LOG_COUNT:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/permission/PermissionLogsActivity;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getDisplayTimeStr(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    return-object v0
.end method

.method private getDisplayTimeStr(J)Ljava/lang/CharSequence;
    .locals 14
    .parameter "timeStamp"

    .prologue
    .line 292
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 293
    .local v2, curTimeStamp:J
    sub-long v8, v2, p1

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 294
    .local v0, between:J
    const-wide/32 v8, 0x15180

    div-long v8, v0, v8

    long-to-int v4, v8

    .line 295
    .local v4, days:I
    mul-int/lit8 v8, v4, 0x18

    mul-int/lit16 v8, v8, 0xe10

    int-to-long v8, v8

    sub-long v8, v0, v8

    long-to-int v8, v8

    div-int/lit16 v5, v8, 0xe10

    .line 296
    .local v5, hours:I
    mul-int/lit16 v8, v5, 0xe10

    int-to-long v8, v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 297
    .local v6, minutes:I
    mul-int/lit16 v8, v5, 0xe10

    int-to-long v8, v8

    sub-long v8, v0, v8

    mul-int/lit8 v10, v6, 0x3c

    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-int v7, v8

    .line 299
    .local v7, seconds:I
    if-lez v4, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a028d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 309
    :goto_0
    return-object v8

    .line 301
    :cond_0
    if-lez v5, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a028e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 303
    :cond_1
    if-lez v6, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a028f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 305
    :cond_2
    if-lez v7, :cond_3

    .line 306
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0290

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 309
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getOriginalTimeStr(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getOriginalTimeStr(J)Ljava/lang/String;
    .locals 6
    .parameter "timeStamp"

    .prologue
    .line 284
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 285
    .local v0, dateValue:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, mTime:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, mDate:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, mDisplayTimeStr:Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const v0, 0x7f0300ad

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->setContentView(I)V

    .line 173
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->pm:Landroid/content/pm/PackageManager;

    .line 174
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    .line 177
    const v0, 0x7f0e02d1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->cleanButton:Landroid/widget/Button;

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 229
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 231
    iput-object v1, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    .line 233
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 224
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->renderLogsListView()V

    .line 192
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->cleanButton:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$1;-><init>(Lcom/zte/heartyservice/permission/PermissionLogsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method public renderLogsListView()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getAllLogRecords()Landroid/database/Cursor;

    move-result-object v5

    .line 123
    .local v5, permissionLogsCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    if-nez v0, :cond_1

    .line 125
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const v1, 0x186a0

    if-le v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->deleteAllLogRecords()Z

    .line 128
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mDbHelper:Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionLogsDBHelper;->getAllLogRecords()Landroid/database/Cursor;

    move-result-object v5

    .line 129
    const v0, 0x7f0a056c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 134
    .local v3, list:Landroid/widget/ListView;
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 135
    new-array v6, v4, [Ljava/lang/String;

    const-string v0, "pkg"

    aput-object v0, v6, v2

    .line 136
    .local v6, from:[Ljava/lang/String;
    new-array v7, v4, [I

    const v0, 0x7f0e0012

    aput v0, v7, v2

    .line 137
    .local v7, to:[I
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    const v4, 0x7f0300ab

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;-><init>(Lcom/zte/heartyservice/permission/PermissionLogsActivity;Landroid/content/Context;Landroid/widget/ListView;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    .end local v3           #list:Landroid/widget/ListView;
    .end local v6           #from:[Ljava/lang/String;
    .end local v7           #to:[I
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionLogsActivity;->mPermissionLogsAdapter:Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/permission/PermissionLogsActivity$PermissionLogsListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
