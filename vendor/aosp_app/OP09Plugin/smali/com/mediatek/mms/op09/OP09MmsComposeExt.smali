.class public Lcom/mediatek/mms/op09/OP09MmsComposeExt;
.super Lcom/mediatek/mms/ext/MmsComposeImpl;
.source "OP09MmsComposeExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;
    }
.end annotation


# static fields
.field private static final COLUMN_ADDRESS:I = 0x0

.field private static final COLUMN_ADDRESS_NAME:Ljava/lang/String; = "address"

.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_DATE_NAME:Ljava/lang/String; = "date"

.field private static final COLUMN_ERROR_CODE:I = 0x3

.field private static final COLUMN_ERROR_CODE_NAME:Ljava/lang/String; = "error_code"

.field private static final COLUMN_MSG_ID:I = 0x4

.field private static final COLUMN_SIM_ID:I = 0x5

.field private static final COLUMN_SIM_ID_NAME:Ljava/lang/String; = "sim_id"

.field private static final COLUMN_TYPE:I = 0x2

.field private static final COLUMN_TYPE_NAME:Ljava/lang/String; = "type"

.field private static final MENU_SPLIT_MESSAGE:I = 0x136

.field private static final MENU_SPLIT_THREAD:I = 0x137

.field private static final PREF_KEY_SHOW_DIALOG:Ljava/lang/String; = "pref_key_show_dialog"

.field private static final SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/Op09MmsComposeExt"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMessageGroupId:J

.field private mNeedConfirmMmsToSms:Z

