.class public Lcom/zte/zdmdaemon/redbend/Fota;
.super Ljava/lang/Object;
.source "Fota.java"


# static fields
.field private static AP_ERROR_CODE:Ljava/io/File;

.field private static AP_UPDATE_SUCCED:Ljava/io/File;

.field private static BOOTIMG_COPY:Ljava/io/File;

.field private static BP_ERROR_CODE:Ljava/io/File;

.field private static BP_UPDATE_SUCCED:Ljava/io/File;

.field private static COMMAND_FILE:Ljava/io/File;

.field public static DefaultValue:I

.field private static FOTA_DIR:Ljava/io/File;

.field private static FOTA_FIFO:Ljava/io/File;

.field private static FS_ERROR_CODE:Ljava/io/File;

.field private static FS_UPDATE_SUCCED:Ljava/io/File;

.field private static INIT_VALUE:I

.field private static LOG_FILE:Ljava/io/File;

.field private static RECOVERY_DIR:Ljava/io/File;

.field private static SYSTEM_VERIFY:Ljava/io/File;

.field private static UPDATE_DONE:Ljava/io/File;

.field private static UPDATE_LANGUAGE:Ljava/io/File;

.field private static UPDATE_SYS_VERIFY:Ljava/io/File;

.field private static UPDATE_TYPE:Ljava/io/File;

.field private static UPDATE_TYPE_BOOT:I

.field private static UPDATE_TYPE_BOTH:I

.field private static UPDATE_TYPE_SYS:I

.field public static UpdateTypeName:Ljava/lang/String;

.field public static bootFileStr:Ljava/lang/String;

