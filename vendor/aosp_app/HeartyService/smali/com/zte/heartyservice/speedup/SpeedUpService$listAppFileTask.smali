.class Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
.super Landroid/os/AsyncTask;
.source "SpeedUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "listAppFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Lcom/zte/heartyservice/speedup/NeedCleanFile;",
        ">;"
    }
.end annotation


# instance fields
.field private appFileInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedCleanFile:Lcom/zte/heartyservice/speedup/NeedCleanFile;

.field mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

.field private needpublishProgress:Z

.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V
    .locals 1
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->needpublishProgress:Z

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mNeedCleanFile:Lcom/zte/heartyservice/speedup/NeedCleanFile;

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->appFileInfo:Ljava/util/List;

    .line 1077
    new-instance v0, Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-direct {v0}, Lcom/zte/heartyservice/speedup/SysGarbageFile;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;-><init>(Lcom/zte/heartyservice/speedup/SpeedUpService;)V

    return-void
.end method

.method private getAllFiles(Ljava/io/File;ZI)V
    .locals 10
    .parameter "root"
    .parameter "isRoot"
    .parameter "count"

    .prologue
    .line 1081
    if-nez p1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1088
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_8

    array-length v7, v2

    if-lez v7, :cond_8

    .line 1090
    array-length v7, v2

    const/16 v8, 0x50

    if-le v7, v8, :cond_2

    if-nez p2, :cond_2

    .line 1092
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore ==================="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1095
    :cond_2
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1097
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1100
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1101
    .local v6, mStrArray:[Ljava/lang/String;
    array-length v5, v6

    .line 1104
    .local v5, mCount:I
    sub-int v7, v5, p3

    const/4 v8, 0x3

    if-gt v7, v8, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DCIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Pictures"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tencent/MicroMsg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1095
    .end local v5           #mCount:I
    .end local v6           #mStrArray:[Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1110
    .restart local v5       #mCount:I
    .restart local v6       #mStrArray:[Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7, p3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->getAllFiles(Ljava/io/File;ZI)V

    goto :goto_2

    .line 1115
    .end local v5           #mCount:I
    .end local v6           #mStrArray:[Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".log"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1117
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-virtual {v7, v1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->addAppLogFile(Ljava/io/File;)V

    .line 1119
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".temp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1121
    :cond_7
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-virtual {v7, v1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->addTmpSysFile(Ljava/io/File;)V

    goto :goto_2

    .line 1130
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_8
    iget-object v7, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-virtual {v7, p1}, Lcom/zte/heartyservice/speedup/SysGarbageFile;->addBlankFile(Ljava/io/File;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcom/zte/heartyservice/speedup/NeedCleanFile;
    .locals 25
    .parameter "params"

    .prologue
    .line 1136
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1137
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppFileScanState(Z)V

    .line 1138
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->needpublishProgress:Z

    .line 1140
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 1141
    const-string v3, "SpeedUpService"

    const-string v4, " begin scan app file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1143
    .local v18, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    const/4 v2, 0x0

    .line 1145
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$3300(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "app_file_info.db"

    const v5, 0x7f090012

    const/high16 v6, 0x7f06

    invoke-static {v3, v4, v5, v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDB(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1148
    :cond_0
    if-eqz v2, :cond_b

    .line 1149
    const-string v3, "info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 1150
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_b

    .line 1152
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1153
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1154
    .local v20, path:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1155
    .local v19, name:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1156
    .local v16, lable:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1158
    .local v15, internalSDPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v14, internalSDFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1160
    const/16 v17, 0x0

    .line 1161
    .local v17, localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    check-cast v17, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 1162
    .restart local v17       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    if-nez v17, :cond_2

    .line 1163
    new-instance v17, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    invoke-direct/range {v17 .. v17}, Lcom/zte/heartyservice/common/datatype/AppFileInfo;-><init>()V

    .line 1164
    .restart local v17       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    move-object/from16 v0, v17

    iput-object v15, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->path:Ljava/lang/String;

    .line 1165
    invoke-static {v14}, Lcom/zte/filexplorer/FileHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v3

    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    .line 1166
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->appFileInfo:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_2
    const/4 v3, 0x1

    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPInfo(Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1170
    move-object/from16 v0, v17

    iget v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    .line 1171
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_names:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_lables:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_3
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->names:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->lables:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    .end local v14           #internalSDFile:Ljava/io/File;
    .end local v15           #internalSDPath:Ljava/lang/String;
    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1181
    .local v13, externalSDPath:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v12, externalSDFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1183
    const/16 v17, 0x0

    .line 1184
    .restart local v17       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    check-cast v17, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 1185
    .restart local v17       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    if-nez v17, :cond_5

    .line 1186
    new-instance v17, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    invoke-direct/range {v17 .. v17}, Lcom/zte/heartyservice/common/datatype/AppFileInfo;-><init>()V

    .line 1187
    .restart local v17       #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->path:Ljava/lang/String;

    .line 1188
    invoke-static {v12}, Lcom/zte/filexplorer/FileHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v3

    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    .line 1189
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->appFileInfo:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_5
    const/4 v3, 0x1

    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPInfo(Ljava/lang/String;)Z

    move-result v4

    if-ne v3, v4, :cond_6

    .line 1193
    move-object/from16 v0, v17

    iget v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    .line 1194
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_names:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist_lables:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_6
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->names:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->lables:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1202
    .end local v12           #externalSDFile:Ljava/io/File;
    .end local v13           #externalSDPath:Ljava/lang/String;
    .end local v16           #lable:Ljava/lang/String;
    .end local v17           #localAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #path:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1203
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1204
    const/4 v3, 0x0

    .line 1206
    if-eqz v10, :cond_7

    .line 1207
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1214
    :cond_7
    if-eqz v2, :cond_8

    .line 1215
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1232
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_8
    :goto_1
    return-object v3

    .line 1206
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_9
    if-eqz v10, :cond_a

    .line 1207
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1210
    :cond_a
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1214
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_b
    if-eqz v2, :cond_c

    .line 1215
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1218
    :cond_c
    const-string v3, "SpeedUpService"

    const-string v4, " begin scan sdcard "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1221
    .local v21, strArray1:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    .line 1222
    .local v23, strCount1:I
    const-string v3, "SpeedUpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " strCount1 =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v4, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->getAllFiles(Ljava/io/File;ZI)V

    .line 1224
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 1225
    .local v22, strArray2:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    .line 1226
    .local v24, strCount2:I
    const-string v3, "SpeedUpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " strCount1 =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v4, v1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->getAllFiles(Ljava/io/File;ZI)V

    .line 1228
    const-string v3, "SpeedUpService"

    const-string v4, " end scan sdcard "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    new-instance v3, Lcom/zte/heartyservice/speedup/NeedCleanFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->appFileInfo:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/zte/heartyservice/speedup/NeedCleanFile;-><init>(Lcom/zte/heartyservice/speedup/SysGarbageFile;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mNeedCleanFile:Lcom/zte/heartyservice/speedup/NeedCleanFile;

    .line 1232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->mNeedCleanFile:Lcom/zte/heartyservice/speedup/NeedCleanFile;

    goto/16 :goto_1

    .line 1206
    .end local v21           #strArray1:[Ljava/lang/String;
    .end local v22           #strArray2:[Ljava/lang/String;
    .end local v23           #strCount1:I
    .end local v24           #strCount2:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_d

    .line 1207
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1214
    .end local v10           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_e

    .line 1215
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1072
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->doInBackground([Ljava/lang/Boolean;)Lcom/zte/heartyservice/speedup/NeedCleanFile;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1237
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1238
    return-void
.end method

.method protected onPostExecute(Lcom/zte/heartyservice/speedup/NeedCleanFile;)V
    .locals 7
    .parameter "m"

    .prologue
    .line 1243
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v4, p1, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mListAppFile:Ljava/util/List;

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppFileInfoList(Ljava/util/List;)V

    .line 1244
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v4, p1, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSysGarbageFile(Lcom/zte/heartyservice/speedup/SysGarbageFile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppFileScanState(Z)V

    .line 1250
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1251
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 1254
    :try_start_1
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    iget-object v5, p1, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mListAppFile:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;->UpdateAppFileList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1251
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1245
    .end local v0           #N:I
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1247
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1255
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #N:I
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .line 1256
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1259
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    #getter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$1800(Lcom/zte/heartyservice/speedup/SpeedUpService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1260
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    const/4 v5, 0x0

    #setter for: Lcom/zte/heartyservice/speedup/SpeedUpService;->mListAppFileTask:Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;
    invoke-static {v4, v5}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$2002(Lcom/zte/heartyservice/speedup/SpeedUpService;Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;)Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;

    .line 1262
    :try_start_2
    iget-object v4, p1, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mListAppFile:Ljava/util/List;

    invoke-static {v4}, Lcom/zte/heartyservice/speedup/SpeedUpService;->access$4602(Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1268
    :goto_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.heartyservice.intent.action.appfile_scan_completed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->this$0:Lcom/zte/heartyservice/speedup/SpeedUpService;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/speedup/SpeedUpService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1270
    const-string v4, "SpeedUpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuji debug onPostExecute N:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-void

    .line 1263
    .end local v3           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 1265
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1072
    check-cast p1, Lcom/zte/heartyservice/speedup/NeedCleanFile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->onPostExecute(Lcom/zte/heartyservice/speedup/NeedCleanFile;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 1275
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1276
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 1280
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1281
    iget-boolean v0, p0, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->needpublishProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1285
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1072
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/speedup/SpeedUpService$listAppFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
