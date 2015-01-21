.class public Lcom/mediatek/contacts/activities/SpeedDialManageActivity;
.super Landroid/app/ListActivity;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;,
        Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;,
        Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;,
        Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ADAPTER_TO:[I = null

.field static final BIND_DISPLAY_NAME_INDEX:I = 0x1

.field static final BIND_ID_INDEX:I = 0x0

.field static final BIND_INDICATE_PHONE_SIM_INDEX:I = 0x5

.field static final BIND_LABEL_INDEX:I = 0x2

.field static final BIND_NUMBER_INDEX:I = 0x3

.field static final BIND_PHOTO_ID_INDEX:I = 0x4

.field static final BIND_PROJECTION:[Ljava/lang/String; = null

.field private static final LIST_CAPACITY:I = 0x9

.field private static final MENU_REMOVE:I = 0x1

.field public static final PREF_NAME:Ljava/lang/String; = "speed_dial"

.field static final QUERY_CUSTOM_LABEL_INDEX:I = 0x6

.field static final QUERY_DISPLAY_NAME_INDEX:I = 0x1

.field static final QUERY_ID_INDEX:I = 0x0

.field static final QUERY_INDICATE_PHONE_SIM_INDEX:I = 0x4

.field static final QUERY_LABEL_INDEX:I = 0x2

.field static final QUERY_NUMBER_INDEX:I = 0x3

.field static final QUERY_PHOTO_ID_INDEX:I = 0x5

.field static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TOKEN:I = 0x2f

.field private static final REQUEST_CODE_PICK_CONTACT:I = 0x1

.field static final SPEED_DIAL_MAX:I = 0x9

.field static final SPEED_DIAL_MIN:I = 0x2

.field private static final SPEED_DIAL_NUMBER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SpeedDialManageActivity"

.field private static final VIEW_EDGE:I = 0x1e

.field private static final WAIT_CURSOR_DELAY_TIME:J = 0x1f4L

.field private static final WAIT_CURSOR_START:I = 0x3e8

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

.field private static sIsQueryContact:Z


# instance fields
.field private mActivityDestroyed:Z

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mAddPosition:I

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasGotPref:Z

.field private mHasNumberByKey:Z

.field private mInputDialog:Landroid/app/Dialog;

.field private mIsWaitingActivityResult:Z

.field private mListView:Landroid/widget/ListView;

.field private mMatrixCursor:Landroid/database/MatrixCursor;

.field private mNeedRemovePosition:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mPrefMarkState:[I

.field private mPrefNumContactState:[Z

.field private mPrefNumState:[Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;

.field private mQueryTimes:I

.field private mRemoveConfirmDialog:Landroid/app/AlertDialog;

.field private mRemovePosition:I

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mSimReceiver:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 69
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    .line 123
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const-string v1, "label"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 153
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->BIND_PROJECTION:[Ljava/lang/String;

    .line 182
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->ADAPTER_TO:[I

    .line 238
    sput-boolean v3, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    return-void

    .line 182
    :array_0
    .array-data 0x4
        0xc1t 0x1t 0x7t 0x7ft
        0xc6t 0x1t 0x7t 0x7ft
        0xc3t 0x1t 0x7t 0x7ft
        0xc5t 0x1t 0x7t 0x7ft
        0xc2t 0x1t 0x7t 0x7ft
        0xc4t 0x1t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 100
    iput v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 105
    iput v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    .line 112
    iput-object v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    .line 114
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 116
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 190
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    .line 203
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    .line 210
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    .line 232
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 236
    iput-object v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1181
    iput v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSlot:I

    .line 1278
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$5;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    .line 1411
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mActivityDestroyed:Z

    return-void

    .line 203
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 210
    nop

    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-boolean p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->updatePreferences()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->showToastIfNecessary()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->showProgressIndication()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    return v0
.end method

.method static synthetic access$504(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->populateMatrixCursorRow(ILandroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/database/MatrixCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->goOnQuery()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissProgressIndication()V
    .locals 4

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1333
    :cond_0
    return-void

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismiss exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findKeyByNumber(Ljava/lang/String;)I
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, -0x1

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 380
    const-string v2, "vnd.android.cursor.item/phone_v2"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {p0, v2, p1, v3, v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 385
    goto :goto_0
.end method

.method private getPrefStatus()V
    .locals 5

    .prologue
    .line 729
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "getPrefStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v1, "speed_dial"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    .line 732
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasGotPref:Z

    .line 733
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 735
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->offset(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_0
    return-void
.end method

.method private goOnQuery()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 778
    iget v8, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    .local v8, end:I
    :goto_0
    const/16 v0, 0xa

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "log for empry block!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    iget v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v8, -0x1

    invoke-static {p0, v0, v1, v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V

    .line 783
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), mQueryTimes = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", end = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/16 v0, 0x9

    if-le v8, v0, :cond_1

    .line 785
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "goOnQuery(), queryComplete in goOnQuery()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 787
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    .line 788
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    .line 789
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->updatePreferences()V

    .line 790
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->showToastIfNecessary()V

    .line 791
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 808
    :goto_1
    return-void

    .line 795
    :cond_1
    new-instance v2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;

    invoke-direct {v2, p0, v5}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;)V

    .line 796
    .local v2, info:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;
    iput v8, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    .line 797
    iget v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    iput v0, v2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;->mQueryIndex:I

    .line 799
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), startQuery at mQueryTimes = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), number = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 803
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "SpeedDialManageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goOnQuery(), uri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryHandler:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;

    const/16 v1, 0x2f

    sget-object v4, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->QUERY_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initMatrixCursor()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 765
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->BIND_PROJECTION:[Ljava/lang/String;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 766
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, ""

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 769
    iput v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I

    .line 770
    return-void
.end method

.method private isSimReady(IZ)Z
    .locals 4
    .parameter "simId"
    .parameter "checkSimService"

    .prologue
    .line 1101
    int-to-long v1, p1

    invoke-static {p0, v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 1102
    .local v0, slotId:I
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimReady(), simId=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    if-gez v0, :cond_0

    .line 1104
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "[isSimReady]the sim is not insert, so sim not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v1, 0x0

    .line 1115
    :goto_0
    return v1

    .line 1112
    :cond_0
    if-eqz p2, :cond_1

    .line 1113
    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateIdle(I)Z

    move-result v1

    goto :goto_0

    .line 1115
    :cond_1
    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimReady(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static offset(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 747
    add-int/lit8 v0, p0, 0x64

    return v0
.end method

.method static populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V
    .locals 5
    .parameter "context"
    .parameter "matrixCursor"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 870
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 871
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "-1"

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    :cond_0
    return-void
.end method

.method private populateMatrixCursorRow(ILandroid/database/Cursor;)V
    .locals 11
    .parameter "row"
    .parameter "cursor"

    .prologue
    .line 885
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 886
    const/4 v7, 0x1

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 887
    .local v1, name:Ljava/lang/String;
    const/4 v7, 0x2

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 888
    .local v6, type:I
    const-string v0, ""

    .line 889
    .local v0, label:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 890
    const/4 v7, 0x6

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 894
    :goto_0
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, number:Ljava/lang/String;
    const/4 v7, 0x5

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 896
    .local v3, photoId:J
    const/4 v5, -0x1

    .line 897
    .local v5, simId:I
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 898
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 900
    :cond_0
    const-string v7, "SpeedDialManageActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "populateMatrixCursorRow(), name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", label = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " photoId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "simId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    if-lez v5, :cond_1

    .line 904
    invoke-virtual {p0, v5}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->getSimType(I)J

    move-result-wide v3

    .line 907
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 908
    iget-object v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    add-int/lit8 v8, p1, 0x1

    invoke-static {p0, v7, p1, v8}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V

    .line 909
    iget-object v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p1

    .line 910
    iget-object v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget-object v8, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->offset(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v7, p1

    .line 918
    :goto_1
    return-void

    .line 892
    .end local v2           #number:Ljava/lang/String;
    .end local v3           #photoId:J
    .end local v5           #simId:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0           #label:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #label:Ljava/lang/String;
    goto/16 :goto_0

    .line 913
    .restart local v2       #number:Ljava/lang/String;
    .restart local v3       #photoId:J
    .restart local v5       #simId:I
    :cond_3
    iget-object v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    add-int/lit8 v10, p1, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static final shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "context"
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "mimetype2"
    .parameter "data2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1121
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1123
    if-ne p2, p4, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return v3

    .line 1126
    :cond_1
    if-eqz p2, :cond_2

    if-nez p4, :cond_3

    :cond_2
    move v3, v4

    .line 1127
    goto :goto_0

    .line 1137
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, dataParts1:[Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, dataParts2:[Ljava/lang/String;
    array-length v5, v0

    array-length v6, v1

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 1140
    goto :goto_0

    .line 1142
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 1143
    aget-object v5, v0, v2

    aget-object v6, v1, v2

    invoke-static {p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 1144
    goto :goto_0

    .line 1142
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1150
    .end local v0           #dataParts1:[Ljava/lang/String;
    .end local v1           #dataParts2:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_6
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_0

    .line 1153
    :cond_7
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_0
.end method

.method private showProgressIndication()V
    .locals 3

    .prologue
    .line 1303
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "loading contacts... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mActivityDestroyed:Z

    if-eqz v0, :cond_0

    .line 1308
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "showProgressIndication(),the master Activity is destroyed!"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    .line 1314
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1315
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c029d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1316
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1317
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1318
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showToastIfNecessary()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 950
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(),  mAddPosition= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(),  mHasNumberByKey= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(),  mIsWaitingActivityResult= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-boolean v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    if-eqz v5, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    iget-boolean v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    const-string v8, "ExtensionForOP01"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/contacts/ext/SpeedDialExtension;->setAddPosition(IZLjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 966
    iget v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    if-eq v5, v9, :cond_0

    .line 969
    iget-boolean v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    if-eqz v5, :cond_2

    .line 970
    iput v9, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 971
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v9}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 972
    const v5, 0x7f0c0031

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 975
    :cond_2
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showToastIfNecessary(), mMatrixCursor\'s present position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v7}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMatrixCursor\'s count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPosition + 1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    iget v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v5, v6}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 985
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v13}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 986
    .local v2, isNumberEmpty:Z
    if-eqz v2, :cond_3

    .line 987
    iput v9, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 988
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v9}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 989
    const-string v5, "SpeedDialManageActivity"

    const-string v6, "showToastIfNecessary(), number is empty, don\'t show toast."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 994
    :cond_3
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v10}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 995
    .local v4, name:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v11}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 996
    .local v3, label:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v1, v5, 0x1

    .line 999
    .local v1, index:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1000
    const v5, 0x7f0c0022

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    .local v0, fullInfo:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1006
    iput v9, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 1007
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v9}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 1002
    .end local v0           #fullInfo:Ljava/lang/CharSequence;
    :cond_4
    const v5, 0x7f0c0021

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v4, v6, v12

    aput-object v3, v6, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fullInfo:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method private startQuery()V
    .locals 4

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->initMatrixCursor()V

    .line 752
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "startQuery(), query init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    .line 754
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 756
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->goOnQuery()V

    .line 757
    return-void
.end method

.method private updatePreferences()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 930
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 931
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_3

    .line 933
    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v2, v5, v1

    .line 934
    .local v2, simId:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-direct {p0, v2, v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->isSimReady(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 935
    .local v3, simReady:Z
    :goto_1
    const-string v5, "SpeedDialManageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferences(), isSimReady("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    if-eqz v3, :cond_1

    .line 937
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 938
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->offset(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v6, v6, v1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 931
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #simReady:Z
    :cond_2
    move v3, v4

    .line 934
    goto :goto_1

    .line 941
    .end local v2           #simId:I
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 942
    return-void
.end method


# virtual methods
.method actuallyRemove()V
    .locals 4

    .prologue
    .line 699
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v2, v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    .line 700
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 701
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 702
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    iget v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->offset(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 706
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->startQuery()V

    .line 707
    return-void
.end method

.method clearPrefStateIfNecessary(I)V
    .locals 5
    .parameter "queryTimes"

    .prologue
    const/4 v4, -0x1

    .line 1084
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v0, v1, p1

    .line 1085
    .local v0, simId:I
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPrefStateIfNecessary(), simId=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; queryTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    if-eq v0, v4, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->isSimReady(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    :cond_0
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "clearPrefStateIfNecessary(), isSImReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aput v4, v1, p1

    .line 1090
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 1092
    :cond_1
    return-void
.end method

.method confirmRemovePosition(I)V
    .locals 11
    .parameter "position"

    .prologue
    const v10, 0x7f0c0023

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 609
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmRemovePosition(), position= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-ltz p1, :cond_0

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 612
    :cond_0
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "position out of bound, do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP01"

    invoke-virtual {v4, v5}, Lcom/android/contacts/ext/SpeedDialExtension;->needCheckContacts(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z

    add-int/lit8 v5, p1, 0x1

    aget-boolean v4, v4, v5

    if-nez v4, :cond_2

    .line 618
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[confirmRemovePosition] the contact at speed dial "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_2
    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 623
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_3

    .line 624
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "[confirmRemovePosition] the cursor for the position is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, name:Ljava/lang/String;
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmRemovePosition(), name= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 639
    const v4, 0x7f0c0025

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v9

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, message:Ljava/lang/String;
    :goto_1
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmRemovePosition(), message= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iput p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    .line 646
    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_4

    .line 647
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$4;

    invoke-direct {v5, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$4;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$3;

    invoke-direct {v5, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$3;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$2;

    invoke-direct {v6, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$2;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    .line 676
    :cond_4
    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 641
    .end local v2           #message:Ljava/lang/String;
    :cond_5
    const v4, 0x7f0c0024

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v9

    aput-object v1, v5, v7

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method public getSimType(I)J
    .locals 7
    .parameter "indicate"

    .prologue
    .line 1185
    const-wide/16 v1, 0x0

    .line 1186
    .local v1, photoId:J
    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v4, :cond_0

    .line 1187
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 1189
    :cond_0
    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v4, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSlot:I

    .line 1190
    const/4 v0, -0x1

    .line 1191
    .local v0, i:I
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] mSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    iget v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSlot:I

    invoke-virtual {v4, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 1193
    .local v3, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_1

    .line 1194
    iget v0, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 1196
    :cond_1
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    packed-switch v0, :pswitch_data_0

    .line 1211
    const-string v4, "SpeedDialManageActivity"

    const-string v5, "no match color"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-wide/16 v1, -0x1

    .line 1216
    :goto_0
    const-string v4, "SpeedDialManageActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getSimType] photoId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-wide v1

    .line 1199
    :pswitch_0
    const-wide/16 v1, -0xa

    .line 1200
    goto :goto_0

    .line 1202
    :pswitch_1
    const-wide/16 v1, -0xb

    .line 1203
    goto :goto_0

    .line 1205
    :pswitch_2
    const-wide/16 v1, -0xc

    .line 1206
    goto :goto_0

    .line 1208
    :pswitch_3
    const-wide/16 v1, -0xd

    .line 1209
    goto :goto_0

    .line 1197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 298
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onActivityResult]mAddPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 300
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    if-nez p3, :cond_2

    .line 301
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, dataIndex:Ljava/lang/String;
    const-string v9, ""

    .line 306
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data._ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 309
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 324
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 325
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(), uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "indicate_phone_or_sim_contact"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 329
    .local v11, simIdCursor:Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 330
    .local v10, simId:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 331
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 332
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 335
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 351
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->getPrefStatus()V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasGotPref:Z

    .line 353
    invoke-direct {p0, v9}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->findKeyByNumber(Ljava/lang/String;)I

    move-result v12

    .line 354
    .local v12, tempKey:I
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(),  after findKeyByNumber(), tempKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x2

    if-le v0, v12, :cond_7

    .line 356
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v2, v2, 0x1

    aput-object v9, v0, v2

    .line 357
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    iget v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v2, v2, 0x1

    aput v10, v0, v2

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 367
    :goto_1
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 369
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrefNumState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPrefMarkState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefMarkState:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 313
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #i:I
    .end local v10           #simId:I
    .end local v11           #simIdCursor:Landroid/database/Cursor;
    .end local v12           #tempKey:I
    :cond_4
    if-eqz v6, :cond_5

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    goto/16 :goto_0

    .line 340
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v10       #simId:I
    .restart local v11       #simIdCursor:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 341
    const-string v0, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult() number ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not found,return!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    .restart local v12       #tempKey:I
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1241
    if-ne p2, v4, :cond_0

    .line 1242
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const v3, 0x7f070091

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1243
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1244
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1265
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1248
    .restart local v0       #editText:Landroid/widget/EditText;
    .restart local v2       #number:Ljava/lang/String;
    :cond_1
    iput-boolean v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 1249
    invoke-direct {p0, v2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->findKeyByNumber(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_2

    .line 1251
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v4, v4, 0x1

    aput-object v2, v3, v4

    .line 1254
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1255
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1256
    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->offset(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1257
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1258
    iput-boolean v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 1259
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->startQuery()V

    goto :goto_0

    .line 1261
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasNumberByKey:Z

    .line 1262
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->showToastIfNecessary()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0701c4

    if-ne v3, v4, :cond_3

    .line 1163
    const/4 v2, -0x1

    .line 1164
    .local v2, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1165
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 1166
    move v2, v0

    .line 1170
    :cond_0
    const-string v3, "SpeedDialManageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(),  before confirmRemovePosition(), position= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V

    .line 1179
    .end local v0           #i:I
    .end local v2           #position:I
    :cond_1
    :goto_1
    return-void

    .line 1164
    .restart local v0       #i:I
    .restart local v2       #position:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    .end local v0           #i:I
    .end local v2           #position:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0701c0

    if-ne v3, v4, :cond_1

    .line 1173
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 1174
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1177
    const-string v3, "SpeedDialManageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[startActivityForResult] mAddPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 597
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 599
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V

    .line 600
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 392
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onCreate() , begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    .line 394
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 395
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 396
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f0400c5

    const/4 v3, 0x0

    sget-object v4, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->BIND_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->ADAPTER_TO:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 398
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    new-instance v1, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$1;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 486
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 487
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryHandler:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;

    .line 491
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;-><init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimReceiver:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

    .line 492
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimReceiver:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

    invoke-virtual {v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->register()V

    .line 493
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onCreate() , end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 547
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "context menu created"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 560
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v2

    .line 554
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 563
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v3       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    const-string v6, "SpeedDialManageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu(), info.position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cursor:Landroid/database/Cursor;
    check-cast v1, Landroid/database/Cursor;

    .line 566
    .restart local v1       #cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 570
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 582
    const-string v6, "SpeedDialManageActivity"

    const-string v7, "What about really creating?"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const v6, 0x7f0c0023

    invoke-interface {p1, v9, v10, v9, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 584
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 585
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 588
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mActivityDestroyed:Z

    .line 531
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 532
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mSimReceiver:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;

    invoke-virtual {v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$SimReceiver;->unregister()V

    .line 534
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;

    .line 537
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v0}, Landroid/database/AbstractCursor;->close()V

    .line 543
    :cond_1
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 246
    const-string v3, "SpeedDialManageActivity"

    const-string v4, "onListItemClick"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-nez p3, :cond_0

    .line 290
    :goto_0
    return-void

    .line 251
    :cond_0
    iput p3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 254
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v3

    const-string v4, "ExtensionForOP01"

    invoke-virtual {v3, v4}, Lcom/android/contacts/ext/SpeedDialExtension;->showSpeedInputDialog(Ljava/lang/String;)Z

    move-result v2

    .line 256
    .local v2, result:Z
    if-eqz v2, :cond_3

    .line 257
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 258
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    goto :goto_0

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 264
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 265
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c001d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 266
    const v3, 0x7f0c0030

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    const/high16 v3, 0x104

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    const v3, 0x7f0400c4

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    .line 270
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 271
    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 272
    iput-boolean v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    goto :goto_0

    .line 276
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->isContactsApplicationBusy()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    const-string v3, "SpeedDialManageActivity"

    const-string v4, "[onListItemClick]contacts application busy"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const v3, 0x7f0c0040

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 283
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iput-boolean v6, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 287
    const-string v3, "SpeedDialManageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onListItemClick]mIsWaitingActivityResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    const-string v3, "SpeedDialManageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[startActivityForResult]mAddPosition:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 712
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 717
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mInputDialog:Landroid/app/Dialog;

    .line 722
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 1222
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1223
    const-string v0, "add_position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    .line 1224
    const-string v0, "mNeedRemovePosition"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    .line 1225
    const-string v0, "mIsWaitingActivityResult"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    .line 1226
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 500
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onResume begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasGotPref:Z

    if-nez v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->getPrefStatus()V

    .line 504
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHasGotPref:Z

    .line 508
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->startQuery()V

    .line 509
    iget v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 510
    iget v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V

    .line 512
    :cond_1
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1230
    iget v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1231
    const-string v0, "add_position"

    iget v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1232
    const-string v0, "mNeedRemovePosition"

    iget-boolean v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mNeedRemovePosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1234
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    if-eqz v0, :cond_1

    .line 1235
    const-string v0, "mIsWaitingActivityResult"

    iget-boolean v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mIsWaitingActivityResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1237
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1238
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 1268
    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    const v3, 0x7f070091

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1269
    .local v0, editText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAddPosition:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;->getInstance()Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1274
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const v2, 0x7f0701c0

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1275
    .local v1, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 517
    const-string v0, "SpeedDialManageActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 520
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->dismissProgressIndication()V

    .line 521
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->sIsQueryContact:Z

    .line 523
    return-void
.end method

.method populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;I)V
    .locals 3
    .parameter "context"
    .parameter "matrixCursor"
    .parameter "slot"

    .prologue
    .line 921
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v2, v2, p3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumState:[Ljava/lang/String;

    aget-object v2, v2, p3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-1"

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 924
    return-void
.end method