.field public static systeFileStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string v0, "updateType"

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UpdateTypeName:Ljava/lang/String;

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/zte/zdmdaemon/redbend/Fota;->DefaultValue:I

    .line 18
    const-string v0, "/data/dm/delta/multi_image.delta"

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->bootFileStr:Ljava/lang/String;

    .line 19
    const-string v0, "/data/dm/delta/system.delta"

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->systeFileStr:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->RECOVERY_DIR:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->COMMAND_FILE:Ljava/io/File;

    .line 24
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->LOG_FILE:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/fota"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    .line 29
    const-string v2, "ap_update_succed"

    .line 28
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->AP_UPDATE_SUCCED:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    .line 31
    const-string v2, "bp_update_succed"

    .line 30
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BP_UPDATE_SUCCED:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    .line 33
    const-string v2, "fs_update_succeed"

    .line 32
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->FS_UPDATE_SUCCED:Ljava/io/File;

    .line 34
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "bootimg_copy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BOOTIMG_COPY:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "update_type"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "update_done"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_DONE:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "ap_error_code"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->AP_ERROR_CODE:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "bp_error_code"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BP_ERROR_CODE:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "error_code"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->FS_ERROR_CODE:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "update_language"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_LANGUAGE:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "system_verify"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->SYSTEM_VERIFY:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    .line 43
    const-string v2, "update_sys_verify"

    .line 42
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_SYS_VERIFY:Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    const-string v2, "fota_fifo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_FIFO:Ljava/io/File;

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE_BOOT:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE_SYS:I

    .line 49
    const/4 v0, 0x3

    sput v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE_BOTH:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dataWriteToFifo(I)[C
    .locals 6
    .parameter "obFlag"

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 216
    :try_start_0
    const-string v3, "zdmDaemon"

    const-string v4, "fatal error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    check-cast v0, [C

    .local v0, array:[C
    move-object v1, v0

    .line 224
    .end local v0           #array:[C
    .local v1, array:[C
    :goto_0
    return-object v1

    .line 176
    .end local v1           #array:[C
    :pswitch_0
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 178
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto :goto_0

    .line 181
    .end local v1           #array:[C
    :pswitch_1
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 183
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto :goto_0

    .line 186
    .end local v1           #array:[C
    :pswitch_2
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/16 v3, 0x8

    .line 187
    const/4 v4, 0x1

    aput-char v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x5a

    aput-char v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0x5a

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 188
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto :goto_0

    .line 191
    .end local v1           #array:[C
    :pswitch_3
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 193
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto :goto_0

    .line 196
    .end local v1           #array:[C
    :pswitch_4
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/16 v3, 0x9

    .line 197
    const/16 v4, 0x8

    aput-char v4, v0, v3

    const/16 v3, 0xa

    const/16 v4, 0x6b

    aput-char v4, v0, v3

    const/16 v3, 0xb

    const/16 v4, 0x5a

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 198
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto :goto_0

    .line 201
    .end local v1           #array:[C
    :pswitch_5
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    aput-char v4, v0, v3

    const/16 v3, 0x8

    .line 202
    const/4 v4, 0x1

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 203
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto :goto_0

    .line 206
    .end local v1           #array:[C
    :pswitch_6
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    aput-char v4, v0, v3

    const/16 v3, 0x8

    .line 207
    const/4 v4, 0x2

    aput-char v4, v0, v3

    .restart local v0       #array:[C
    move-object v1, v0

    .line 208
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto/16 :goto_0

    .line 211
    .end local v1           #array:[C
    :pswitch_7
    const/16 v3, 0x10

    new-array v0, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v0, v3

    const/4 v3, 0x4

    const/4 v4, 0x5

    aput-char v4, v0, v3

    const/16 v3, 0x8

    .line 212
    const/4 v4, 0x3

    aput-char v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #array:[C
    move-object v1, v0

    .line 213
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto/16 :goto_0

    .line 220
    .end local v1           #array:[C
    :catch_0
    move-exception v2

    .line 221
    .local v2, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "=============Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    check-cast v0, [C

    .restart local v0       #array:[C
    move-object v1, v0

    .line 224
    .end local v0           #array:[C
    .restart local v1       #array:[C
    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private deleteCommand()V
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->COMMAND_FILE:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 285
    const-string v0, "zdmDaemon"

    const-string v1, "delete command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, fl:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 137
    :cond_0
    return-void
.end method

.method private existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, fl:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    .line 153
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFotaFileExist()Z
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->systeFileStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/redbend/Fota;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->bootFileStr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/redbend/Fota;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "zdmDaemon"

    const-string v1, "ap and bp exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readStatus(Ljava/io/File;)[C
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v2, 0x4

    new-array v0, v2, [C

    .line 323
    .local v0, buf:[C
    const-string v2, "zdmDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readStatus filename = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 327
    .local v1, fr:Ljava/io/FileReader;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileReader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 331
    const-string v2, "zdmDaemon"

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 333
    const/4 v4, 0x0

    aget-char v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 334
    const/4 v4, 0x1

    aget-char v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    const/4 v4, 0x2

    aget-char v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    const/4 v4, 0x3

    aget-char v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v0

    .line 328
    :catchall_0
    move-exception v2

    .line 329
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 330
    throw v2
.end method

.method private resultAPUpdate()Z
    .locals 7

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    const/4 v4, 0x4

    new-array v0, v4, [C

    .line 292
    .local v0, buf:[C
    :try_start_0
    sget-object v4, Lcom/zte/zdmdaemon/redbend/Fota;->AP_UPDATE_SUCCED:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/zte/zdmdaemon/redbend/Fota;->readStatus(Ljava/io/File;)[C

    move-result-object v0

    .line 293
    const/4 v4, 0x0

    aget-char v4, v0, v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-char v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_0

    .line 294
    const/4 v4, 0x3

    aget-char v4, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v6, :cond_0

    .line 301
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 297
    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "zdmDaemon"

    const-string v4, "APExist. Exception!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 301
    goto :goto_0
.end method

.method private resultBPUpdate()Z
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    const/4 v4, 0x4

    new-array v0, v4, [C

    .line 306
    .local v0, buf:[C
    const-string v4, "zdmDaemon"

    const-string v5, "resultBPUpdate in"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_0
    sget-object v4, Lcom/zte/zdmdaemon/redbend/Fota;->BP_UPDATE_SUCCED:Ljava/io/File;

    invoke-direct {p0, v4}, Lcom/zte/zdmdaemon/redbend/Fota;->readStatus(Ljava/io/File;)[C

    move-result-object v0

    .line 309
    const/4 v4, 0x0

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    aget-char v4, v0, v4

    if-nez v4, :cond_0

    .line 310
    const/4 v4, 0x2

    aget-char v4, v0, v4

    if-ne v4, v7, :cond_0

    const/4 v4, 0x3

    aget-char v4, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v7, :cond_0

    .line 318
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 313
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "zdmDaemon"

    const-string v4, "BPExist. Exception!!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 318
    goto :goto_0
.end method

.method private setFlashFlagbyOb(I)V
    .locals 6
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/redbend/Fota;->dataWriteToFifo(I)[C

    move-result-object v0

    .line 161
    .local v0, array:[C
    const-string v3, "zdmDaemon"

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setFlashFlagbyOb() flag = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_FIFO:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 165
    .local v2, fw:Ljava/io/FileWriter;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileWriter;->write([CII)V

    .line 166
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v2           #fw:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setVariableForUpdate(I)V
    .locals 3
    .parameter "updateType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 229
    const-string v0, "zdmDaemon"

    const-string v1, "VdmcFumoHandler, setVariableForUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 231
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->AP_UPDATE_SUCCED:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 232
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BP_UPDATE_SUCCED:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BOOTIMG_COPY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 234
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 235
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_DONE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 236
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->AP_ERROR_CODE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 237
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BP_ERROR_CODE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 238
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_LANGUAGE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 239
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->SYSTEM_VERIFY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 240
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_SYS_VERIFY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 241
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_LANGUAGE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 242
    const-string v0, "zdmDaemon"

    const-string v1, "VdmcFumoHandler, setVariableForUpdate write value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->AP_UPDATE_SUCCED:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 244
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BP_UPDATE_SUCCED:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 246
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BOOTIMG_COPY:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 247
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 248
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE_BOOT:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 249
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/redbend/Fota;->setFlashFlagbyOb(I)V

    .line 256
    :cond_0
    :goto_0
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_DONE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 257
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->AP_ERROR_CODE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 258
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->BP_ERROR_CODE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 259
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_LANGUAGE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 260
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->SYSTEM_VERIFY:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 261
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_SYS_VERIFY:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->INIT_VALUE:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 262
    if-eq p1, v2, :cond_1

    .line 263
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/redbend/Fota;->setFlashFlagbyOb(I)V

    .line 264
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/redbend/Fota;->setFlashFlagbyOb(I)V

    .line 266
    :cond_1
    return-void

    .line 250
    :cond_2
    if-ne p1, v2, :cond_3

    .line 251
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE_SYS:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    goto :goto_0

    .line 252
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 253
    sget-object v0, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE:Ljava/io/File;

    sget v1, Lcom/zte/zdmdaemon/redbend/Fota;->UPDATE_TYPE_BOTH:I

    invoke-static {v0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->writeValueToFile(Ljava/io/File;I)V

    .line 254
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/zte/zdmdaemon/redbend/Fota;->setFlashFlagbyOb(I)V

    goto :goto_0
.end method

.method private static writeValueToFile(Ljava/io/File;I)V
    .locals 2
    .parameter "file"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 272
    .local v0, fw:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 273
    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V

    .line 274
    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V

    .line 275
    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V

    .line 276
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 280
    return-void

    .line 277
    :catchall_0
    move-exception v1

    .line 278
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 279
    throw v1
.end method


# virtual methods
.method public prepare(I)V
    .locals 4
    .parameter "updateType"

    .prologue
    const/4 v3, 0x1

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/zte/zdmdaemon/redbend/Fota;->isFotaFileExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "zdmDaemon"

    const-string v2, "file not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->FOTA_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_1
    if-ne p1, v3, :cond_2

    .line 62
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->setFlashFlagbyOb(I)V

    .line 64
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->setFlashFlagbyOb(I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/zte/zdmdaemon/redbend/Fota;->setVariableForUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "zdmDaemon"

    const-string v2, "fota exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public readUpdateStatus()[C
    .locals 5

    .prologue
    const/16 v4, 0x5a

    const/4 v3, 0x0

    .line 116
    const/4 v1, 0x4

    new-array v0, v1, [C

    .line 117
    .local v0, buf:[C
    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->systeFileStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->deleteFile(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcom/zte/zdmdaemon/redbend/Fota;->bootFileStr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zte/zdmdaemon/redbend/Fota;->deleteFile(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/zte/zdmdaemon/redbend/Fota;->resultAPUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/zte/zdmdaemon/redbend/Fota;->resultBPUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "zdmDaemon"

    const-string v2, "update Succeed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    aput-char v3, v0, v3

    .line 122
    const/4 v1, 0x1

    aput-char v3, v0, v1

    .line 123
    const/4 v1, 0x2

    aput-char v4, v0, v1

    .line 124
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string v1, "zdmDaemon"

    const-string v2, "update failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "arg"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, commandfile:Z
    const-string v4, "zdmDaemon"

    const-string v5, "VdmcFumoHandler, reboot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v4, Lcom/zte/zdmdaemon/redbend/Fota;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 77
    invoke-direct {p0}, Lcom/zte/zdmdaemon/redbend/Fota;->deleteCommand()V

    .line 78
    sget-object v4, Lcom/zte/zdmdaemon/redbend/Fota;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 80
    const-string v4, "zdmDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VdmcFumoHandler, reboot, write command="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/io/FileWriter;

    sget-object v4, Lcom/zte/zdmdaemon/redbend/Fota;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 83
    .local v0, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 84
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 87
    const-string v4, "/cache/recovery/command"

    invoke-direct {p0, v4}, Lcom/zte/zdmdaemon/redbend/Fota;->existFile(Ljava/lang/String;)Z

    move-result v1

    .line 88
    const-string v4, "zdmDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "command file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 95
    const-string v4, "zdmDaemon"

    const-string v5, "VdmcFumoHandler, reboot, send reboot intent begin"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 103
    .local v2, handler:Landroid/os/Handler;
    new-instance v3, Lcom/zte/zdmdaemon/redbend/Fota$1;

    invoke-direct {v3, p0, p2}, Lcom/zte/zdmdaemon/redbend/Fota$1;-><init>(Lcom/zte/zdmdaemon/redbend/Fota;Landroid/content/Context;)V

    .line 111
    .local v3, runnable:Ljava/lang/Runnable;
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    const-string v4, "zdmDaemon"

    const-string v5, "VdmcFumoHandler, reboot, send reboot intent end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 90
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #runnable:Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    .line 91
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 92
    throw v4
.end method
