.class public Lcom/hf/data/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final EXCEPTION_PATH:Ljava/lang/String; = null

.field private static final FORMATTER:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field public static final LOCATION:Z = false

.field public static final LOCATION_LOG:Ljava/lang/String; = "location.txt"

.field public static final LOG_PATH:Ljava/lang/String; = null

.field private static final MAX_SIZE:I = 0x300000

.field public static final WEATHER_LOG:Ljava/lang/String; = "weather_log.txt"

.field public static final WIDGET_LOG:Ljava/lang/String; = "widget.txt"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/weather/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hf/data/LogTag;->LOG_PATH:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hf/data/LogTag;->LOG_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "exception/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hf/data/LogTag;->EXCEPTION_PATH:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectDeviceInfo(Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v2, infos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 70
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 72
    .local v3, pi:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 73
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v6, "null"

    .line 74
    .local v6, versionName:Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, versionCode:Ljava/lang/String;
    const-string v7, "versionName"

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v7, "versionCode"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #versionCode:Ljava/lang/String;
    .end local v6           #versionName:Ljava/lang/String;
    :cond_0
    :goto_1
    const-class v7, Landroid/os/Build;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 82
    .local v1, fields:[Ljava/lang/reflect/Field;
    array-length v8, v1

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v8, :cond_2

    .line 90
    return-object v2

    .line 73
    .end local v1           #fields:[Ljava/lang/reflect/Field;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .restart local v1       #fields:[Ljava/lang/reflect/Field;
    :cond_2
    aget-object v0, v1, v7

    .line 84
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 86
    :catch_0
    move-exception v9

    goto :goto_3

    .line 78
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v1           #fields:[Ljava/lang/reflect/Field;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private static saveExInfo2File(Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 19
    .parameter
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, infos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v12, sb:Ljava/lang/StringBuffer;
    const-string v15, "devices information :"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_3

    .line 109
    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v15, "exception information : \n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v14, writer:Ljava/io/Writer;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    .local v10, printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 115
    .local v1, cause:Ljava/lang/Throwable;
    :goto_1
    if-nez v1, :cond_4

    .line 119
    invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V

    .line 121
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, result:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    const-string v16, "mounted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 125
    new-instance v2, Ljava/io/File;

    sget-object v15, Lcom/hf/data/LogTag;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v15, Lcom/hf/data/LogTag;->EXCEPTION_PATH:Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v4, exceptionDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 131
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/32 v17, 0x300000

    cmp-long v15, v15, v17

    if-lez v15, :cond_1

    .line 132
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 137
    :cond_1
    :goto_2
    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v7

    check-cast v7, Ljava/text/SimpleDateFormat;

    .line 138
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    const-string v15, "yyyyMMdd_HHmmss"

    invoke-virtual {v7, v15}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 139
    new-instance v15, Ljava/lang/StringBuilder;

    new-instance v16, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/hf/data/LogTag;->EXCEPTION_PATH:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, file:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 142
    .local v9, out:Ljava/io/OutputStream;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/io/OutputStream;->write([B)V

    .line 143
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 144
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #exceptionDir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #formatter:Ljava/text/SimpleDateFormat;
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_2
    :goto_3
    return-void

    .line 103
    .end local v1           #cause:Ljava/lang/Throwable;
    .end local v10           #printWriter:Ljava/io/PrintWriter;
    .end local v11           #result:Ljava/lang/String;
    .end local v14           #writer:Ljava/io/Writer;
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 105
    .local v8, key:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 106
    .local v13, value:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 116
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #key:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    .restart local v1       #cause:Ljava/lang/Throwable;
    .restart local v10       #printWriter:Ljava/io/PrintWriter;
    .restart local v14       #writer:Ljava/io/Writer;
    :cond_4
    invoke-virtual {v1, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 117
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto/16 :goto_1

    .line 135
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #exceptionDir:Ljava/io/File;
    .restart local v11       #result:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 147
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #exceptionDir:Ljava/io/File;
    :catch_0
    move-exception v15

    goto :goto_3
.end method

.method public static writeExToSDCard(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "mContext"
    .parameter "ex"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/hf/data/LogTag;->collectDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 58
    .local v0, infos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0, p1}, Lcom/hf/data/LogTag;->saveExInfo2File(Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method public static writeToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "fileName"
    .parameter "content"

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/hf/data/LogTag;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 41
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/hf/data/LogTag;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x300000

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 46
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 47
    .local v2, out:Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 48
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 49
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #out:Ljava/io/OutputStream;
    :cond_2
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v3

    goto :goto_0
.end method
