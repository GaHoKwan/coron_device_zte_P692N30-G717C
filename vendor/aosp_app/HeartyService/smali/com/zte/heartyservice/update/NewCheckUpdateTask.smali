.class public Lcom/zte/heartyservice/update/NewCheckUpdateTask;
.super Landroid/os/AsyncTask;
.source "NewCheckUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final AppNameBackup:Ljava/lang/String; = "BackupAndRestore"

.field private static final AppNameHeartyService:Ljava/lang/String; = "HeartyService"

.field private static final AppNameRetrieve:Ljava/lang/String; = "Retrieve"

.field private static final CHOOSE_OTHER:I = 0x6

.field private static final HAS_UPDATE:I = 0x1

.field public static final ModeBackup:I = 0x2

.field public static final ModeHeartyService:I = 0x1

.field public static final ModeRetrieve:I = 0x4

.field private static final NETWORK_ERROR:I = 0x4

.field private static final NO_UPDATE:I = 0x2

.field private static final PARSE_ERROR:I = 0x3

.field private static final PakNameBackup:Ljava/lang/String; = "com.zte.backup.mmi"

.field private static final PakNameHeartyService:Ljava/lang/String; = "com.zte.heartyservice"

.field private static final PakNameRetrieve:Ljava/lang/String; = "com.zte.retrieve"

.field private static final SERVER_ERROR:I = 0x5

.field private static final VerNameBackup:Ljava/lang/String; = "ZTE_appName|BackupAndRestore_country|GENERIC_operator|GENERIC_device|GENERIC_versionName|V0.0.0"

.field private static final VerNameHeartyService:Ljava/lang/String; = "ZTE_appName|HeartyService_country|GENERIC_operator|GENERIC_device|GENERIC_versionName|V0.0.0_appType|CloudService"

.field private static final VerNameRetrieve:Ljava/lang/String; = "ZTE_appName|Retrieve_country|CN_operator|GENERIC_device|GENERIC_versionName|V0.0.0"


# instance fields
.field private appLable:I

.field private backup:Lorg/json/JSONObject;

.field private backupHasupdate:Z

.field private handler:Landroid/os/Handler;

.field private heartyservice:Lorg/json/JSONObject;

.field private heartyserviceFromZtems:Lorg/json/JSONObject;

.field private heartyserviceHasupdate:Z

.field private hsNanoTimeCost:J

.field private hsNanoTimeCostZtems:J

.field private mContext:Landroid/content/Context;

.field private mInfo:Lorg/json/JSONObject;

.field private mQuit:Ljava/lang/Boolean;

.field private mode:I

.field private noticeFlag:I

.field private packageName:Ljava/lang/String;

.field private ret:I

.field private retrieve:Lorg/json/JSONObject;

.field private retrieveHasupdate:Z

.field private saveName:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "mode"
    .parameter "noticeFlag"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    .line 41
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyservice:Lorg/json/JSONObject;

    .line 42
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    .line 43
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backup:Lorg/json/JSONObject;

    .line 44
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieve:Lorg/json/JSONObject;

    .line 45
    iput v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 46
    iput v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->noticeFlag:I

    .line 47
    iput v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    .line 48
    iput-boolean v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceHasupdate:Z

    .line 49
    iput-boolean v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backupHasupdate:Z

    .line 50
    iput-boolean v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieveHasupdate:Z

    .line 51
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->packageName:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->versionName:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mQuit:Ljava/lang/Boolean;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->handler:Landroid/os/Handler;

    .line 58
    iput-wide v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCost:J

    .line 59
    iput-wide v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCostZtems:J

    .line 80
    iput-object p1, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    .line 82
    iput p3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->noticeFlag:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    return v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/update/NewCheckUpdateTask;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->updateApk(Ljava/io/File;)V

    return-void
.end method

