.class public Lcom/zte/heartyservice/privacy/PasswordSetting;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/PasswordSetting$CreateRSAKeyPairTask;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmDisguisePasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$ConfirmPasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$InitPasswordState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$State;,
        Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    }
.end annotation


# static fields
.field public static final ACTION_PRIVACY_BACKUP:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ACTION_PRIVACY_BACKUP"

.field public static final ACTION_PRIVACY_LOGIN:Ljava/lang/String; = "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN"

.field public static final ACTION_PRIVACY_RESTORE:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ACTION_PRIVACY_RESTORE"

.field public static final ACTION_RESET_PRIVACY_PASSWORD:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ACTION_RESET_PRIVACY_PASSWORD"

.field public static final ACTION_SET_DISGUISE_PASSWORD:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ACTION_SET_DISGUISE_PASSWORD"

.field private static final CHECK_HIDE_STATE:I = 0x0

.field private static final CLEAR_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PasswordSetting"

.field public static final TARGET_INTENT:Ljava/lang/String; = "target_intent"

.field private static sHandler:Landroid/os/Handler;

.field private static sOutIntent:Landroid/content/Intent;

.field private static sOutPackage:Ljava/lang/String;

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mBackupFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnLayout:Landroid/view/View;

.field private mBtnListView:Landroid/widget/ListView;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/ui/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

.field private mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

.field private final mHandler:Landroid/os/Handler;

.field private mInitResult:Z

.field private mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

.field private mMaintView:Landroid/view/View;

.field private mMoreErrorView:Landroid/view/View;

.field private mPassword:Ljava/lang/String;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordLable:Landroid/widget/TextView;

.field private mPasswordSummary:Landroid/widget/TextView;

.field private mPasswordType:I

.field private mPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

.field private mSelectTypeLabel:Landroid/widget/TextView;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mTarget:Ljava/lang/Class;

.field private mTargetIntent:Landroid/content/Intent;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1659
    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutIntent:Landroid/content/Intent;

    .line 1660
    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutPackage:Ljava/lang/String;

    .line 1727
    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1730
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$7;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$7;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTarget:Ljava/lang/Class;

    .line 64
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTargetIntent:Landroid/content/Intent;

    .line 77
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mChosenPattern:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mInitResult:Z

    .line 79
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;

    .line 86
    sget-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 98
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$1;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mHandler:Landroid/os/Handler;

    .line 1478
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$2;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTextWatcher:Landroid/text/TextWatcher;

    .line 1511
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$3;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    .line 1637
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/common/ui/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mInitResult:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/privacy/PasswordSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mInitResult:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->startPrivacyTarget()V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->startMonitor()V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordLable:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->startDisguise()V

    return-void
.end method

.method static synthetic access$2100(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/zte/heartyservice/privacy/PasswordSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/zte/heartyservice/privacy/PasswordSetting;)Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->checkHideState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mMaintView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/PasswordSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I

    return v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/privacy/PasswordSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I

    return p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mMoreErrorView:Landroid/view/View;

    return-object v0
.end method

