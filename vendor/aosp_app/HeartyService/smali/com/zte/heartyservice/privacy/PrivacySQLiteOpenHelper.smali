.class public Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PrivacySQLiteOpenHelper.java"


# static fields
.field public static final CUR_VERSION:I = 0x3

.field public static final ENCRY_TYPE_DIR:I = 0x8

.field public static final ENCRY_TYPE_FILE:I = 0x7

.field public static final ENCRY_TYPE_IMAGE_HEAD_WITH_BITMAP:I = 0x3

.field public static final ENCRY_TYPE_IMAGE_WITHOUT_BITMAP:I = 0x2

.field public static final ENCRY_TYPE_IMAGE_WITH_BITMAP:I = 0x1

.field public static final ENCRY_TYPE_VIDEO_HEAD_WITH_BITMAP:I = 0x6

.field public static final ENCRY_TYPE_VIDEO_WITHOUT_BITMAP:I = 0x5

.field public static final ENCRY_TYPE_VIDEO_WITH_BITMAP:I = 0x4

.field public static final ROOT_FOLDER_UUID:Ljava/lang/String; = "1"

.field public static final ROOT_IMAGE_VIDEO_UUID:Ljava/lang/String; = "2"

.field private static passwordSign:Ljava/lang/String;

.field private static rSAKeyPairExist:Z

.field public static waitInsertCalllog:Ljava/lang/Object;

.field public static waitInsertSms:Ljava/lang/Object;


# instance fields
.field public maxHandledCalllogId:I

.field public maxHandledSmsId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->rSAKeyPairExist:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->waitInsertSms:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->waitInsertCalllog:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "version"

    .prologue
    const/4 v3, -0x1

    .line 63
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "privacy.db"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    iput v3, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 57
    iput v3, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    .line 64
    return-void
.end method

.method public static getPasswordSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    sget-object v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;

    return-object v0
.end method

.method public static setPasswordSign(Ljava/lang/String;)V
    .locals 0
    .parameter "passwordSign"

    .prologue
    .line 1279
    sput-object p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;

    .line 1280
    return-void
.end method