.method private doExceptionShow()V
    .locals 6

    .prologue
    .line 547
    iget v3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->noticeFlag:I

    if-nez v3, :cond_0

    .line 576
    :goto_0
    return-void

    .line 550
    :cond_0
    const/4 v2, 0x0

    .line 551
    .local v2, mesId:I
    iget v3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    packed-switch v3, :pswitch_data_0

    .line 562
    const v2, 0x7f0a0084

    .line 565
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0075

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0173

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 571
    .local v0, dialog:Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 572
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 553
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :pswitch_0
    const v2, 0x7f0a0083

    .line 554
    goto :goto_1

    .line 556
    :pswitch_1
    const v2, 0x7f0a0084

    .line 557
    goto :goto_1

    .line 559
    :pswitch_2
    const v2, 0x7f0a0085

    .line 560
    goto :goto_1

    .line 551
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doInstallApk(Ljava/io/File;)V
    .locals 8
    .parameter "dir"

    .prologue
    .line 466
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a007d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a007e

    new-instance v3, Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;

    invoke-direct {v3, p0, p1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask$4;-><init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a007f

    new-instance v3, Lcom/zte/heartyservice/update/NewCheckUpdateTask$3;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask$3;-><init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 494
    .local v0, dialog:Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 495
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doNewVersionUpdate()V
    .locals 29

    .prologue
    .line 245
    const/16 v18, 0x0

    .line 246
    .local v18, versionCodeFromServer:I
    const-string v20, ""

    .line 247
    .local v20, versionNameFromServer:Ljava/lang/String;
    const-string v5, ""

    .line 248
    .local v5, downloadUrl:Ljava/lang/String;
    const-string v11, ""

    .line 250
    .local v11, summary:Ljava/lang/String;
    const/16 v19, 0x0

    .line 251
    .local v19, versionCodeFromZtems:I
    const-string v21, ""

    .line 252
    .local v21, versionNameFromZtems:Ljava/lang/String;
    const-string v6, ""

    .line 253
    .local v6, downloadUrlFromZtems:Ljava/lang/String;
    const-string v12, ""

    .line 256
    .local v12, summaryFromZtems:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceHasupdate:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyservice:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 265
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "verCode"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "verName"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 267
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://mobile.ztems.com/download/tmpfile/number/manager/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v24, v0

    const-string v25, "downloadUrl"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "updateInfo"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyservice:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 279
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyservice:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "versionCode"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "versionName"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "ZTE_AutoUpdate_Url"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "summary"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 290
    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 292
    const/16 v22, 0x0

    .line 293
    .local v22, ztemsIsFaster:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCostZtems:J

    move-wide/from16 v23, v0

    const-wide/16 v25, -0x1

    cmp-long v23, v23, v25

    if-nez v23, :cond_4

    .line 294
    const/16 v22, 0x0

    .line 300
    :goto_1
    const-string v23, "chenlu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "hsNanoTimeCostZtems ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCostZtems:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",hsNanoTimeCost="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCost:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz v22, :cond_3

    .line 303
    move/from16 v18, v19

    .line 304
    move-object/from16 v20, v21

    .line 305
    move-object v5, v6

    .line 306
    move-object v11, v12

    .line 319
    .end local v22           #ztemsIsFaster:Z
    :cond_3
    :goto_2
    const-string v23, "HeartyService"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    .line 320
    const v23, 0x7f0a03b2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    .line 321
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceHasupdate:Z

    .line 357
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_versionCode_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".apk"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getApkVersion(Ljava/io/File;)I

    move-result v15

    .line 360
    .local v15, versionCodeFromExternalSD:I
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getApkVersion(Ljava/io/File;)I

    move-result v16

    .line 361
    .local v16, versionCodeFromInternalSD:I
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 364
    .local v17, versionCodeFromSD:I
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_b

    .line 367
    move/from16 v0, v17

    if-ne v0, v15, :cond_a

    .line 368
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doInstallApk(Ljava/io/File;)V

    goto/16 :goto_0

    .line 270
    .end local v15           #versionCodeFromExternalSD:I
    .end local v16           #versionCodeFromInternalSD:I
    .end local v17           #versionCodeFromSD:I
    :catch_0
    move-exception v7

    .line 272
    .local v7, e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 284
    .end local v7           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 286
    .restart local v7       #e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 295
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v22       #ztemsIsFaster:Z
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCost:J

    move-wide/from16 v23, v0

    const-wide/16 v25, -0x1

    cmp-long v23, v23, v25

    if-nez v23, :cond_5

    .line 296
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 298
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCostZtems:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x2

    mul-long v23, v23, v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCost:J

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gez v23, :cond_6

    const/16 v22, 0x1

    :goto_4
    goto/16 :goto_1

    :cond_6
    const/16 v22, 0x0

    goto :goto_4

    .line 313
    .end local v22           #ztemsIsFaster:Z
    :cond_7
    move/from16 v18, v19

    .line 314
    move-object/from16 v20, v21

    .line 315
    move-object v5, v6

    .line 316
    move-object v11, v12

    goto/16 :goto_2

    .line 322
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieveHasupdate:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 324
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieve:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "versionCode"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "versionName"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "ZTE_AutoUpdate_Url"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "summary"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 334
    const-string v23, "Retrieve"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    .line 335
    const v23, 0x7f0a0039

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    .line 336
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieveHasupdate:Z

    goto/16 :goto_3

    .line 329
    :catch_2
    move-exception v7

    .line 331
    .restart local v7       #e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v7           #e:Lorg/json/JSONException;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backupHasupdate:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 339
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backup:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "versionCode"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "versionName"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "ZTE_AutoUpdate_Url"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "summary"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    .line 349
    const-string v23, "BackupAndRestore"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    .line 350
    const v23, 0x7f0a0036

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    .line 351
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backupHasupdate:Z

    goto/16 :goto_3

    .line 344
    :catch_3
    move-exception v7

    .line 346
    .restart local v7       #e:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 370
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v15       #versionCodeFromExternalSD:I
    .restart local v16       #versionCodeFromInternalSD:I
    .restart local v17       #versionCodeFromSD:I
    :cond_a
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doInstallApk(Ljava/io/File;)V

    goto/16 :goto_0

    .line 375
    :cond_b
    move-object/from16 v9, v20

    .line 376
    .local v9, relDownloadVersionName:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    move-object v10, v5

    .line 379
    .local v10, selectedUrl:Ljava/lang/String;
    move-object v3, v11

    .line 381
    .local v3, description:Ljava/lang/String;
    const v23, 0x7f0a0082

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 382
    const v23, 0x7f0a0079

    new-instance v24, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v3, v9}, Lcom/zte/heartyservice/update/NewCheckUpdateTask$1;-><init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    const v23, 0x7f0a007c

    new-instance v24, Lcom/zte/heartyservice/update/NewCheckUpdateTask$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask$2;-><init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f030129

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 412
    .local v8, layout:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 414
    const v23, 0x7f0e0076

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 415
    .local v13, text1:Landroid/widget/TextView;
    const v23, 0x7f0e0077

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 417
    .local v14, text2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x7f0a0081

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->appLable:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v20, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :try_start_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    .line 424
    .local v4, dialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 425
    .end local v4           #dialog:Landroid/app/AlertDialog;
    :catch_4
    move-exception v23

    goto/16 :goto_0