.field private mPluginContext:Landroid/content/Context;

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/mediatek/mms/ext/MmsComposeImpl;-><init>(Landroid/content/Context;)V

    .line 106
    iput-wide v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mMessageGroupId:J

    .line 107
    iput-wide v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mThreadId:J

    .line 108
    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mContext:Landroid/content/Context;

    .line 109
    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mNeedConfirmMmsToSms:Z

    .line 116
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mPluginContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mMessageGroupId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->closeActivity(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private closeActivity(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 422
    const-wide/16 v4, 0x1

    cmp-long v0, p2, v4

    if-gez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 426
    .local v1, conUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    .local v6, conCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 429
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 430
    .local v7, msgCount:I
    const-string v0, "Mms/Op09MmsComposeExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeActivity, msgCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-ge v7, v8, :cond_2

    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/mediatek/mms/op09/OP09MmsComposeExt$4;

    invoke-direct {v2, p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$4;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v7           #msgCount:I
    :cond_2
    if-eqz v6, :cond_0

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private splitThreadMassingTextMessage(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 449
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 450
    const-string v0, "Mms/Op09MmsComposeExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitThreadMassingTextMessage failed: threadId <= 0; threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 453
    :cond_0
    if-nez p1, :cond_1

    .line 454
    const-string v0, "Mms/Op09MmsComposeExt"

    const-string v1, "splitThreadMassingTextMessage failed: context == null;"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$5;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public addAttachmentViewSendButton(Landroid/widget/LinearLayout;)Z
    .locals 6
    .parameter "btnPanel"

    .prologue
    const/4 v5, -0x1

    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v3, 0x0

    .line 310
    :goto_0
    return v3

    .line 298
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 299
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 301
    .local v0, btnLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 302
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_1

    .line 303
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 308
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    const/4 v3, 0x1

    goto :goto_0

    .line 306
    :cond_1
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public addSendButtonLayout(Landroid/widget/LinearLayout;)Z
    .locals 7
    .parameter "btnPanel"

    .prologue
    const/4 v6, -0x1

    .line 276
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 277
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 279
    .local v0, btnLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 280
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 281
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 286
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const v4, 0x7f0b0029

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 288
    .local v3, tv:Landroid/widget/TextView;
    const-string v4, "tes2t"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    const/4 v4, 0x1

    return v4

    .line 284
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public addSplitMessageContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/app/Activity;JI)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"
    .parameter "activity"
    .parameter "messageGroupId"
    .parameter "messagesCount"

    .prologue
    const/4 v2, 0x0

    .line 489
    const-string v0, "Mms/Op09MmsComposeExt"

    const-string v1, "add Context enu"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iput-wide p5, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mMessageGroupId:J

    .line 491
    invoke-virtual {p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mContext:Landroid/content/Context;

    .line 492
    iput-object p4, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;

    .line 494
    const/16 v0, 0x136

    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$ContextMenuClickListener;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 496
    return-void
.end method

.method public addSplitThreadOptionMenu(Landroid/view/Menu;Landroid/app/Activity;J)V
    .locals 4
    .parameter "menu"
    .parameter "activity"
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    .line 499
    iput-wide p3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mThreadId:J

    .line 500
    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mContext:Landroid/content/Context;

    .line 501
    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mActivity:Landroid/app/Activity;

    .line 502
    const/16 v0, 0x137

    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 503
    return-void
.end method

.method public deleteMassTextMsg(JJ)Z
    .locals 3
    .parameter "msgId"
    .parameter "timeStamp"

    .prologue
    .line 137
    const-string v0, "Mms/Op09MmsComposeExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMassTextMag: msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeStamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/mms/ext/IMmsComposeHost;->deleteMassTextMsg(JJ)V

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableDRWarningDialog(Landroid/content/Context;ZI)V
    .locals 3
    .parameter "context"
    .parameter "isEnable"
    .parameter "simId"

    .prologue
    .line 555
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_key_show_dialog_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    return-void
.end method

.method public getConverationUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 2
    .parameter "uriSrc"
    .parameter "threadId"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms-sms/conversations_distinct/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 124
    new-instance v1, Lcom/mediatek/mms/op09/PhoneNumberUtils;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/op09/PhoneNumberUtils;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, pnu:Lcom/mediatek/mms/op09/PhoneNumberUtils;
    invoke-virtual {v1, p2}, Lcom/mediatek/mms/op09/PhoneNumberUtils;->getNumberLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, location:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getSendParameter(Landroid/os/Message;I)I
    .locals 0
    .parameter "msg"
    .parameter "sendSimId"

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .line 345
    iget p2, p1, Landroid/os/Message;->arg1:I

    .line 347
    .end local p2
    :cond_0
    return p2
.end method

.method public getSmsMessageAndSaveToSim([Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IJII)I
    .locals 12
    .parameter "numbers"
    .parameter "scAddress"
    .parameter
    .parameter "smsStatus"
    .parameter "timeStamp"
    .parameter "slotId"
    .parameter "srcResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;IJII)I"
        }
    .end annotation

    .prologue
    .line 584
    .local p3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Mms/Op09MmsComposeExt"

    const-string v3, "save sms message to sim"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 598
    .end local p8
    :cond_0
    :goto_0
    return p8

    .line 588
    .restart local p8
    :cond_1
    const/4 v11, -0x1

    .line 590
    .local v11, result:I
    move-object v8, p1

    .local v8, arr$:[Ljava/lang/String;
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v2, v8, v9

    .line 591
    .local v2, number:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/telephony/SmsManagerEx;->getDefault()Lcom/mediatek/telephony/SmsManagerEx;

    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_3

    const/4 v7, 0x0

    :goto_2
    move-object v1, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-static/range {v1 .. v7}, Lcom/mediatek/telephony/SmsManagerEx;->copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I

    move-result v11

    .line 593
    if-eqz v11, :cond_2

    const/4 v1, 0x7

    if-ne v11, v1, :cond_4

    .line 594
    :cond_2
    const-string v1, "Mms/Op09MmsComposeExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save sms message to sim successed: number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 p8, v11

    .line 595
    goto :goto_0

    :cond_3
    move/from16 v7, p7

    .line 591
    goto :goto_2

    .line 590
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public hideCTButtonPanel()Z
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsComposeHost;->hideCTButtonPanel()Z

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public hideCtSendPanel()Z
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsComposeHost;->hideCtSendPanel()Z

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public initCTSendButton()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsComposeHost;->initCTSendButton()Z

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isDualSendButtonEnable()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method public isEnableLengthRequiredMmsToSms()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public isMassTextEnable()Z
    .locals 2

    .prologue
    .line 561
    const-string v0, "Mms/Op09MmsComposeExt"

    const-string v1, "isMassTextEnable: true"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiCompose()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public lockMassTextMsg(Landroid/content/Context;JJZ)Z
    .locals 9
    .parameter "context"
    .parameter "msgId"
    .parameter "timeStamp"
    .parameter "locked"

    .prologue
    .line 147
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .local v5, values:Landroid/content/ContentValues;
    const-string v1, "locked"

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;

    move-object v1, p0

    move-wide v2, p4

    move-object v4, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$1;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;JLandroid/content/Context;Landroid/content/ContentValues;J)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needConfirmMmsToSms()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mNeedConfirmMmsToSms:Z

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 508
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mThreadId:J

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->splitThreadMassingTextMessage(Landroid/content/Context;J)V

    .line 509
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
    .end packed-switch
.end method

.method public setCTSendButtonType()Z
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsComposeHost;->setCTSendButtonType()Z

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public setConfirmMmsToSms(Z)V
    .locals 0
    .parameter "needConfirm"

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mNeedConfirmMmsToSms:Z

    .line 575
    return-void
.end method

.method public showCTButtonPanel()Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsComposeHost;->showCTButtonPanel()Z

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public showDisableDRDialog(Landroid/app/Activity;I)V
    .locals 9
    .parameter "activity"
    .parameter "simId"

    .prologue
    .line 520
    const-string v0, "Mms/Op09MmsComposeExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDisableDRDialog() simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 522
    .local v5, context:Landroid/content/Context;
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 523
    .local v7, sp:Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_key_show_dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 529
    .local v8, theme:Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 532
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->mPluginContext:Landroid/content/Context;

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 533
    .local v3, contents:Landroid/view/View;
    const v0, 0x7f0b0044

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 535
    .local v4, checkbox:Landroid/widget/CheckBox;
    new-instance v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/app/Activity;Landroid/view/View;Landroid/widget/CheckBox;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showMassTextMsgDetail(Landroid/content/Context;J)Z
    .locals 28
    .parameter "context"
    .parameter "timeStamp"

    .prologue
    .line 165
    const-string v3, "Mms/Op09MmsComposeExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMassTextMsgDetail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_2

    .line 167
    :cond_0
    const/4 v3, 0x0

    .line 272
    :cond_1
    :goto_0
    return v3

    .line 169
    :cond_2
    const/4 v13, 0x0

    .line 170
    .local v13, datas:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v6, "ipmsg_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 172
    .local v11, cursor:Landroid/database/Cursor;
    const/16 v21, 0x0

    check-cast v21, [[J

    .line 174
    .local v21, msgIds:[[J
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 175
    const/4 v3, 0x0

    .line 268
    if-eqz v11, :cond_1

    .line 269
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :cond_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [[J

    move-object/from16 v21, v0

    .line 178
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    .line 180
    const/16 v18, 0x0

    .line 181
    .local v18, index:I
    const/4 v12, 0x1

    .line 182
    .local v12, dataIndex:I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, addressStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 190
    .local v23, status:Ljava/lang/String;
    aget-object v3, v21, v18

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    aput-wide v5, v3, v4

    .line 191
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 192
    .local v24, type:I
    const-string v3, "Mms/Op09MmsComposeExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sms Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    packed-switch v24, :pswitch_data_0

    .line 213
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v12

    .line 214
    add-int/lit8 v18, v18, 0x1

    .line 215
    add-int/lit8 v12, v12, 0x1

    .line 216
    goto :goto_1

    .line 195
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 196
    goto :goto_2

    .line 198
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 199
    goto :goto_2

    .line 201
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 202
    aget-object v3, v21, v18

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 203
    aget-object v3, v21, v18

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 265
    .end local v9           #addressStr:Ljava/lang/String;
    .end local v12           #dataIndex:I
    .end local v18           #index:I
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #type:I
    :catch_0
    move-exception v15

    .line 266
    .local v15, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v3, "Mms/Op09MmsComposeExt"

    const-string v4, "query mass text message\'s details failed."

    invoke-static {v3, v4, v15}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    if-eqz v11, :cond_4

    .line 269
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :cond_4
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 207
    .restart local v9       #addressStr:Ljava/lang/String;
    .restart local v12       #dataIndex:I
    .restart local v18       #index:I
    .restart local v23       #status:Ljava/lang/String;
    .restart local v24       #type:I
    :pswitch_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 208
    goto/16 :goto_2

    .line 218
    .end local v9           #addressStr:Ljava/lang/String;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #type:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 219
    .local v25, typeLabel:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, headStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, dateLabel:Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5, v6}, Lcom/mediatek/mms/op09/MessageUtils;->formatDateOrTimeStampStringWithSystemSetting(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 226
    :cond_6
    const/4 v3, 0x0

    aput-object v17, v13, v3

    .line 228
    move-object/from16 v19, v21

    .line 229
    .local v19, msgIDS:[[J
    new-instance v10, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$2;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;[[J)V

    .line 248
    .local v10, clickListner:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 249
    .local v22, sendButtonStr:Ljava/lang/String;
    const/16 v16, 0x0

    .line 250
    .local v16, hasFailed:Z
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_9

    .line 251
    :cond_7
    const/16 v16, 0x0

    .line 260
    :cond_8
    :goto_4
    if-eqz v16, :cond_b

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v3

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v3, v13, v10, v0, v1}, Lcom/mediatek/mms/ext/IMmsComposeHost;->showMassTextMsgDetails([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 268
    :goto_5
    if-eqz v11, :cond_4

    .line 269
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 253
    :cond_9
    const/16 v20, 0x0

    .local v20, msgIdIndex:I
    :goto_6
    :try_start_4
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_8

    .line 254
    aget-object v3, v21, v20

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_a

    .line 255
    const/16 v16, 0x1

    .line 256
    goto :goto_4

    .line 253
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 263
    .end local v20           #msgIdIndex:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v3, v13, v4, v0, v1}, Lcom/mediatek/mms/ext/IMmsComposeHost;->showMassTextMsgDetails([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 268
    .end local v10           #clickListner:Landroid/content/DialogInterface$OnClickListener;
    .end local v12           #dataIndex:I
    .end local v14           #dateLabel:Ljava/lang/String;
    .end local v16           #hasFailed:Z
    .end local v17           #headStr:Ljava/lang/String;
    .end local v18           #index:I
    .end local v19           #msgIDS:[[J
    .end local v22           #sendButtonStr:Ljava/lang/String;
    .end local v25           #typeLabel:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_c

    .line 269
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public splitSingleMessage(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "messageGroupId"

    .prologue
    .line 376
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 377
    const-string v0, "Mms/Op09MmsComposeExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splitSingleMessage failed: messageGroupId >= 0; messageGroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 380
    :cond_0
    if-nez p1, :cond_1

    .line 381
    const-string v0, "Mms/Op09MmsComposeExt"

    const-string v1, "splitSingleMessage failed: context == null;"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$3;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/content/Context;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateCTSendButtonStatue(ZZ)Z
    .locals 1
    .parameter "enable"
    .parameter "isMms"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mms/ext/IMmsComposeHost;->updateCTSendButtonStatue(ZZ)Z

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public updateCTTextCounter(II)Z
    .locals 1
    .parameter "remainingInCurrentMessage"
    .parameter "msgCount"

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->getHost()Lcom/mediatek/mms/ext/IMmsComposeHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mms/ext/IMmsComposeHost;->updateCTTextCounter(II)Z

    .line 340
    const/4 v0, 0x1

    return v0
.end method