# virtual methods
.method public final changeFolderById(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "id"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE customfolder SET name =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v2, 0x1

    .line 235
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkAndroidID()V
    .locals 13

    .prologue
    .line 882
    const/4 v10, 0x0

    .line 883
    .local v10, cur:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 885
    .local v9, AndroidIDInDB:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 886
    if-eqz v10, :cond_0

    .line 887
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 888
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 889
    const-string v0, "androidID"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 893
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v8

    .line 894
    .local v8, AndroidID:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 895
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 897
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 898
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    .line 899
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 900
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE publicinfo SET sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",calllog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",androidID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' WHERE _ID=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    .end local v11           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 915
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 918
    .end local v8           #AndroidID:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 905
    .restart local v8       #AndroidID:Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 906
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    .line 907
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 908
    .restart local v11       #db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE publicinfo SET sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",calllog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",androidID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' WHERE _ID=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 911
    .end local v8           #AndroidID:Ljava/lang/String;
    .end local v11           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v12

    .line 912
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 914
    if-eqz v10, :cond_2

    .line 915
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 914
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 915
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final deleteCallById(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 1103
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1104
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM privacycall WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1107
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 1108
    const-string v2, "chenlu"

    const-string v3, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY CallLog clear 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    const/4 v2, 0x1

    .line 1113
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 1110
    :catch_0
    move-exception v1

    .line 1111
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1113
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final deleteContectById(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 1076
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1077
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM privacycontact WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    const/4 v2, 0x1

    .line 1083
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 1080
    :catch_0
    move-exception v1

    .line 1081
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1083
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final deleteFolderById(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM customfolder WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v2, 0x1

    .line 223
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final deleteRecordById(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 265
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM privacyinfo WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    const/4 v2, 0x1

    .line 271
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final deleteSmsById(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 1088
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1089
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM privacysms WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1092
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 1093
    const-string v2, "chenlu"

    const-string v3, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY Msg clear 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    const/4 v2, 0x1

    .line 1098
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1098
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getACHashSet()Ljava/util/HashSet;
    .locals 12

    .prologue
    .line 1117
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1118
    .local v9, acHashSet:Ljava/util/HashSet;
    const/4 v10, 0x0

    .line 1120
    .local v10, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacycontact"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1121
    if-eqz v10, :cond_2

    .line 1122
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1123
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    const-string v0, "ac"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1125
    .local v8, ac:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1126
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    .end local v8           #ac:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1132
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    if-eqz v10, :cond_1

    .line 1135
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1138
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v9

    .line 1134
    :cond_2
    if-eqz v10, :cond_1

    .line 1135
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1134
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 1135
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final getAllCustomFolder()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "customfolder"

    const-string v7, "_ID"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final getCallInThread(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .parameter "task"
    .parameter "name"
    .parameter "ac"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v16, localCommonListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v13, 0x0

    .line 681
    .local v13, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "privacycall"

    const/4 v3, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ac=\'"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v17, "\'"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date desc"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 682
    if-eqz v13, :cond_4

    .line 683
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 684
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 685
    const-string v3, "cl"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 686
    .local v12, cl:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v15

    .line 687
    .local v15, keyData:[B
    const-string v3, "_ID"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 688
    .local v2, _ID:I
    const-string v3, "number"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, number:Ljava/lang/String;
    const-string v3, "date"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 690
    .local v5, date:J
    const-string v3, "duration"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 691
    .local v7, duration:I
    const-string v3, "type"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 692
    .local v8, type:I
    const-string v3, "new"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 693
    .local v9, is_new:I
    const-string v3, "mode_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 694
    .local v10, mode_id:I
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;)V

    .line 695
    .local v1, localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    if-eqz p1, :cond_2

    .line 696
    invoke-virtual/range {p1 .. p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 711
    if-eqz v13, :cond_0

    .line 712
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 715
    .end local v1           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v2           #_ID:I
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #duration:I
    .end local v8           #type:I
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v12           #cl:Ljava/lang/String;
    .end local v15           #keyData:[B
    :cond_0
    :goto_1
    return-object v16

    .line 699
    .restart local v1       #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .restart local v2       #_ID:I
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #date:J
    .restart local v7       #duration:I
    .restart local v8       #type:I
    .restart local v9       #is_new:I
    .restart local v10       #mode_id:I
    .restart local v12       #cl:Ljava/lang/String;
    .restart local v15       #keyData:[B
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 708
    .end local v1           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v2           #_ID:I
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #duration:I
    .end local v8           #type:I
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v12           #cl:Ljava/lang/String;
    .end local v15           #keyData:[B
    :catch_0
    move-exception v14

    .line 709
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    if-eqz v13, :cond_0

    .line 712
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 702
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v1       #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .restart local v2       #_ID:I
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #date:J
    .restart local v7       #duration:I
    .restart local v8       #type:I
    .restart local v9       #is_new:I
    .restart local v10       #mode_id:I
    .restart local v12       #cl:Ljava/lang/String;
    .restart local v15       #keyData:[B
    :cond_2
    :try_start_3
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 711
    .end local v1           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v2           #_ID:I
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #duration:I
    .end local v8           #type:I
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v12           #cl:Ljava/lang/String;
    .end local v15           #keyData:[B
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_3

    .line 712
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 711
    :cond_4
    if-eqz v13, :cond_0

    .line 712
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getCallLogNumInPrivacy()I
    .locals 6

    .prologue
    .line 1304
    const/4 v0, 0x0

    .line 1307
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT COUNT(*) AS num FROM privacycall where (type=3 AND new=1)"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1308
    if-eqz v0, :cond_1

    .line 1309
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1310
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1311
    const-string v3, "num"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1318
    .local v2, num:I
    if-eqz v0, :cond_0

    .line 1319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1322
    .end local v2           #num:I
    :cond_0
    :goto_0
    return v2

    .line 1318
    :cond_1
    if-eqz v0, :cond_2

    .line 1319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1322
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1318
    if-eqz v0, :cond_2

    .line 1319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1318
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 1319
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public final getCallThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;
    .locals 29
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v24, localCommonListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v15, 0x0

    .line 589
    .local v15, cur:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 590
    .local v16, cur2:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 592
    .local v17, cur3:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "privacycall"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ac"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date desc"

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 593
    if-eqz v15, :cond_f

    .line 594
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 595
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 596
    const-string v2, "ac"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 597
    .local v11, ac:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM privacycall WHERE date=(SELECT MAX(date) from privacycall WHERE ac=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 598
    if-eqz v16, :cond_0

    .line 599
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 600
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 601
    const-string v2, "cl"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 602
    .local v13, cl:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v22

    .line 603
    .local v22, keyData:[B
    const-string v2, "_ID"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 604
    .local v12, _ID:I
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v27

    .line 605
    .local v27, number:Ljava/lang/String;
    const-string v2, "date"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 606
    .local v18, date:J
    const-string v2, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 607
    .local v20, duration:I
    const-string v2, "type"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 608
    .local v28, type:I
    const-string v2, "new"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 609
    .local v9, is_new:I
    const-string v2, "mode_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 610
    .local v10, mode_id:I
    const/16 v25, 0x0

    .line 612
    .local v25, name:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "privacycontact"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ac=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 613
    if-eqz v17, :cond_13

    .line 614
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_12

    .line 615
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 616
    const-string v2, "cl"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 617
    .local v14, cl2:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v23

    .line 618
    .local v23, keyData2:[B
    const-string v2, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    .line 619
    .local v26, name2:Ljava/lang/String;
    if-eqz v26, :cond_12

    .line 620
    move-object/from16 v3, v26

    .line 623
    .end local v14           #cl2:Ljava/lang/String;
    .end local v23           #keyData2:[B
    .end local v25           #name:Ljava/lang/String;
    .end local v26           #name2:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 624
    const/16 v17, 0x0

    .line 629
    :goto_2
    if-eqz v17, :cond_1

    .line 630
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 631
    const/16 v17, 0x0

    .line 634
    :cond_1
    :goto_3
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;

    move v2, v12

    move-object/from16 v4, v27

    move-wide/from16 v5, v18

    move/from16 v7, v20

    move/from16 v8, v28

    invoke-direct/range {v1 .. v11}, Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;JIIIILjava/lang/String;)V

    .line 635
    .local v1, localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    if-eqz p1, :cond_a

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    if-eqz v2, :cond_8

    .line 656
    if-eqz v15, :cond_2

    .line 657
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_2
    if-eqz v16, :cond_3

    .line 660
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_3
    if-eqz v17, :cond_4

    .line 663
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 666
    .end local v1           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #_ID:I
    .end local v13           #cl:Ljava/lang/String;
    .end local v18           #date:J
    .end local v20           #duration:I
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #type:I
    :cond_4
    :goto_4
    return-object v24

    .line 626
    .restart local v9       #is_new:I
    .restart local v10       #mode_id:I
    .restart local v11       #ac:Ljava/lang/String;
    .restart local v12       #_ID:I
    .restart local v13       #cl:Ljava/lang/String;
    .restart local v18       #date:J
    .restart local v20       #duration:I
    .restart local v22       #keyData:[B
    .restart local v25       #name:Ljava/lang/String;
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #type:I
    :catch_0
    move-exception v21

    move-object/from16 v3, v25

    .line 627
    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .local v21, e:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 629
    if-eqz v17, :cond_1

    .line 630
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 631
    const/16 v17, 0x0

    goto :goto_3

    .line 629
    .end local v3           #name:Ljava/lang/String;
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v25       #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v3, v25

    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    :goto_6
    if-eqz v17, :cond_5

    .line 630
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 631
    const/16 v17, 0x0

    :cond_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 653
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #_ID:I
    .end local v13           #cl:Ljava/lang/String;
    .end local v18           #date:J
    .end local v20           #duration:I
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #type:I
    :catch_1
    move-exception v21

    .line 654
    .restart local v21       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 656
    if-eqz v15, :cond_6

    .line 657
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_6
    if-eqz v16, :cond_7

    .line 660
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_7
    if-eqz v17, :cond_4

    .line 663
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 639
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v1       #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v9       #is_new:I
    .restart local v10       #mode_id:I
    .restart local v11       #ac:Ljava/lang/String;
    .restart local v12       #_ID:I
    .restart local v13       #cl:Ljava/lang/String;
    .restart local v18       #date:J
    .restart local v20       #duration:I
    .restart local v22       #keyData:[B
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #type:I
    :cond_8
    :try_start_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 645
    .end local v1           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v12           #_ID:I
    .end local v13           #cl:Ljava/lang/String;
    .end local v18           #date:J
    .end local v20           #duration:I
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #type:I
    :cond_9
    :goto_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 646
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 642
    .restart local v1       #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v9       #is_new:I
    .restart local v10       #mode_id:I
    .restart local v12       #_ID:I
    .restart local v13       #cl:Ljava/lang/String;
    .restart local v18       #date:J
    .restart local v20       #duration:I
    .restart local v22       #keyData:[B
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #type:I
    :cond_a
    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    .line 656
    .end local v1           #localPrivacyCallRecordListItem:Lcom/zte/heartyservice/privacy/PrivacyCallRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #is_new:I
    .end local v10           #mode_id:I
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #_ID:I
    .end local v13           #cl:Ljava/lang/String;
    .end local v18           #date:J
    .end local v20           #duration:I
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #type:I
    :catchall_1
    move-exception v2

    if-eqz v15, :cond_b

    .line 657
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_b
    if-eqz v16, :cond_c

    .line 660
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_c
    if-eqz v17, :cond_d

    .line 663
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 650
    :cond_e
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 651
    const/4 v15, 0x0

    .line 656
    :cond_f
    if-eqz v15, :cond_10

    .line 657
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_10
    if-eqz v16, :cond_11

    .line 660
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_11
    if-eqz v17, :cond_4

    .line 663
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 629
    .restart local v3       #name:Ljava/lang/String;
    .restart local v9       #is_new:I
    .restart local v10       #mode_id:I
    .restart local v11       #ac:Ljava/lang/String;
    .restart local v12       #_ID:I
    .restart local v13       #cl:Ljava/lang/String;
    .restart local v18       #date:J
    .restart local v20       #duration:I
    .restart local v22       #keyData:[B
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #type:I
    :catchall_2
    move-exception v2

    goto :goto_6

    .line 626
    :catch_2
    move-exception v21

    goto :goto_5

    .end local v3           #name:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    :cond_12
    move-object/from16 v3, v25

    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto/16 :goto_1

    .end local v3           #name:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    :cond_13
    move-object/from16 v3, v25

    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public final getContacts(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;
    .locals 21
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v17, localCommonListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v14, 0x0

    .line 924
    .local v14, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "privacycontact"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "_ID asc"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 925
    if-eqz v14, :cond_4

    .line 926
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 927
    const-string v3, "cl"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, cl:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v16

    .line 929
    .local v16, keyData:[B
    const-string v3, "_ID"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 930
    .local v11, _ID:I
    const-string v3, "name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v19

    .line 931
    .local v19, name:Ljava/lang/String;
    const-string v3, "number"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v20

    .line 932
    .local v20, number:Ljava/lang/String;
    const-string v3, "ac"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 933
    .local v12, ac:Ljava/lang/String;
    new-instance v18, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v11, v1, v2, v12}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .local v18, localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    if-eqz p1, :cond_2

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 948
    if-eqz v14, :cond_0

    .line 949
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 952
    .end local v11           #_ID:I
    .end local v12           #ac:Ljava/lang/String;
    .end local v13           #cl:Ljava/lang/String;
    .end local v16           #keyData:[B
    .end local v18           #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #number:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v17

    .line 938
    .restart local v11       #_ID:I
    .restart local v12       #ac:Ljava/lang/String;
    .restart local v13       #cl:Ljava/lang/String;
    .restart local v16       #keyData:[B
    .restart local v18       #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .restart local v19       #name:Ljava/lang/String;
    .restart local v20       #number:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 945
    .end local v11           #_ID:I
    .end local v12           #ac:Ljava/lang/String;
    .end local v13           #cl:Ljava/lang/String;
    .end local v16           #keyData:[B
    .end local v18           #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #number:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 946
    .local v15, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    if-eqz v14, :cond_0

    .line 949
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 941
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v11       #_ID:I
    .restart local v12       #ac:Ljava/lang/String;
    .restart local v13       #cl:Ljava/lang/String;
    .restart local v16       #keyData:[B
    .restart local v18       #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .restart local v19       #name:Ljava/lang/String;
    .restart local v20       #number:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 948
    .end local v11           #_ID:I
    .end local v12           #ac:Ljava/lang/String;
    .end local v13           #cl:Ljava/lang/String;
    .end local v16           #keyData:[B
    .end local v18           #localPrivacyContactListItem:Lcom/zte/heartyservice/privacy/PrivacyContactListItem;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #number:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_3

    .line 949
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 948
    :cond_4
    if-eqz v14, :cond_0

    .line 949
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getKeyType()I
    .locals 11

    .prologue
    .line 1222
    const/4 v8, 0x0

    .line 1224
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1225
    if-eqz v8, :cond_1

    .line 1226
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1227
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1228
    const-string v0, "key_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1235
    .local v10, keyType:I
    if-eqz v8, :cond_0

    .line 1236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1239
    .end local v10           #keyType:I
    :cond_0
    :goto_0
    return v10

    .line 1235
    :cond_1
    if-eqz v8, :cond_2

    .line 1236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1239
    :cond_2
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v9

    .line 1233
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    if-eqz v8, :cond_2

    .line 1236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1235
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1236
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getMaxHandledCalllogId()I
    .locals 14

    .prologue
    const/4 v12, -0x1

    .line 834
    sget-object v13, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->waitUpdateMaxHandledCallId:Ljava/lang/Object;

    monitor-enter v13

    .line 835
    :try_start_0
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v12, :cond_5

    .line 836
    const/4 v10, 0x0

    .line 838
    .local v10, cur:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 839
    if-eqz v10, :cond_3

    .line 840
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 841
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 842
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v8

    .line 843
    .local v8, AndroidID:Ljava/lang/String;
    const-string v0, "androidID"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 844
    .local v9, AndroidIDInDB:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    const-string v0, "sms"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 847
    const-string v0, "calllog"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    .line 852
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 858
    if-eqz v10, :cond_0

    .line 859
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 864
    .end local v8           #AndroidID:Ljava/lang/String;
    .end local v9           #AndroidIDInDB:Ljava/lang/String;
    .end local v10           #cur:Landroid/database/Cursor;
    :goto_1
    return v0

    .line 849
    .restart local v8       #AndroidID:Ljava/lang/String;
    .restart local v9       #AndroidIDInDB:Ljava/lang/String;
    .restart local v10       #cur:Landroid/database/Cursor;
    :cond_1
    const/4 v0, -0x1

    :try_start_3
    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 855
    .end local v8           #AndroidID:Ljava/lang/String;
    .end local v9           #AndroidIDInDB:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 856
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 858
    if-eqz v10, :cond_2

    .line 859
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 862
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    monitor-exit v13

    move v0, v12

    goto :goto_1

    .line 858
    :cond_3
    if-eqz v10, :cond_2

    .line 859
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 866
    .end local v10           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 858
    .restart local v10       #cur:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_4

    .line 859
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 864
    .end local v10           #cur:Landroid/database/Cursor;
    :cond_5
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public getMaxHandledSmsId()I
    .locals 14

    .prologue
    const/4 v12, -0x1

    .line 785
    sget-object v13, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->waitUpdateMaxHandledSmsId:Ljava/lang/Object;

    monitor-enter v13

    .line 786
    :try_start_0
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v12, :cond_5

    .line 787
    const/4 v10, 0x0

    .line 789
    .local v10, cur:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 790
    if-eqz v10, :cond_3

    .line 791
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 792
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 793
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v8

    .line 794
    .local v8, AndroidID:Ljava/lang/String;
    const-string v0, "androidID"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 795
    .local v9, AndroidIDInDB:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    const-string v0, "sms"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 798
    const-string v0, "calllog"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    .line 804
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    if-eqz v10, :cond_0

    .line 811
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 816
    .end local v8           #AndroidID:Ljava/lang/String;
    .end local v9           #AndroidIDInDB:Ljava/lang/String;
    .end local v10           #cur:Landroid/database/Cursor;
    :goto_1
    return v0

    .line 800
    .restart local v8       #AndroidID:Ljava/lang/String;
    .restart local v9       #AndroidIDInDB:Ljava/lang/String;
    .restart local v10       #cur:Landroid/database/Cursor;
    :cond_1
    const/4 v0, -0x1

    :try_start_3
    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 801
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 807
    .end local v8           #AndroidID:Ljava/lang/String;
    .end local v9           #AndroidIDInDB:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 808
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 810
    if-eqz v10, :cond_2

    .line 811
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 814
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    monitor-exit v13

    move v0, v12

    goto :goto_1

    .line 810
    :cond_3
    if-eqz v10, :cond_2

    .line 811
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 818
    .end local v10           #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 810
    .restart local v10       #cur:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    if-eqz v10, :cond_4

    .line 811
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 816
    .end local v10           #cur:Landroid/database/Cursor;
    :cond_5
    iget v0, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public getMsgNumInPrivacy()I
    .locals 6

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1285
    .local v0, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT COUNT(*) AS num FROM privacysms where type=1 AND read=0"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1286
    if-eqz v0, :cond_1

    .line 1287
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1288
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1289
    const-string v3, "num"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1296
    .local v2, num:I
    if-eqz v0, :cond_0

    .line 1297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1300
    .end local v2           #num:I
    :cond_0
    :goto_0
    return v2

    .line 1296
    :cond_1
    if-eqz v0, :cond_2

    .line 1297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1300
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v1

    .line 1294
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1296
    if-eqz v0, :cond_2

    .line 1297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1296
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 1297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1243
    const/4 v8, 0x0

    .line 1245
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1246
    if-eqz v8, :cond_6

    .line 1247
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_6

    .line 1248
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1249
    const-string v0, "privateKey"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1250
    .local v11, privateKeyStr:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 1267
    if-eqz v8, :cond_0

    .line 1268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v12

    .line 1271
    .end local v11           #privateKeyStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 1253
    .restart local v11       #privateKeyStr:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "old_version"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1254
    .local v10, old_version:I
    if-ne v10, v13, :cond_5

    .line 1255
    invoke-static {v11}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updatePrivateKeyStr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 1256
    if-nez v11, :cond_4

    .line 1267
    if-eqz v8, :cond_3

    .line 1268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v12

    goto :goto_0

    .line 1259
    :cond_4
    :try_start_2
    sget-object v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v11, v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->savePrivateKey(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1261
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v11, v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->readKey4Str(Ljava/lang/String;ZI)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1267
    if-eqz v8, :cond_1

    .line 1268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1267
    .end local v10           #old_version:I
    .end local v11           #privateKeyStr:Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_7

    .line 1268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_1
    move-object v0, v12

    .line 1271
    goto :goto_0

    .line 1264
    :catch_0
    move-exception v9

    .line 1265
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1267
    if-eqz v8, :cond_7

    .line 1268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1267
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_8

    .line 1268
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1196
    const/4 v8, 0x0

    .line 1198
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "publicinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1199
    if-eqz v8, :cond_3

    .line 1200
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 1201
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1202
    const-string v0, "publicKey"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1203
    .local v10, publicKeyStr:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 1214
    if-eqz v8, :cond_0

    .line 1215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v11

    .line 1218
    .end local v10           #publicKeyStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 1206
    .restart local v10       #publicKeyStr:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "ac"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;

    .line 1207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setRSAKeyPairExist(Z)V

    .line 1208
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->readKey4Str(Ljava/lang/String;ZI)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1214
    if-eqz v8, :cond_1

    .line 1215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1214
    .end local v10           #publicKeyStr:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 1215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v11

    .line 1218
    goto :goto_0

    .line 1211
    :catch_0
    move-exception v9

    .line 1212
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1214
    if-eqz v8, :cond_4

    .line 1215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1214
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 1215
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public final getRecords()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacyinfo"

    const-string v3, "uuid!=\'2\'"

    const-string v7, "_ID"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final getRecordsInFolder(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uuid"

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacyinfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "_ID"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final getSms(Ljava/lang/String;Ljava/lang/String;J)Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .locals 18
    .parameter "name"
    .parameter "ac"
    .parameter "date"

    .prologue
    .line 432
    const/4 v15, 0x0

    .line 434
    .local v15, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "privacysms"

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ac=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 435
    if-eqz v15, :cond_1

    .line 436
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 437
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    const-string v2, "cl"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 439
    .local v14, cl:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v17

    .line 440
    .local v17, keyData:[B
    const-string v2, "_ID"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 441
    .local v3, _ID:I
    const-string v2, "address"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, number:Ljava/lang/String;
    const-string v2, "read"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 443
    .local v8, read:I
    const-string v2, "type"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 444
    .local v9, type:I
    const-string v2, "subject"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, subject:Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .line 446
    .local v11, body:Ljava/lang/String;
    const-string v2, "sub_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 447
    .local v12, sub_id:I
    new-instance v2, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v13, p2

    invoke-direct/range {v2 .. v13}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    if-eqz v15, :cond_0

    .line 455
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 458
    .end local v3           #_ID:I
    .end local v5           #number:Ljava/lang/String;
    .end local v8           #read:I
    .end local v9           #type:I
    .end local v10           #subject:Ljava/lang/String;
    .end local v11           #body:Ljava/lang/String;
    .end local v12           #sub_id:I
    .end local v14           #cl:Ljava/lang/String;
    .end local v17           #keyData:[B
    :cond_0
    :goto_0
    return-object v2

    .line 454
    :cond_1
    if-eqz v15, :cond_2

    .line 455
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v16

    .line 452
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    if-eqz v15, :cond_2

    .line 455
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 454
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_3

    .line 455
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public final getSmsInThread(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .parameter "name"
    .parameter "ac"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    const-string v3, "randomKey"

    const-string v12, "getSmsInThread begin"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v17, localCommonListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v14, 0x0

    .line 399
    .local v14, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "privacysms"

    const/4 v3, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ac=\'"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, "\'"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date asc"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 400
    if-eqz v14, :cond_1

    .line 401
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 402
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    const-string v3, "cl"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 404
    .local v13, cl:Ljava/lang/String;
    const-string v3, "randomKey"

    const-string v12, "randomKey begin"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v16

    .line 406
    .local v16, keyData:[B
    const-string v3, "randomKey"

    const-string v12, "randomKey end"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v3, "_ID"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 408
    .local v2, _ID:I
    const-string v3, "address"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, number:Ljava/lang/String;
    const-string v3, "date"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 410
    .local v5, date:J
    const-string v3, "read"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 411
    .local v7, read:I
    const-string v3, "type"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 412
    .local v8, type:I
    const-string v3, "subject"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, subject:Ljava/lang/String;
    const-string v3, "body"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, body:Ljava/lang/String;
    const-string v3, "sub_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 415
    .local v11, sub_id:I
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    .local v1, localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 420
    .end local v1           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v2           #_ID:I
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #date:J
    .end local v7           #read:I
    .end local v8           #type:I
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v13           #cl:Ljava/lang/String;
    .end local v16           #keyData:[B
    :catch_0
    move-exception v15

    .line 421
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    if-eqz v14, :cond_0

    .line 424
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 427
    .end local v15           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v3, "randomKey"

    const-string v12, "getSmsInThread end"

    invoke-static {v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-object v17

    .line 423
    :cond_1
    if-eqz v14, :cond_0

    .line 424
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 423
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_2

    .line 424
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method public final getSmsThreads(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Ljava/util/List;
    .locals 30
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v24, localCommonListItemList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/16 v16, 0x0

    .line 287
    .local v16, cur:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 288
    .local v17, cur2:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 290
    .local v18, cur3:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "privacysms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ac"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date desc"

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 291
    if-eqz v16, :cond_f

    .line 292
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_e

    .line 293
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 294
    const-string v2, "ac"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, ac:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM privacysms WHERE date=(SELECT MAX(date) from privacysms WHERE ac=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 296
    if-eqz v17, :cond_0

    .line 297
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 298
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 299
    const-string v2, "cl"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 300
    .local v14, cl:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v22

    .line 301
    .local v22, keyData:[B
    const-string v2, "_ID"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 302
    .local v13, _ID:I
    const-string v2, "address"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v27

    .line 303
    .local v27, number:Ljava/lang/String;
    const-string v2, "date"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 304
    .local v19, date:J
    const-string v2, "read"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 305
    .local v28, read:I
    const-string v2, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 306
    .local v29, type:I
    const-string v2, "subject"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, subject:Ljava/lang/String;
    const-string v2, "body"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, body:Ljava/lang/String;
    const-string v2, "sub_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 309
    .local v11, sub_id:I
    const/16 v25, 0x0

    .line 311
    .local v25, name:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "privacycontact"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ac=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 312
    if-eqz v18, :cond_13

    .line 313
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_12

    .line 314
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    const-string v2, "cl"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 316
    .local v15, cl2:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v23

    .line 317
    .local v23, keyData2:[B
    const-string v2, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    .line 318
    .local v26, name2:Ljava/lang/String;
    if-eqz v26, :cond_12

    .line 319
    move-object/from16 v3, v26

    .line 322
    .end local v15           #cl2:Ljava/lang/String;
    .end local v23           #keyData2:[B
    .end local v25           #name:Ljava/lang/String;
    .end local v26           #name2:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 323
    const/16 v18, 0x0

    .line 328
    :goto_2
    if-eqz v18, :cond_1

    .line 329
    :try_start_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 330
    const/16 v18, 0x0

    .line 333
    :cond_1
    :goto_3
    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    move v2, v13

    move-object/from16 v4, v27

    move-wide/from16 v5, v19

    move/from16 v7, v28

    move/from16 v8, v29

    invoke-direct/range {v1 .. v12}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;-><init>(ILjava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    .local v1, localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    if-eqz p1, :cond_a

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v2

    if-eqz v2, :cond_8

    .line 355
    if-eqz v16, :cond_2

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_2
    if-eqz v17, :cond_3

    .line 359
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_3
    if-eqz v18, :cond_4

    .line 362
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 365
    .end local v1           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v12           #ac:Ljava/lang/String;
    .end local v13           #_ID:I
    .end local v14           #cl:Ljava/lang/String;
    .end local v19           #date:J
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #read:I
    .end local v29           #type:I
    :cond_4
    :goto_4
    return-object v24

    .line 325
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #sub_id:I
    .restart local v12       #ac:Ljava/lang/String;
    .restart local v13       #_ID:I
    .restart local v14       #cl:Ljava/lang/String;
    .restart local v19       #date:J
    .restart local v22       #keyData:[B
    .restart local v25       #name:Ljava/lang/String;
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #read:I
    .restart local v29       #type:I
    :catch_0
    move-exception v21

    move-object/from16 v3, v25

    .line 326
    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .local v21, e:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 328
    if-eqz v18, :cond_1

    .line 329
    :try_start_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 330
    const/16 v18, 0x0

    goto :goto_3

    .line 328
    .end local v3           #name:Ljava/lang/String;
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v25       #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v3, v25

    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    :goto_6
    if-eqz v18, :cond_5

    .line 329
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 330
    const/16 v18, 0x0

    :cond_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 352
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v12           #ac:Ljava/lang/String;
    .end local v13           #_ID:I
    .end local v14           #cl:Ljava/lang/String;
    .end local v19           #date:J
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #read:I
    .end local v29           #type:I
    :catch_1
    move-exception v21

    .line 353
    .restart local v21       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 355
    if-eqz v16, :cond_6

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_6
    if-eqz v17, :cond_7

    .line 359
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_7
    if-eqz v18, :cond_4

    .line 362
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 338
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v1       #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #sub_id:I
    .restart local v12       #ac:Ljava/lang/String;
    .restart local v13       #_ID:I
    .restart local v14       #cl:Ljava/lang/String;
    .restart local v19       #date:J
    .restart local v22       #keyData:[B
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #read:I
    .restart local v29       #type:I
    :cond_8
    :try_start_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 344
    .end local v1           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v13           #_ID:I
    .end local v14           #cl:Ljava/lang/String;
    .end local v19           #date:J
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #read:I
    .end local v29           #type:I
    :cond_9
    :goto_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 345
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 341
    .restart local v1       #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #sub_id:I
    .restart local v13       #_ID:I
    .restart local v14       #cl:Ljava/lang/String;
    .restart local v19       #date:J
    .restart local v22       #keyData:[B
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #read:I
    .restart local v29       #type:I
    :cond_a
    move-object/from16 v0, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    .line 355
    .end local v1           #localPrivacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    .end local v3           #name:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v11           #sub_id:I
    .end local v12           #ac:Ljava/lang/String;
    .end local v13           #_ID:I
    .end local v14           #cl:Ljava/lang/String;
    .end local v19           #date:J
    .end local v22           #keyData:[B
    .end local v27           #number:Ljava/lang/String;
    .end local v28           #read:I
    .end local v29           #type:I
    :catchall_1
    move-exception v2

    if-eqz v16, :cond_b

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_b
    if-eqz v17, :cond_c

    .line 359
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_c
    if-eqz v18, :cond_d

    .line 362
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 349
    :cond_e
    :try_start_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 350
    const/16 v16, 0x0

    .line 355
    :cond_f
    if-eqz v16, :cond_10

    .line 356
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_10
    if-eqz v17, :cond_11

    .line 359
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_11
    if-eqz v18, :cond_4

    .line 362
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 328
    .restart local v3       #name:Ljava/lang/String;
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v11       #sub_id:I
    .restart local v12       #ac:Ljava/lang/String;
    .restart local v13       #_ID:I
    .restart local v14       #cl:Ljava/lang/String;
    .restart local v19       #date:J
    .restart local v22       #keyData:[B
    .restart local v27       #number:Ljava/lang/String;
    .restart local v28       #read:I
    .restart local v29       #type:I
    :catchall_2
    move-exception v2

    goto :goto_6

    .line 325
    :catch_2
    move-exception v21

    goto :goto_5

    .end local v3           #name:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    :cond_12
    move-object/from16 v3, v25

    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto/16 :goto_1

    .end local v3           #name:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    :cond_13
    move-object/from16 v3, v25

    .end local v25           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public final insertCall(Ljava/lang/String;JIIII)Z
    .locals 10
    .parameter "number"
    .parameter "date"
    .parameter "duration"
    .parameter "type"
    .parameter "is_new"
    .parameter "modeId"

    .prologue
    .line 720
    :try_start_0
    sget-object v8, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->waitInsertCalllog:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :try_start_1
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, p3, v7}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isCalllogExist(JLjava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 723
    const/4 v7, 0x1

    monitor-exit v8

    .line 737
    :goto_0
    return v7

    .line 725
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v6

    .line 726
    .local v6, keyData:[B
    invoke-static {p1, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, encry_number:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, ac:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, cl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 730
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO privacycall (number,ac,date,duration,type,new,mode_Id,cl) VALUES(\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\',\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\',"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\')"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    monitor-exit v8

    .line 733
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 732
    .end local v1           #ac:Ljava/lang/String;
    .end local v2           #cl:Ljava/lang/String;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #encry_number:Ljava/lang/String;
    .end local v6           #keyData:[B
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 734
    :catch_0
    move-exception v4

    .line 735
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 737
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public final insertContact(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "name"
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    .line 1014
    :try_start_0
    invoke-static {p2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isContactExist(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v7, :cond_0

    .line 1030
    :goto_0
    return v7

    .line 1018
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v6

    .line 1019
    .local v6, keyData:[B
    invoke-static {p1, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 1020
    .local v4, encry_name:Ljava/lang/String;
    invoke-static {p2, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 1021
    .local v5, encry_number:Ljava/lang/String;
    invoke-static {p2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, ac:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, cl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1024
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INSERT INTO privacycontact (name,number,ac,cl) VALUES(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1027
    .end local v0           #ac:Ljava/lang/String;
    .end local v1           #cl:Ljava/lang/String;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #encry_name:Ljava/lang/String;
    .end local v5           #encry_number:Ljava/lang/String;
    .end local v6           #keyData:[B
    :catch_0
    move-exception v3

    .line 1028
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1030
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public final insertFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "paramSQLiteDatabase"
    .parameter "name"
    .parameter "uuid"

    .prologue
    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO customfolder (name,uuid) VALUES (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final insertFolder(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO customfolder (name,uuid) VALUES (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const/4 v1, 0x1

    .line 201
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v1

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final insertRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;I[B)Z
    .locals 8
    .parameter "name"
    .parameter "op"
    .parameter "nn"
    .parameter "ot"
    .parameter "hs"
    .parameter "uuid"
    .parameter "tp"
    .parameter "keyData"

    .prologue
    .line 248
    :try_start_0
    move-object/from16 v0, p10

    invoke-static {p1, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, encry_name:Ljava/lang/String;
    move-object/from16 v0, p10

    invoke-static {p2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, encry_op:Ljava/lang/String;
    move-object/from16 v0, p10

    invoke-static {p3, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, encry_nn:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p10

    invoke-static {v0, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, cl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 253
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO privacyinfo (name,op,nn,ot,hs,uuid,tp,cl) VALUES(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    const/4 v6, 0x1

    .line 259
    .end local v1           #cl:Ljava/lang/String;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #encry_name:Ljava/lang/String;
    .end local v4           #encry_nn:Ljava/lang/String;
    .end local v5           #encry_op:Ljava/lang/String;
    :goto_0
    return v6

    .line 256
    :catch_0
    move-exception v6

    .line 259
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final insertSms(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .parameter "address"
    .parameter "date"
    .parameter "read"
    .parameter "type"
    .parameter "subject"
    .parameter "body"
    .parameter "sub_id"

    .prologue
    .line 463
    :try_start_0
    sget-object v10, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->waitInsertSms:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :try_start_1
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, p3, v9}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isSmsExist(JLjava/lang/String;)Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    .line 466
    const/4 v9, 0x1

    monitor-exit v10

    .line 482
    :goto_0
    return v9

    .line 468
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v8

    .line 469
    .local v8, keyData:[B
    invoke-static {p1, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, encry_address:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, ac:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-static {v0, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, encry_subject:Ljava/lang/String;
    move-object/from16 v0, p7

    invoke-static {v0, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, encry_body:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, cl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 475
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INSERT INTO privacysms (address,ac,date,read,type,subject,body,sub_id,cl) VALUES(\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\',\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\',"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\',\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\',"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",\'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\')"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    monitor-exit v10

    .line 478
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 477
    .end local v1           #ac:Ljava/lang/String;
    .end local v2           #cl:Ljava/lang/String;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #encry_address:Ljava/lang/String;
    .end local v6           #encry_body:Ljava/lang/String;
    .end local v7           #encry_subject:Ljava/lang/String;
    .end local v8           #keyData:[B
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 479
    :catch_0
    move-exception v4

    .line 480
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public final isCalllogExist(JLjava/lang/String;)Z
    .locals 10
    .parameter "date"
    .parameter "ac"

    .prologue
    .line 994
    const/4 v8, 0x0

    .line 996
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacycall"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and ac=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 997
    if-eqz v8, :cond_1

    .line 998
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 999
    const/4 v0, 0x1

    .line 1005
    if-eqz v8, :cond_0

    .line 1006
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 1005
    :cond_1
    if-eqz v8, :cond_2

    .line 1006
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1009
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1002
    :catch_0
    move-exception v9

    .line 1003
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    if-eqz v8, :cond_2

    .line 1006
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1005
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1006
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final isContactExist(Ljava/lang/String;)Z
    .locals 10
    .parameter "ac"

    .prologue
    .line 956
    const/4 v8, 0x0

    .line 958
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacycontact"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ac=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 959
    if-eqz v8, :cond_1

    .line 960
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 961
    const/4 v0, 0x1

    .line 967
    if-eqz v8, :cond_0

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 967
    :cond_1
    if-eqz v8, :cond_2

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 971
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 964
    :catch_0
    move-exception v9

    .line 965
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    if-eqz v8, :cond_2

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 967
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 968
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final isFileExist(Ljava/lang/String;)Z
    .locals 10
    .parameter "nn"

    .prologue
    .line 1351
    const/4 v8, 0x0

    .line 1353
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacyinfo"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nn=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1355
    if-eqz v8, :cond_1

    .line 1356
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 1357
    const/4 v0, 0x1

    .line 1363
    if-eqz v8, :cond_0

    .line 1364
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1367
    :cond_0
    :goto_0
    return v0

    .line 1363
    :cond_1
    if-eqz v8, :cond_2

    .line 1364
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1367
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v9

    .line 1361
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1363
    if-eqz v8, :cond_2

    .line 1364
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1363
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1364
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final isPasswordRecordExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "key"
    .parameter "account_description"

    .prologue
    .line 1327
    const/4 v8, 0x0

    .line 1329
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "passwordprotector"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and account_description=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1335
    if-eqz v8, :cond_1

    .line 1336
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 1337
    const/4 v0, 0x1

    .line 1343
    if-eqz v8, :cond_0

    .line 1344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1347
    :cond_0
    :goto_0
    return v0

    .line 1343
    :cond_1
    if-eqz v8, :cond_2

    .line 1344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1347
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v9

    .line 1341
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1343
    if-eqz v8, :cond_2

    .line 1344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1343
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1344
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isRSAKeyPairExist()Z
    .locals 1

    .prologue
    .line 1169
    sget-boolean v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->rSAKeyPairExist:Z

    return v0
.end method

.method public final isSmsExist(JLjava/lang/String;)Z
    .locals 10
    .parameter "date"
    .parameter "ac"

    .prologue
    .line 975
    const/4 v8, 0x0

    .line 977
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "privacysms"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and ac=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 980
    const/4 v0, 0x1

    .line 986
    if-eqz v8, :cond_0

    .line 987
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_0
    :goto_0
    return v0

    .line 986
    :cond_1
    if-eqz v8, :cond_2

    .line 987
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 983
    :catch_0
    move-exception v9

    .line 984
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 986
    if-eqz v8, :cond_2

    .line 987
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 986
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 987
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final modifyContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "name"
    .parameter "number"
    .parameter "ac"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1035
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v5

    .line 1036
    .local v5, keyData:[B
    invoke-static {p1, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, encry_name:Ljava/lang/String;
    invoke-static {p2, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, encry_number:Ljava/lang/String;
    invoke-static {p2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1039
    .local v6, newac:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, cl:Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isContactExist(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1043
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPDATE privacycontact SET name=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',number=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',ac=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\',cl=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' WHERE ac=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v0           #cl:Ljava/lang/String;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #encry_name:Ljava/lang/String;
    .end local v4           #encry_number:Ljava/lang/String;
    .end local v5           #keyData:[B
    .end local v6           #newac:Ljava/lang/String;
    :goto_0
    return v7

    .restart local v0       #cl:Ljava/lang/String;
    .restart local v3       #encry_name:Ljava/lang/String;
    .restart local v4       #encry_number:Ljava/lang/String;
    .restart local v5       #keyData:[B
    .restart local v6       #newac:Ljava/lang/String;
    :cond_0
    move v7, v8

    .line 1046
    goto :goto_0

    .line 1049
    .end local v0           #cl:Ljava/lang/String;
    .end local v3           #encry_name:Ljava/lang/String;
    .end local v4           #encry_number:Ljava/lang/String;
    .end local v5           #keyData:[B
    .end local v6           #newac:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1050
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v8

    .line 1052
    goto :goto_0
.end method

.method public moveFile2Root(Ljava/lang/String;)V
    .locals 3
    .parameter "uuid"

    .prologue
    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE privacyinfo SET uuid=\'1\' WHERE uuid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 68
    const-string v0, "CREATE TABLE customfolder (_ID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, uuid TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "CREATE TABLE privacyinfo (_ID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, op TEXT, nn TEXT, ot INTEGER, hs INTEGER, uuid TEXT, tp INTEGER, cl TEXT, wh INTEGER DEFAULT 0, version INTEGER DEFAULT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE TABLE privacycontact (_ID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, number TEXT, ac TEXT, cl TEXT, version INTEGER DEFAULT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "CREATE TABLE privacysms (_ID INTEGER PRIMARY KEY AUTOINCREMENT, id INTEGER, thread_id INTEGER, address TEXT, ac TEXT, person INTEGER, date INTEGER, date_sent INTEGER DEFAULT 0, protocal INTEGER, read INTEGER DEFAULT 0, status INTEGER DEFAULT -1, type INTEGER, reply_path_present INTEGER, subject TEXT, body TEXT, service_center TEXT, service_date INTERGER, dest_port INTEGER, locked INTEGER DEFAULT 0, sub_id INTEGER DEFAULT 0, error_code INTEGER DEFAULT 0, seen INTEGER DEFAULT 0, recipient_cc_ids TEXT, recipient_bcc_ids TEXT, sms_pdu TEXT, expiry INTEGER DEFAULT 0, sim_index INTEGER DEFAULT 0, expand TEXT, pre_address TEXT, name TEXT, cl TEXT, version INTEGER DEFAULT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "CREATE TABLE privacycall (_ID INTEGER PRIMARY KEY AUTOINCREMENT, id INTEGER, number TEXT, ac TEXT, date INTEGER, duration INTEGER, type INTEGER, new INTEGER, name TEXT, numbertype INTEGER, numberlabel TEXT, countryiso TEXT, voicemail_uri TEXT, is_read INTEGER, geocoded_location TEXT, lookup_uri TEXT, matched_number TEXT, normalized_number TEXT, photo_id INTEGER DEFAULT 0 NOT NULL, formatted_number TEXT, mode_id INTEGER DEFAULT 1 NOT NULL, _data TEXT, has_content INTEGER, mime_type TEXT, source_data TEXT, source_package TEXT, state INTEGER, name_privacy TEXT, cl TEXT, version INTEGER DEFAULT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "CREATE TABLE publicinfo (_ID INTEGER PRIMARY KEY, sms INTEGER, calllog INTEGER, publicKey TEXT, privateKey TEXT , ac TEXT, androidID TEXT, old_version INTEGER NOT NULL, key_type INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "REPLACE INTO publicinfo (_ID, old_version) VALUES (1,3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v0, "CREATE TABLE passwordprotector (_id INTEGER PRIMARY KEY AUTOINCREMENT, key TEXT, account_type INTEGER, account_description TEXT, user_name TEXT, password TEXT, notes TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 15
    .parameter "paramSQLiteDatabase"
    .parameter "old_version"
    .parameter "new_version"

    .prologue
    .line 94
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 95
    const-string v2, "ALTER TABLE publicinfo ADD old_version INTEGER NOT NULL DEFAULT 1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    add-int/lit8 p2, p2, 0x1

    .line 101
    :cond_0
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 102
    const-string v2, "ALTER TABLE publicinfo ADD key_type INTEGER DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 108
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 186
    :cond_2
    return-void

    .line 112
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v12, localCustomFolderInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/datatype/FolderInfo;>;"
    const-string v3, "customfolder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_ID"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 114
    .local v11, localCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 115
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 116
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    :cond_4
    new-instance v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;

    invoke-direct {v13}, Lcom/zte/heartyservice/common/datatype/FolderInfo;-><init>()V

    .line 119
    .local v13, localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->id:I

    .line 120
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->name:Ljava/lang/String;

    .line 121
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->uuid:Ljava/lang/String;

    .line 122
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    .end local v13           #localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_6
    const-string v2, "DROP TABLE IF EXISTS customfolder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v2, "DROP TABLE IF EXISTS privacyinfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v2, "DROP TABLE IF EXISTS privacycontact"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v2, "DROP TABLE IF EXISTS privacysms"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v2, "DROP TABLE IF EXISTS privacycall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v2, "DROP TABLE IF EXISTS publicinfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v2, "CREATE TABLE customfolder (_ID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, uuid TEXT)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string v2, "CREATE TABLE privacyinfo (_ID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, op TEXT, nn TEXT, ot INTEGER, hs INTEGER, uuid TEXT, tp INTEGER, cl TEXT, wh INTEGER DEFAULT 0, version INTEGER DEFAULT 1)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v2, "CREATE TABLE privacycontact (_ID INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, number TEXT, ac TEXT, cl TEXT, version INTEGER DEFAULT 1)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v2, "CREATE TABLE privacysms (_ID INTEGER PRIMARY KEY AUTOINCREMENT, id INTEGER, thread_id INTEGER, address TEXT, ac TEXT, person INTEGER, date INTEGER, date_sent INTEGER DEFAULT 0, protocal INTEGER, read INTEGER DEFAULT 0, status INTEGER DEFAULT -1, type INTEGER, reply_path_present INTEGER, subject TEXT, body TEXT, service_center TEXT, service_date INTERGER, dest_port INTEGER, locked INTEGER DEFAULT 0, sub_id INTEGER DEFAULT 0, error_code INTEGER DEFAULT 0, seen INTEGER DEFAULT 0, recipient_cc_ids TEXT, recipient_bcc_ids TEXT, sms_pdu TEXT, expiry INTEGER DEFAULT 0, sim_index INTEGER DEFAULT 0, expand TEXT, pre_address TEXT, name TEXT, cl TEXT, version INTEGER DEFAULT 1)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v2, "CREATE TABLE privacycall (_ID INTEGER PRIMARY KEY AUTOINCREMENT, id INTEGER, number TEXT, ac TEXT, date INTEGER, duration INTEGER, type INTEGER, new INTEGER, name TEXT, numbertype INTEGER, numberlabel TEXT, countryiso TEXT, voicemail_uri TEXT, is_read INTEGER, geocoded_location TEXT, lookup_uri TEXT, matched_number TEXT, normalized_number TEXT, photo_id INTEGER DEFAULT 0 NOT NULL, formatted_number TEXT, mode_id INTEGER DEFAULT 1 NOT NULL, _data TEXT, has_content INTEGER, mime_type TEXT, source_data TEXT, source_package TEXT, state INTEGER, name_privacy TEXT, cl TEXT, version INTEGER DEFAULT 1)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v2, "CREATE TABLE publicinfo (_ID INTEGER PRIMARY KEY, sms INTEGER, calllog INTEGER, publicKey TEXT, privateKey TEXT , ac TEXT, androidID TEXT, old_version INTEGER NOT NULL, key_type INTEGER)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string v2, "REPLACE INTO publicinfo (_ID, old_version) VALUES (1,3)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const/4 v14, 0x0

    .line 166
    .local v14, oldDefaultFolderSum:I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 167
    const/4 v14, 0x2

    .line 170
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 171
    const/4 v10, 0x0

    .line 172
    .local v10, i:I
    const/4 v13, 0x0

    .line 173
    .restart local v13       #localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_8

    .line 174
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    check-cast v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;

    .line 175
    .restart local v13       #localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    iget-object v2, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->name:Ljava/lang/String;

    iget-object v3, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->uuid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 180
    :cond_8
    move v10, v14

    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 181
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    check-cast v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;

    .line 182
    .restart local v13       #localFolderInfo:Lcom/zte/heartyservice/common/datatype/FolderInfo;
    iget-object v2, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->name:Ljava/lang/String;

    iget-object v3, v13, Lcom/zte/heartyservice/common/datatype/FolderInfo;->uuid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public final recoverCallById(I)Z
    .locals 16
    .parameter "id"

    .prologue
    .line 741
    const/4 v10, 0x0

    .line 743
    .local v10, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "privacycall"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_ID="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 744
    if-eqz v10, :cond_3

    .line 745
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 746
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 747
    const-string v1, "cl"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v13

    .line 749
    .local v13, keyData:[B
    const-string v1, "number"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, number:Ljava/lang/String;
    const-string v1, "date"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 751
    .local v6, date:J
    const-string v1, "duration"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 752
    .local v8, duration:I
    const-string v1, "type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 753
    .local v5, type:I
    const-string v1, "mode_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 754
    .local v9, mode_id:I
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleCall:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 755
    const/4 v14, 0x0

    .line 756
    .local v14, new_uri:Landroid/net/Uri;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 758
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    sget v4, Lcom/zte/heartyservice/common/porting/PortConnection;->PRESENTATION_ALLOWED:I

    invoke-static/range {v1 .. v9}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;

    move-result-object v14

    .line 763
    :goto_0
    if-eqz v14, :cond_0

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 765
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM privacycall WHERE _ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 769
    const-string v1, "chenlu"

    const-string v2, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY CallLog clear 3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v11           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v1, 0x1

    .line 777
    if-eqz v10, :cond_1

    .line 778
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 781
    .end local v3           #number:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #date:J
    .end local v8           #duration:I
    .end local v9           #mode_id:I
    .end local v13           #keyData:[B
    .end local v14           #new_uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return v1

    .line 760
    .restart local v3       #number:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #date:J
    .restart local v8       #duration:I
    .restart local v9       #mode_id:I
    .restart local v13       #keyData:[B
    .restart local v14       #new_uri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    sget v4, Lcom/zte/heartyservice/common/porting/PortConnection;->PRESENTATION_ALLOWED:I

    invoke-static/range {v1 .. v8}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto :goto_0

    .line 777
    .end local v3           #number:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #date:J
    .end local v8           #duration:I
    .end local v9           #mode_id:I
    .end local v13           #keyData:[B
    .end local v14           #new_uri:Landroid/net/Uri;
    :cond_3
    if-eqz v10, :cond_4

    .line 778
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_4
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 774
    :catch_0
    move-exception v12

    .line 775
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    if-eqz v10, :cond_4

    .line 778
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 777
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 778
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public final recoverSmsById(I)Z
    .locals 24
    .parameter "id"

    .prologue
    .line 486
    const/4 v12, 0x0

    .line 488
    .local v12, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "privacysms"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 489
    if-eqz v12, :cond_5

    .line 490
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 491
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 492
    const-string v2, "cl"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v16

    .line 493
    .local v16, keyData:[B
    const-string v2, "name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v17

    .line 494
    .local v17, name:Ljava/lang/String;
    const-string v2, "address"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v10

    .line 495
    .local v10, address:Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 496
    .local v13, date:J
    const-string v2, "read"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 497
    .local v19, read:I
    const-string v2, "type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 498
    .local v22, type:I
    const-string v2, "subject"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v21

    .line 499
    .local v21, subject:Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v11

    .line 500
    .local v11, body:Ljava/lang/String;
    const-string v2, "sub_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 501
    .local v20, sub_id:I
    new-instance v23, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 502
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "address"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v2, "date"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    const-string v2, "read"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v2, "type"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v2, "subject"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v2, "body"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 v2, 0x1

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMTKMsim()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 510
    const-string v2, "sim_id"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    :cond_0
    :goto_0
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleSms:Ljava/util/HashSet;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 525
    .local v18, new_uri:Landroid/net/Uri;
    if-eqz v18, :cond_1

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 527
    .local v15, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM privacysms WHERE _ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 531
    const-string v2, "chenlu"

    const-string v3, "ACTION_REFRESH_NOTIFICATION  EXTRA_NOTIFICATION_FROM_PRIVACY Msg clear 3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v15           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v2, 0x1

    .line 539
    if-eqz v12, :cond_2

    .line 540
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #body:Ljava/lang/String;
    .end local v13           #date:J
    .end local v16           #keyData:[B
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #new_uri:Landroid/net/Uri;
    .end local v19           #read:I
    .end local v20           #sub_id:I
    .end local v21           #subject:Ljava/lang/String;
    .end local v22           #type:I
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return v2

    .line 511
    .restart local v10       #address:Ljava/lang/String;
    .restart local v11       #body:Ljava/lang/String;
    .restart local v13       #date:J
    .restart local v16       #keyData:[B
    .restart local v17       #name:Ljava/lang/String;
    .restart local v19       #read:I
    .restart local v20       #sub_id:I
    .restart local v21       #subject:Ljava/lang/String;
    .restart local v22       #type:I
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isQualcommMsim()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 512
    const-string v2, "sub_id"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 536
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #body:Ljava/lang/String;
    .end local v13           #date:J
    .end local v16           #keyData:[B
    .end local v17           #name:Ljava/lang/String;
    .end local v19           #read:I
    .end local v20           #sub_id:I
    .end local v21           #subject:Ljava/lang/String;
    .end local v22           #type:I
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 539
    if-eqz v12, :cond_4

    .line 540
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_4
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 539
    :cond_5
    if-eqz v12, :cond_4

    .line 540
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 539
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_6

    .line 540
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public final savePrivateKey(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "privateKeyStr"
    .parameter "sign"
    .parameter "keyType"

    .prologue
    .line 1157
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1158
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE publicinfo SET privateKey=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',key_type=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',ac=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',old_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE _ID=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1160
    sput-object p2, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    const/4 v2, 0x1

    .line 1165
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 1162
    :catch_0
    move-exception v1

    .line 1163
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1165
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final saveRSAKeyPair(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "publicKeyStr"
    .parameter "privateKeyStr"
    .parameter "keyType"

    .prologue
    .line 1143
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->calcSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, sign:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1145
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE publicinfo SET publicKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', privateKey=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', key_type=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',ac=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',androidID=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',old_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE _ID=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1147
    sput-object v2, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->passwordSign:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    const/4 v3, 0x1

    .line 1152
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #sign:Ljava/lang/String;
    :goto_0
    return v3

    .line 1149
    :catch_0
    move-exception v1

    .line 1150
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setCalllogReadState()V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 379
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 380
    const-string v1, "UPDATE privacycall SET new=0 WHERE new=1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 384
    return-void
.end method

.method public setMaxHandledCalllogId(I)V
    .locals 5
    .parameter "maxHandledCalllogId"

    .prologue
    .line 871
    :try_start_0
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledCalllogId:I

    .line 872
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 873
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE publicinfo SET calllog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE _ID=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 875
    const-string v2, "chenlu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxHandledCalllogId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMaxHandledSmsId(I)V
    .locals 5
    .parameter "maxHandledSmsId"

    .prologue
    .line 823
    :try_start_0
    iput p1, p0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->maxHandledSmsId:I

    .line 824
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 825
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE publicinfo SET sms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE _ID=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 827
    const-string v2, "chenlu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxHandledSmsId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRSAKeyPairExist(Z)V
    .locals 2
    .parameter "exist"

    .prologue
    .line 1173
    sput-boolean p1, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->rSAKeyPairExist:Z

    .line 1174
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper$1;-><init>(Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1193
    return-void
.end method

.method public setSmsReadState()V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 370
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 371
    const-string v1, "UPDATE privacysms SET read=1 WHERE read=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->refreshPrivacyNotification()V

    .line 375
    return-void
.end method

.method public final updateContectById(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "id"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 1057
    if-nez p2, :cond_0

    :try_start_0
    const-string p2, ""

    .line 1058
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 1059
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v5

    .line 1060
    .local v5, keyData:[B
    invoke-static {p2, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 1061
    .local v3, encry_name:Ljava/lang/String;
    invoke-static {p3, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 1062
    .local v4, encry_number:Ljava/lang/String;
    invoke-static {p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, ac:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, cl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1065
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE privacycontact SET name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', number=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', ac=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', cl=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' WHERE _ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    const/4 v6, 0x1

    .line 1071
    .end local v0           #ac:Ljava/lang/String;
    .end local v1           #cl:Ljava/lang/String;
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #encry_name:Ljava/lang/String;
    .end local v4           #encry_number:Ljava/lang/String;
    .end local v5           #keyData:[B
    :goto_0
    return v6

    .line 1068
    :catch_0
    move-exception v6

    .line 1071
    const/4 v6, 0x0

    goto :goto_0
.end method