.end method

.method private generateJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "packageName"
    .parameter "appName"
    .parameter "description"

    .prologue
    .line 671
    const/4 v1, 0x0

    .line 673
    .local v1, loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    :try_start_0
    new-instance v2, Lcom/zte/heartyservice/update/ZTEJSONObject;

    invoke-direct {v2, p2}, Lcom/zte/heartyservice/update/ZTEJSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 675
    .end local v1           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .local v2, loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    const/4 v3, 0x0

    .line 678
    .local v3, loaclPackageInfo:Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 684
    :goto_0
    if-eqz v3, :cond_1

    .line 685
    :try_start_2
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getPackageAppDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, localAppDescription:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ZTE_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/zte/heartyservice/update/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v4           #localAppDescription:Ljava/lang/String;
    :goto_1
    move-object v1, v2

    .line 705
    .end local v2           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .end local v3           #loaclPackageInfo:Landroid/content/pm/PackageInfo;
    .restart local v1       #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    :goto_2
    return-object v2

    .line 692
    .end local v1           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .restart local v2       #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .restart local v3       #loaclPackageInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #localAppDescription:Ljava/lang/String;
    :cond_0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p3, v5, v6}, Lcom/zte/heartyservice/update/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 701
    .end local v4           #localAppDescription:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 702
    .end local v2           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .end local v3           #loaclPackageInfo:Landroid/content/pm/PackageInfo;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 697
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .restart local v2       #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .restart local v3       #loaclPackageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const-string v5, "V0.0.0"

    const/4 v6, 0x0

    invoke-virtual {v2, p3, v5, v6}, Lcom/zte/heartyservice/update/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 701
    .end local v2           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .end local v3           #loaclPackageInfo:Landroid/content/pm/PackageInfo;
    .restart local v1       #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 680
    .end local v1           #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .restart local v2       #loaclJSONObject:Lcom/zte/heartyservice/update/ZTEJSONObject;
    .restart local v3       #loaclPackageInfo:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private generateJSONObjectFromZTEApp(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 10
    .parameter "versionName"
    .parameter "versionCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 710
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 711
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v6, "ZTE_"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, infos:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 713
    .local v5, kValues:[Ljava/lang/String;
    const-string v6, "versionCode"

    invoke-virtual {v3, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 714
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 718
    const/4 v6, 0x4

    if-le v0, v6, :cond_1

    .line 735
    :cond_0
    const/4 v2, 0x5

    .local v2, j:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_7

    .line 736
    aget-object v6, v1, v2

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "customName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v8

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "customValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v5, v9

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 722
    .end local v2           #j:I
    .end local v4           #k:I
    :cond_1
    aget-object v6, v1, v0

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 723
    aget-object v6, v5, v8

    const-string v7, "appName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 724
    const-string v6, "appName"

    aget-object v7, v5, v9

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_3
    aget-object v6, v5, v8

    const-string v7, "operator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 726
    const-string v6, "operator"

    aget-object v7, v5, v9

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 727
    :cond_4
    aget-object v6, v5, v8

    const-string v7, "country"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 728
    const-string v6, "country"

    aget-object v7, v5, v9

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 729
    :cond_5
    aget-object v6, v5, v8

    const-string v7, "versionName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 730
    const-string v6, "versionName"

    aget-object v7, v5, v9

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 731
    :cond_6
    aget-object v6, v5, v8

    const-string v7, "device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 732
    const-string v6, "device"

    aget-object v7, v5, v9

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 741
    .restart local v2       #j:I
    .restart local v4       #k:I
    :cond_7
    const-string v6, "client_locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    return-object v3
.end method

.method private getApkVersion(Ljava/io/File;)I
    .locals 9
    .parameter "dir"

    .prologue
    const/4 v6, -0x1

    .line 442
    if-nez p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v6

    .line 445
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v7, "Download"

    invoke-direct {v0, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .local v0, downloadDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 449
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    invoke-direct {v5, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    .local v5, sourceFile:Ljava/io/File;
    new-instance v4, Landroid/content/pm/PackageParser;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 451
    .local v4, pp:Landroid/content/pm/PackageParser;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 452
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 453
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v2, v8}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 455
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_0

    .line 458
    iget v6, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v0           #downloadDir:Ljava/io/File;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v4           #pp:Landroid/content/pm/PackageParser;
    .end local v5           #sourceFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getPackageAppDescription(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 6
    .parameter "packageInfo"

    .prologue
    .line 768
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 771
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "appDescription"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 780
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 774
    :catch_0
    move-exception v1

    .line 776
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "AliveUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersionName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] not found meta-appDescription"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getVersionCode(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 579
    const/4 v1, -0x1

    .line 581
    .local v1, relVerCode:I
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return v1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "packageName"

    .prologue
    .line 590
    const-string v3, ""

    .line 592
    .local v3, relVerName:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 594
    .local v2, localversionName:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "ZTE_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 596
    const-string v4, "_versionName|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 599
    .local v1, lastIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 600
    move-object v3, v2

    .line 607
    .end local v1           #lastIndex:I
    :goto_0
    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x56

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    .end local v2           #localversionName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 602
    .restart local v1       #lastIndex:I
    .restart local v2       #localversionName:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 605
    .end local v1           #lastIndex:I
    :cond_2
    move-object v3, v2

    goto :goto_0

    .line 610
    .end local v2           #localversionName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private notNewVersionShow()V
    .locals 7

    .prologue
    const v6, 0x7f0a0072

    const/16 v5, 0x20

    const/16 v4, 0xa

    .line 503
    iget v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->noticeFlag:I

    if-nez v2, :cond_0

    .line 544
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 508
    .local v1, sb:Ljava/lang/StringBuffer;
    iget v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 509
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 510
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v2, "com.zte.heartyservice"

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 513
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 514
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 515
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v2, "com.zte.backup.mmi"

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    :cond_2
    iget v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 519
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    const-string v2, "com.zte.retrieve"

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 523
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0076

    new-instance v4, Lcom/zte/heartyservice/update/NewCheckUpdateTask$5;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask$5;-><init>(Lcom/zte/heartyservice/update/NewCheckUpdateTask;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 539
    .local v0, dialog:Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 541
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 542
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private updateApk(Ljava/io/File;)V
    .locals 4
    .parameter "dir"

    .prologue
    .line 431
    new-instance v0, Ljava/io/File;

    const-string v2, "Download"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    .local v0, downloadDir:Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 434
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->saveName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    iget-object v2, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 437
    invoke-direct {p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V

    .line 438
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .parameter "params"

    .prologue
    .line 102
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 103
    const-string v17, "http://mobile.ztems.com/download/tmpfile/number/manager/ver.json"

    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/update/NetworkTool;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, verjson:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 106
    .local v5, array:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_0

    .line 107
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    .line 109
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://mobile.ztems.com/download/tmpfile/number/manager/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "downloadUrl"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, downloadUrlFromZtems:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/update/NetworkTool;->testNanoTimeCost(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCostZtems:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 119
    .end local v5           #array:Lorg/json/JSONArray;
    .end local v7           #downloadUrlFromZtems:Ljava/lang/String;
    .end local v14           #verjson:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 120
    .local v13, localJSONArray:Lorg/json/JSONArray;
    const/4 v12, 0x0

    .line 121
    .local v12, jsonObject:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 122
    const-string v17, "com.zte.heartyservice"

    const-string v18, "HeartyService"

    const-string v19, "ZTE_appName|HeartyService_country|GENERIC_operator|GENERIC_device|GENERIC_versionName|V0.0.0_appType|CloudService"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->generateJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 124
    if-eqz v12, :cond_1

    .line 125
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x2

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 129
    const-string v17, "com.zte.backup.mmi"

    const-string v18, "BackupAndRestore"

    const-string v19, "ZTE_appName|BackupAndRestore_country|GENERIC_operator|GENERIC_device|GENERIC_versionName|V0.0.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->generateJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 131
    if-eqz v12, :cond_2

    .line 132
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mode:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 136
    const-string v17, "com.zte.retrieve"

    const-string v18, "Retrieve"

    const-string v19, "ZTE_appName|Retrieve_country|CN_operator|GENERIC_device|GENERIC_versionName|V0.0.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->generateJSONObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 138
    if-eqz v12, :cond_3

    .line 139
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    :cond_3
    const/4 v11, 0x0

    .line 144
    .local v11, infos:Lorg/json/JSONArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :try_start_2
    invoke-static {v13}, Lcom/zte/heartyservice/update/NetworkTool;->checkMultiUpdate(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 157
    const/4 v15, 0x0

    .line 158
    .local v15, versionCodeFromServer:I
    const/16 v16, 0x0

    .line 159
    .local v16, versionCodeInPhone:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_8

    .line 160
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "appName"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, appName:Ljava/lang/String;
    const-string v17, "HeartyService"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyservice:Lorg/json/JSONObject;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyservice:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "hasUpdate"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "versionCode"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 166
    const-string v17, "com.zte.heartyservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionCode(Ljava/lang/String;)I

    move-result v16

    .line 167
    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 168
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceHasupdate:Z

    .line 169
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "ZTE_AutoUpdate_Url"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, downloadUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/update/NetworkTool;->testNanoTimeCost(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->hsNanoTimeCost:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    .end local v6           #downloadUrl:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 148
    .end local v4           #appName:Ljava/lang/String;
    .end local v10           #i:I
    .end local v15           #versionCodeFromServer:I
    .end local v16           #versionCodeInPhone:I
    :catch_0
    move-exception v8

    .line 149
    .local v8, e:Ljava/io/FileNotFoundException;
    const/16 v17, 0x5

    :try_start_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 150
    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 202
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .end local v11           #infos:Lorg/json/JSONArray;
    .end local v12           #jsonObject:Lorg/json/JSONObject;
    .end local v13           #localJSONArray:Lorg/json/JSONArray;
    :catch_1
    move-exception v8

    .line 203
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 204
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 206
    const/4 v15, 0x0

    .line 207
    .restart local v15       #versionCodeFromServer:I
    const/16 v16, 0x0

    .line 208
    .restart local v16       #versionCodeInPhone:I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceFromZtems:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "verCode"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 211
    const-string v17, "com.zte.heartyservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionCode(Ljava/lang/String;)I

    move-result v16

    .line 212
    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 213
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->heartyserviceHasupdate:Z

    .line 214
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 216
    :cond_5
    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 222
    .end local v8           #e:Ljava/lang/Exception;
    .end local v15           #versionCodeFromServer:I
    .end local v16           #versionCodeInPhone:I
    :goto_3
    return-object v17

    .line 151
    .restart local v11       #infos:Lorg/json/JSONArray;
    .restart local v12       #jsonObject:Lorg/json/JSONObject;
    .restart local v13       #localJSONArray:Lorg/json/JSONArray;
    :catch_2
    move-exception v8

    .line 152
    .restart local v8       #e:Ljava/lang/Exception;
    const/16 v17, 0x4

    :try_start_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 153
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 175
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #appName:Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v15       #versionCodeFromServer:I
    .restart local v16       #versionCodeInPhone:I
    :cond_6
    :try_start_7
    const-string v17, "BackupAndRestore"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backup:Lorg/json/JSONObject;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backup:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "hasUpdate"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "versionCode"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 179
    const-string v17, "com.zte.backup.mmi"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionCode(Ljava/lang/String;)I

    move-result v16

    .line 180
    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 181
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->backupHasupdate:Z

    .line 182
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 197
    .end local v4           #appName:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 198
    .restart local v8       #e:Ljava/lang/Exception;
    const/16 v17, 0x3

    :try_start_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 199
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 185
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v4       #appName:Ljava/lang/String;
    :cond_7
    :try_start_9
    const-string v17, "Retrieve"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieve:Lorg/json/JSONObject;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieve:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "hasUpdate"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "versionCode"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 189
    const-string v17, "com.zte.retrieve"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->getVersionCode(Ljava/lang/String;)I

    move-result v16

    .line 190
    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 191
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->retrieveHasupdate:Z

    .line 192
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 201
    .end local v4           #appName:Ljava/lang/String;
    :cond_8
    :try_start_a
    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 217
    .end local v10           #i:I
    .end local v11           #infos:Lorg/json/JSONArray;
    .end local v12           #jsonObject:Lorg/json/JSONObject;
    .end local v13           #localJSONArray:Lorg/json/JSONArray;
    .restart local v8       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 218
    .local v9, e2:Ljava/lang/Exception;
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    .line 221
    .end local v9           #e2:Ljava/lang/Exception;
    .end local v15           #versionCodeFromServer:I
    .end local v16           #versionCodeInPhone:I
    :cond_9
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_3

    .line 114
    .end local v8           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v17

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->ret:I

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 242
    return-void

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doNewVersionUpdate()V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->notNewVersionShow()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->doExceptionShow()V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/update/NewCheckUpdateTask;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0071

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    return-void
.end method