.method public static checkData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z
    .locals 19
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, backupFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 372
    .local v14, hasData:Z
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, PDpath:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 374
    if-eqz p1, :cond_a

    .line 375
    const/4 v12, 0x0

    .line 377
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "privacyinfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 379
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    const-string v1, "cl"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 381
    .local v11, clIndex:I
    const-string v1, "nn"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 384
    .local v17, nnIndex:I
    :cond_0
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 385
    .local v16, nn:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 405
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 408
    .end local v11           #clIndex:I
    .end local v16           #nn:Ljava/lang/String;
    .end local v17           #nnIndex:I
    :cond_2
    if-eqz v12, :cond_3

    .line 409
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 410
    const/4 v12, 0x0

    .line 418
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-nez v14, :cond_4

    .line 419
    const-string v1, "privacycontact"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->hasData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    .line 422
    :cond_4
    if-nez v14, :cond_5

    .line 423
    const-string v1, "privacysms"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->hasData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    .line 426
    :cond_5
    if-nez v14, :cond_6

    .line 427
    const-string v1, "privacycall"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->hasData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    .line 430
    :cond_6
    if-nez v14, :cond_7

    .line 431
    const-string v1, "passwordprotector"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->hasData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    .line 434
    :cond_7
    return v14

    .line 389
    .restart local v11       #clIndex:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #nn:Ljava/lang/String;
    .restart local v17       #nnIndex:I
    :cond_8
    :try_start_1
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, cl:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v15

    .line 398
    .local v15, keyData:[B
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v18

    .line 400
    .local v18, realName:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v13, v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    const/4 v14, 0x1

    goto :goto_0

    .line 408
    .end local v10           #cl:Ljava/lang/String;
    .end local v11           #clIndex:I
    .end local v13           #file:Ljava/io/File;
    .end local v15           #keyData:[B
    .end local v16           #nn:Ljava/lang/String;
    .end local v17           #nnIndex:I
    .end local v18           #realName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_9

    .line 409
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 410
    const/4 v12, 0x0

    :cond_9
    throw v1

    .line 414
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_a
    const-string v1, "privacyinfo"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->hasData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v14

    goto :goto_1
.end method

.method private static checkHideState(Z)V
    .locals 14
    .parameter "isScreenOff"

    .prologue
    .line 1672
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    .line 1673
    .local v3, context:Landroid/content/Context;
    const-string v11, "activity"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1675
    .local v1, activityManager:Landroid/app/ActivityManager;
    const-string v9, ""

    .line 1676
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1678
    .local v0, activity:Landroid/content/ComponentName;
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v1, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v11, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1679
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1684
    :goto_0
    if-eqz p0, :cond_1

    .line 1685
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    .line 1686
    const-string v11, "com.zte.heartyservice"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1687
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/zte/heartyservice/privacy/EmptyActivity;

    invoke-direct {v7, v3, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1688
    .local v7, intent:Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-static {v11, v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1725
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1680
    :catch_0
    move-exception v4

    .line 1681
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1691
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1
    const-string v11, "com.zte.heartyservice"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1692
    const-string v2, ""

    .line 1693
    .local v2, activityname:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1694
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1696
    :cond_2
    const-string v11, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1698
    sget-object v11, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutPackage:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 1699
    sget-object v11, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutPackage:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1700
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    goto :goto_1

    .line 1702
    :cond_3
    sget-object v11, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutIntent:Landroid/content/Intent;

    if-eqz v11, :cond_6

    .line 1703
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1704
    .local v8, localHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    sget-object v12, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutIntent:Landroid/content/Intent;

    const v13, 0x10040

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 1710
    .local v10, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v10, :cond_4

    .line 1711
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1712
    .local v6, info:Landroid/content/pm/ResolveInfo;
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1715
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1716
    sput-object v9, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutPackage:Ljava/lang/String;

    goto :goto_1

    .line 1718
    :cond_5
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    goto :goto_1

    .line 1721
    .end local v8           #localHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    goto :goto_1
.end method

.method private eventInit()V
    .locals 8

    .prologue
    .line 1552
    const v0, 0x7f0e006a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnLayout:Landroid/view/View;

    .line 1553
    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnListView:Landroid/widget/ListView;

    .line 1554
    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mSelectTypeLabel:Landroid/widget/TextView;

    .line 1555
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mSelectTypeLabel:Landroid/widget/TextView;

    const v1, 0x7f0a0534

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1556
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnListView:Landroid/widget/ListView;

    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$4;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f03001f

    const v4, 0x7f0e0071

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f07004b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/privacy/PasswordSetting$4;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1574
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mMoreErrorView:Landroid/view/View;

    .line 1575
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mMaintView:Landroid/view/View;

    .line 1576
    const v0, 0x7f0e02fb

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordLable:Landroid/widget/TextView;

    .line 1577
    const v0, 0x7f0e02fc

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordSummary:Landroid/widget/TextView;

    .line 1579
    const v0, 0x7f0e0301

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;

    .line 1580
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1582
    const v0, 0x7f0e02fd

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;

    .line 1583
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1585
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/ui/LockPatternView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    .line 1586
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPatternListener:Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setOnPatternListener(Lcom/zte/heartyservice/common/ui/LockPatternView$OnPatternListener;)V

    .line 1587
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternVibrate()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 1590
    const v0, 0x7f0e02ff

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1591
    .local v6, checkbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternVibrate()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1592
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$5;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$5;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1601
    const v0, 0x7f0e0300

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #checkbox:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 1602
    .restart local v6       #checkbox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getPatternShowTrack()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1603
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$6;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$6;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1611
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mChosenPattern:Ljava/util/List;

    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/LockPatternView;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 9
    .parameter "db"
    .parameter "table"

    .prologue
    .line 353
    const/4 v8, 0x0

    .line 355
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 356
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const/4 v0, 0x1

    .line 360
    if-eqz v8, :cond_0

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v8, 0x0

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    if-eqz v8, :cond_2

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v8, 0x0

    .line 366
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 361
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 362
    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method private nextState()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;->next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    .line 1300
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    if-eqz v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;->enter()V

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 1304
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->finish()V

    goto :goto_0
.end method

.method public static setOutIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1663
    if-eqz p0, :cond_0

    .line 1664
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sput-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutIntent:Landroid/content/Intent;

    .line 1668
    :goto_0
    sput-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutPackage:Ljava/lang/String;

    .line 1669
    return-void

    .line 1666
    :cond_0
    sput-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->sOutIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private startDisguise()V
    .locals 2

    .prologue
    .line 1632
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sendExitPrivacySpaceBroadcast()V

    .line 1633
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/privacy/DisguiseMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1634
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1635
    return-void
.end method

.method private static startMonitor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1747
    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowPrivacyLoginActivity(Z)V

    .line 1748
    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1749
    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting;->sHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1750
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    .line 1751
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/zte/heartyservice/privacy/PasswordSetting$8;

    invoke-direct {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$8;-><init>()V

    sput-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1767
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1770
    :cond_0
    return-void
.end method

.method private startPrivacyTarget()V
    .locals 3

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTarget:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1624
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTarget:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1625
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1629
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTargetIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1627
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTargetIntent:Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1773
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowPrivacyLoginActivity(Z)V

    .line 1774
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 1775
    sget-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1776
    sget-object v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1777
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1778
    sput-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1780
    :cond_0
    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1312
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 1320
    :goto_0
    return-void

    .line 1314
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mLockPatternView:Lcom/zte/heartyservice/common/ui/LockPatternView;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/ui/LockPatternView;->clearPattern()V

    .line 1315
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V

    goto :goto_0

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0301
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v1, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-ne v0, v1, :cond_1

    .line 1616
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->sendExitPrivacySpaceBroadcast()V

    .line 1617
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShowPrivacyLoginActivity(Z)V

    .line 1619
    :cond_1
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onBackPressed()V

    .line 1620
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 1324
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1326
    .local v13, intent:Landroid/content/Intent;
    const v4, 0x7f0a0544

    .line 1327
    .local v4, actionTitle:I
    const v16, 0x7f0a0545

    .line 1328
    .local v16, subTitle:I
    if-eqz v13, :cond_0

    .line 1329
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, action:Ljava/lang/String;
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1331
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 1332
    const-class v17, Lcom/zte/heartyservice/privacy/MainPrivacyActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTarget:Ljava/lang/Class;

    .line 1372
    .end local v3           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1375
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setNeedCheckKey(Z)V

    .line 1378
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1380
    const v17, 0x7f0300c9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setContentView(I)V

    .line 1381
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1382
    if-eqz v16, :cond_3

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->actionBar:Landroid/app/ActionBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    .line 1385
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->eventInit()V

    .line 1387
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPasswordType()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "privacy_backup_dir"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1392
    .local v6, backupDirPath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1394
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->getBackupDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1395
    if-nez v9, :cond_c

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a064f

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    if-eqz v9, :cond_4

    .line 1403
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1404
    const/4 v9, 0x0

    .line 1463
    .end local v6           #backupDirPath:Ljava/lang/String;
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_1
    return-void

    .line 1333
    .restart local v3       #action:Ljava/lang/String;
    :cond_5
    const-string v17, "com.zte.heartyservice.intent.action.ACTION_RESET_PRIVACY_PASSWORD"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1334
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 1335
    const v4, 0x7f0a0307

    goto/16 :goto_0

    .line 1336
    :cond_6
    const-string v17, "com.zte.heartyservice.intent.action.ACTION_SET_DISGUISE_PASSWORD"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1337
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->SET_DISGUISE_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 1338
    const v4, 0x7f0a03b8

    .line 1339
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1340
    :cond_7
    const-string v17, "com.zte.heartyservice.intent.action.ACTION_PRIVACY_BACKUP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1341
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 1342
    const v4, 0x7f0a0645

    .line 1343
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1344
    :cond_8
    const-string v17, "com.zte.heartyservice.intent.action.ACTION_PRIVACY_RESTORE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1345
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    .line 1346
    const v4, 0x7f0a064b

    .line 1347
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1350
    :cond_9
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 1352
    .local v5, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_a

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1353
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "class_name"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1354
    .local v7, className:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 1355
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTarget:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1361
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v7           #className:Ljava/lang/String;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTarget:Ljava/lang/Class;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1362
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    goto/16 :goto_0

    .line 1358
    :catch_0
    move-exception v10

    .line 1359
    .local v10, e:Ljava/lang/Exception;
    const-string v17, "PasswordSetting"

    const-string v18, "Could not find activity!"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1364
    .end local v10           #e:Ljava/lang/Exception;
    :cond_b
    const-string v17, "target_intent"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTargetIntent:Landroid/content/Intent;

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mTargetIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1366
    sget-object v17, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    goto/16 :goto_0

    .line 1402
    .end local v3           #action:Ljava/lang/String;
    .restart local v6       #backupDirPath:Ljava/lang/String;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_c
    if-eqz v9, :cond_d

    .line 1403
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1404
    const/4 v9, 0x0

    .line 1408
    :cond_d
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreCheckPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    .line 1409
    const v17, 0x7f0e02fa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1410
    .local v15, noteView:Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1411
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080068

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1413
    const v17, 0x7f0a064c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1414
    .local v14, msg:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_e

    .line 1415
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0a064e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1417
    :cond_e
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1418
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->getBackupPasswordType(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I

    .line 1458
    .end local v6           #backupDirPath:Ljava/lang/String;
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v14           #msg:Ljava/lang/String;
    .end local v15           #noteView:Landroid/widget/TextView;
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    .line 1459
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    .line 1462
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;->enter()V

    goto/16 :goto_1

    .line 1402
    .restart local v6       #backupDirPath:Ljava/lang/String;
    .restart local v9       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v17

    if-eqz v9, :cond_11

    .line 1403
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1404
    const/4 v9, 0x0

    :cond_11
    throw v17

    .line 1420
    .end local v6           #backupDirPath:Ljava/lang/String;
    .end local v9           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_12
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v17

    if-nez v17, :cond_14

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a0647

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->finish()V

    goto/16 :goto_1

    .line 1428
    :cond_13
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mSelectTypeLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f0a0535

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1430
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESET_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1431
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$CheckPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    goto/16 :goto_3

    .line 1432
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->SET_DISGUISE_PASSWORD:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 1433
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$SetDisguisePasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    .line 1434
    const v17, 0x7f0e02fa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1435
    .restart local v15       #noteView:Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1436
    const v17, 0x7f0a0422

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1437
    .end local v15           #noteView:Landroid/widget/TextView;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v17, v0

    sget-object v18, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 1438
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$BackupCheckPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    .line 1439
    const v17, 0x7f0e02fa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1440
    .restart local v15       #noteView:Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1441
    const v17, 0x7f0a0646

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1442
    .restart local v14       #msg:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_17

    .line 1443
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0a064d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1445
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080068

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1447
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1449
    .end local v14           #msg:Ljava/lang/String;
    .end local v15           #noteView:Landroid/widget/TextView;
    :cond_18
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getErrorLoginTime()Ljava/util/Date;

    move-result-object v8

    .line 1450
    .local v8, date:Ljava/util/Date;
    if-eqz v8, :cond_f

    .line 1451
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 1452
    .local v11, errorLoginTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    const-wide/32 v19, 0x493e0

    cmp-long v17, v17, v19

    if-gez v17, :cond_f

    .line 1453
    new-instance v17, Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting$MoreErrorState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/PasswordSetting;->mCurState:Lcom/zte/heartyservice/privacy/PasswordSetting$State;

    goto/16 :goto_3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->LOGIN:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RECHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->BACKUP_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting;->mEnterType:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;->RESTORE_CHECK:Lcom/zte/heartyservice/privacy/PasswordSetting$EnterType;

    if-eq v1, v2, :cond_0

    .line 1470
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isShowPrivacyLoginActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1471
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1472
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->startActivity(Landroid/content/Intent;)V

    .line 1475
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->superOnResume()V

    .line 1476
    return-void
.end method
