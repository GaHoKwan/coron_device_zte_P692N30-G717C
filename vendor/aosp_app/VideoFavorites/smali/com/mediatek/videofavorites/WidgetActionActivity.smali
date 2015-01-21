.class public Lcom/mediatek/videofavorites/WidgetActionActivity;
.super Landroid/app/Activity;
.source "WidgetActionActivity.java"

# interfaces
.implements Lcom/mediatek/videofavorites/AlertDialogFragment$OnClickListener;
.implements Lcom/mediatek/videofavorites/ProgressDialogFragment$DialogActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH_RECORDER:Ljava/lang/String; = "action_launch_recorder"

.field public static final CODE_PICK_BOTH:I = 0x0

.field public static final CODE_PICK_CONTACT:I = 0x1

.field public static final CODE_PICK_VIDEO:I = 0x2

.field public static final CODE_RECORD_VIDEO:I = 0x3

.field public static final CODE_VIEW_CONTACT:I = 0x4

.field private static final CONTACT_PROJECTION:[Ljava/lang/String; = null

.field private static final ENCODE_HEIGHT:I = 0xf0

.field private static final ENCODE_WIDTH:I = 0x140

.field public static final KEY_ACTION_PICK_TYPE:Ljava/lang/String; = "action_pick_type"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field private static final KEY_ENABLE_TRANSCODE:Ljava/lang/String; = "key_enable_transcode"

.field private static final KEY_LAUNCH_ACTIVITY:Ljava/lang/String; = "launched"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_VIDEO_URI:Ljava/lang/String; = "video_uri"

.field private static final MSG_START_TRANSCODE:I = 0x6

.field private static final MSG_SUICIDE:I = 0x2

.field private static final MSG_TIMER_TEST:I = 0x3

.field private static final MSG_TRANSCODE_INVALID_SUICIDE:I = 0x5

.field private static final MSG_TRANSCODE_UNSUPPORTED_SUICIDE:I = 0x4

.field private static final MSG_UPDATE_PROGRESS:I = 0x1

.field private static final PROJ_COLS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "WidgetAction"

.field private static final UPDATE_INTERVAL:I = 0xc8

.field private static final VIDEO_HEIGHT:I = 0x1e0

.field private static final VIDEO_WIDTH:I = 0x280

.field private static sRecorderQuality:I


# instance fields
.field private mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

.field private mContactUri:Landroid/net/Uri;

.field private mEnableTimerTest:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIndexId:I

.field private mIsTransCoding:Z

.field private mLaunchActivity:Z

.field private mLeaveForActivity:Z

.field private mPaused:Z

.field private mPickType:I

.field mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

.field private mStartTime:J

.field private mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

.field private mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/videofavorites/WidgetActionActivity;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 1014
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mediatek/videofavorites/WidgetActionActivity;->PROJ_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mStartTime:J

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPaused:Z

    .line 154
    new-instance v0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/videofavorites/WidgetActionActivity$1;-><init>(Lcom/mediatek/videofavorites/WidgetActionActivity;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    .line 667
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/videofavorites/WidgetActionActivity;)Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/videofavorites/WidgetActionActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/mediatek/videofavorites/WidgetActionActivity;->showToastAndSuicide(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/videofavorites/WidgetActionActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/mediatek/videofavorites/WidgetActionActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/mediatek/videofavorites/WidgetActionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/videofavorites/WidgetActionActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/videofavorites/WidgetActionActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->insertOrUpdateVideoUriToProvider(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/videofavorites/WidgetActionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V

    return-void
.end method

.method private cancelTranscode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 560
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    const/4 v0, 0x1

    .line 563
    .local v0, isCancelled:Z
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    invoke-virtual {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->forceCancel()Z

    move-result v0

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 569
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    .line 571
    if-eqz v0, :cond_1

    .line 572
    const v1, 0x7f050007

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 574
    :cond_1
    return-void
.end method

.method private fireContactSelectActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, i:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    .line 212
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void
.end method

.method private fireVideoSelectActivity()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    .line 220
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 221
    return-void
.end method

.method private getContactName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "contactUri"

    .prologue
    const/4 v3, 0x0

    .line 539
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/videofavorites/WidgetActionActivity;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 540
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 541
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 542
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 544
    return-object v7
.end method

.method private getFavoriteCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1016
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/videofavorites/WidgetActionActivity;->PROJ_COLS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1018
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1019
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1020
    .local v6, cnt:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1021
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavoriteCount():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return v6
.end method

.method private getRecorderQuality()I
    .locals 7

    .prologue
    const/16 v6, 0x280

    const/16 v5, 0x1e0

    const/4 v1, 0x4

    const/16 v4, 0xa

    const/16 v3, 0x9

    .line 397
    sget v2, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    if-eqz v2, :cond_0

    .line 398
    sget v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    .line 423
    :goto_0
    return v1

    .line 403
    :cond_0
    invoke-static {v4}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 404
    invoke-static {v4}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 405
    .local v0, profile:Landroid/media/CamcorderProfile;
    invoke-direct {p0, v0, v6, v5}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isVideoResolutionMatch(Landroid/media/CamcorderProfile;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    sput v4, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    .line 407
    sget v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    goto :goto_0

    .line 411
    .end local v0           #profile:Landroid/media/CamcorderProfile;
    :cond_1
    invoke-static {v3}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    invoke-static {v3}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 413
    .restart local v0       #profile:Landroid/media/CamcorderProfile;
    invoke-direct {p0, v0, v6, v5}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isVideoResolutionMatch(Landroid/media/CamcorderProfile;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    sput v3, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    .line 415
    sget v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    goto :goto_0

    .line 421
    .end local v0           #profile:Landroid/media/CamcorderProfile;
    :cond_2
    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    sput v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    .line 423
    sget v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->sRecorderQuality:I

    goto :goto_0

    .line 421
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private initActionPick()V
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 235
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 236
    const-string v1, "WidgetAction"

    const-string v2, "initActionPick, extra is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->getFavoriteCount()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v1, "action_pick_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    .line 245
    const-string v1, "WidgetAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initActionPick, picktype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isPickContactOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    .line 257
    :cond_2
    :goto_1
    const-string v1, "_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    goto :goto_0

    .line 249
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isPickVideoOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v2, "contact_uri"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 252
    const-string v1, "WidgetAction"

    const-string v2, "storage is low"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->showLowStorageToast()V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private initActionView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 298
    .local v3, uri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isValidUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 300
    .local v1, i:Landroid/content/Intent;
    iput-boolean v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    .line 301
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 319
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 306
    const-string v4, "WidgetAction"

    const-string v5, "This should not happen. check the service why we don\'t have extra passed in intent"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 308
    :cond_1
    const-string v4, "_id"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    .line 309
    const-string v4, "WidgetAction"

    const-string v5, "contact is gone, clear it"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s/%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iget v7, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 312
    .local v2, target:Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v5, "contact_uri"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v5, "name"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v2, v5, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V

    goto :goto_1
.end method

.method private initDelete()V
    .locals 5

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 262
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, extras:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mUri:Landroid/net/Uri;

    .line 266
    if-nez v0, :cond_0

    .line 267
    const-string v3, "WidgetAction"

    const-string v4, "extras should not be null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string v3, "com.mediatek.videofavorites.NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, name:Ljava/lang/String;
    const v3, 0x7f050003

    const v4, 0x7f050004

    invoke-static {v3, v4, v2}, Lcom/mediatek/videofavorites/AlertDialogFragment;->newInstance(IILjava/lang/String;)Lcom/mediatek/videofavorites/AlertDialogFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    goto :goto_0
.end method

.method private insertOrUpdateVideoUriToProvider(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 548
    const-string v1, "WidgetAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertOrUpdateVideoUriToPrivider(), indexId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v2, "video_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 551
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 557
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 555
    .local v0, target:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPickContactOnly()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 224
    const-string v3, "WidgetAction"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPickContactOnly()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    :cond_1
    move v1, v2

    .line 225
    goto :goto_1
.end method

.method private isPickVideoOnly()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    const-string v3, "WidgetAction"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPickVideoOnly()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v5, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 229
    goto :goto_0

    :cond_1
    move v1, v2

    .line 230
    goto :goto_1
.end method

.method private isStorageAvailable()Z
    .locals 5

    .prologue
    .line 324
    sget-object v2, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH_BASE:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/mediatek/videofavorites/Storage;->getAvailableSpace(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 325
    .local v0, space:J
    const-string v2, "WidgetAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStorageSpace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-wide/32 v2, 0x80000

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTransCodeEnable()Z
    .locals 3

    .prologue
    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, s:Landroid/content/SharedPreferences;
    const-string v1, "key_enable_transcode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isValidUri(Landroid/net/Uri;)Z
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/videofavorites/WidgetActionActivity;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 281
    .local v7, ret:Z
    if-nez v6, :cond_1

    .line 282
    const/4 v7, 0x0

    .line 290
    :goto_0
    if-nez v7, :cond_0

    .line 291
    const-string v0, "WidgetAction"

    const-string v1, "contact is gone"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return v7

    .line 284
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 285
    const/4 v7, 0x0

    .line 287
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private isVideoResolutionMatch(Landroid/media/CamcorderProfile;II)Z
    .locals 1
    .parameter "profile"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 391
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchVideoRecorder()V
    .locals 3

    .prologue
    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->getRecorderQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 432
    return-void
.end method

.method private loadFromBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "b"
    .parameter "v"
    .parameter "key"

    .prologue
    .line 982
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 983
    :cond_0
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load bundle: b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_1
    :goto_0
    return-void

    .line 987
    :cond_2
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyDataUpdate()V
    .locals 0

    .prologue
    .line 932
    invoke-static {p0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendDataUpdateBroadcast(Landroid/content/Context;)V

    .line 933
    return-void
.end method

.method private saveToBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .parameter "b"
    .parameter "v"
    .parameter "key"

    .prologue
    .line 970
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 971
    :cond_0
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save bundle b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_1
    :goto_0
    return-void

    .line 975
    :cond_2
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving key: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLowStorageToast()V
    .locals 2

    .prologue
    .line 583
    const v0, 0x7f05000e

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 585
    return-void
.end method

.method private showToastAndSuicide(II)V
    .locals 4
    .parameter "message"
    .parameter "delay"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    .line 146
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    return-void
.end method

.method private updateContactToProvider()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 373
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v2, "video_uri"

    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIndexId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 377
    .local v0, target:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    return-void
.end method


# virtual methods
.method public getRealPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 642
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 643
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 644
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 645
    const-string v0, "WidgetAction"

    const-string v1, "getRealPathFromUri(), uri not found in content resolver"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    return-object v3

    .line 651
    :cond_0
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 652
    .local v7, colIdx:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 653
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 658
    .local v9, realPath:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #colIdx:I
    :goto_1
    move-object v3, v9

    .line 660
    goto :goto_0

    .line 654
    .end local v9           #realPath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 655
    .local v8, ie:Ljava/lang/IllegalArgumentException;
    const/4 v9, 0x0

    .line 656
    .restart local v9       #realPath:Ljava/lang/String;
    :try_start_1
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealPathFromUri(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8           #ie:Ljava/lang/IllegalArgumentException;
    .end local v9           #realPath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v9, 0x7f050007

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 588
    const-string v3, "WidgetAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iput-boolean v7, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    .line 590
    const/4 v3, -0x1

    if-ne v3, p2, :cond_7

    .line 594
    iput-boolean v7, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    .line 596
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 597
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 598
    const-string v3, "WidgetAction"

    const-string v4, "data uri is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 600
    if-ne v8, p1, :cond_0

    .line 601
    invoke-static {p0, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 639
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 608
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    if-ne v6, p1, :cond_3

    .line 609
    const-string v3, "WidgetAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact selected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v4, "contact_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v4, "name"

    invoke-direct {p0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->getContactName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_3
    const/4 v3, 0x2

    if-ne v3, p1, :cond_5

    .line 614
    const-string v3, "WidgetAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video selected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 616
    const-string v3, "WidgetAction"

    const-string v4, "storage is low"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->showLowStorageToast()V

    .line 618
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 620
    :cond_4
    iput-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    goto :goto_0

    .line 621
    :cond_5
    if-ne v8, p1, :cond_1

    .line 622
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->getRealPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, filePath:Ljava/lang/String;
    if-nez v0, :cond_6

    .line 625
    invoke-static {p0, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 633
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 628
    :cond_6
    const-string v3, "video_uri"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 631
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V

    goto :goto_1

    .line 636
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_7
    iget-object v3, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 637
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCancel()V
    .locals 4

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->cancelTranscode()V

    .line 579
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    return-void
.end method

.method public onClickNegativeButton()V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 947
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 948
    return-void
.end method

.method public onClickPositiveButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 942
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V

    .line 943
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 944
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1027
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1028
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    .line 334
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 336
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x7f07

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 337
    .local v2, enableRotation:Z
    const-string v5, "WidgetAction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->initActionPick()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-string v5, "android.intent.action.DELETE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 346
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->initDelete()V

    goto :goto_0

    .line 347
    :cond_2
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 348
    iput v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    .line 349
    iput-boolean v6, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    goto :goto_0

    .line 350
    :cond_3
    const-string v5, "action_launch_recorder"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 351
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->getFavoriteCount()I

    move-result v5

    if-lt v5, v9, :cond_4

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 354
    :cond_4
    const/4 v5, 0x3

    iput v5, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    .line 355
    iput-boolean v6, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    goto :goto_0

    .line 357
    :cond_5
    const-string v5, "SWITCH_TRANSCODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 360
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 361
    .local v4, s:Landroid/content/SharedPreferences;
    const-string v5, "key_enable_transcode"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 362
    .local v3, isTranscode:Z
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 363
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "key_enable_transcode"

    if-nez v3, :cond_6

    move v5, v6

    :goto_1
    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trnascode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_7

    const-string v5, "disabled"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 366
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 363
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 364
    :cond_7
    const-string v5, "enabled"

    goto :goto_2

    .line 367
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #isTranscode:Z
    .end local v4           #s:Landroid/content/SharedPreferences;
    :cond_8
    const-string v5, "TIMER_TEST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    iput-boolean v6, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mEnableTimerTest:Z

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 519
    const-string v0, "WidgetAction"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mEnableTimerTest:Z

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPaused:Z

    .line 522
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 527
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 530
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 531
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1006
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1007
    const-string v0, "WidgetAction"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v0, "launched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    .line 1009
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->loadFromBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_uri"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->loadFromBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "video_uri"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->loadFromBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 439
    const-string v0, "WidgetAction"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    .line 442
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    if-eqz v0, :cond_3

    .line 448
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    .line 449
    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v3, :cond_2

    .line 450
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->launchVideoRecorder()V

    goto :goto_0

    .line 451
    :cond_2
    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v4, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->initActionView()V

    goto :goto_0

    .line 455
    :cond_3
    iget v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPickType:I

    if-ne v0, v4, :cond_4

    .line 456
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 461
    :cond_4
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    if-eqz v0, :cond_5

    .line 462
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "alertDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_5
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIsTransCoding:Z

    if-eqz v0, :cond_6

    .line 468
    const-string v0, "WidgetAction"

    const-string v1, "transcoding, skipping rest onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mEnableTimerTest:Z

    if-eqz v0, :cond_7

    .line 474
    iput-boolean v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mPaused:Z

    .line 475
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    const-string v0, "WidgetAction"

    const-string v1, "sendEmptyMessageDelayed(), delay:200"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mStartTime:J

    .line 478
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 482
    :cond_7
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mValues.containsKey(KEY_CONTACT_URI): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v3, "contact_uri"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 484
    const-string v0, "WidgetAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_8

    .line 487
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->fireVideoSelectActivity()V

    goto/16 :goto_0

    .line 488
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isTransCodeEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 489
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isPickContactOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 490
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->updateContactToProvider()V

    .line 493
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V

    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 496
    :cond_9
    const/high16 v0, 0x7f05

    const v1, 0x7f050005

    invoke-static {v0, v1}, Lcom/mediatek/videofavorites/ProgressDialogFragment;->newInstance(II)Lcom/mediatek/videofavorites/ProgressDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    .line 498
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "progressDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mIsTransCoding:Z

    .line 500
    new-instance v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;-><init>(Lcom/mediatek/videofavorites/WidgetActionActivity;Lcom/mediatek/videofavorites/WidgetActionActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    .line 501
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 504
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->isPickContactOnly()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 505
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->updateContactToProvider()V

    .line 509
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 507
    :cond_b
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->insertOrUpdateVideoUriToProvider(Landroid/net/Uri;)V

    goto :goto_1

    .line 513
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->fireContactSelectActivity()V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 996
    const-string v0, "WidgetAction"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v0, "launched"

    iget-boolean v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLaunchActivity:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 998
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->saveToBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_uri"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->saveToBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "video_uri"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->saveToBundle(Landroid/os/Bundle;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1001
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1002
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mLeaveForActivity:Z

    if-eqz v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mAlertDlg:Lcom/mediatek/videofavorites/AlertDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    if-eqz v0, :cond_2

    .line 963
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->cancelTranscode()V

    .line 966
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
