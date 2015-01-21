.class public final Ltmsdk/common/utils/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final DEBUG_FILE_NAME:Ljava/lang/String; = "/sdcard/qqpimsecure_debug.txt"

.field public static final ERROR:I = 0x6

.field private static Ec:Z = false

.field private static Ed:Ltmsdk/common/utils/a; = null

.field public static final FILE:I = 0xa

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Ltmsdk/common/utils/Log;->Ec:Z

    .line 31
    new-instance v0, Ltmsdk/common/utils/c;

    invoke-direct {v0}, Ltmsdk/common/utils/c;-><init>()V

    sput-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    const/4 p0, 0x0

    .line 225
    .end local p0
    :goto_0
    return-object p0

    .line 220
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 221
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_1
    instance-of v0, p0, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 223
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    check-cast p0, Ljava/lang/Throwable;

    .end local p0
    invoke-virtual {v0, p0}, Ltmsdk/common/utils/a;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 225
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 141
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ltmsdk/common/utils/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "data"
    .parameter "tr"

    .prologue
    .line 151
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Ltmsdk/common/utils/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 105
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ltmsdk/common/utils/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "data"
    .parameter "tr"

    .prologue
    .line 115
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Ltmsdk/common/utils/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 195
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ltmsdk/common/utils/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "data"
    .parameter "tr"

    .prologue
    .line 205
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Ltmsdk/common/utils/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 123
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ltmsdk/common/utils/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "data"
    .parameter "tr"

    .prologue
    .line 133
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Ltmsdk/common/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    return-void
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Ltmsdk/common/utils/Log;->Ec:Z

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "priority"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 209
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-virtual {v0, p0, p1, p2}, Ltmsdk/common/utils/a;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static setLogEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 47
    sput-boolean p0, Ltmsdk/common/utils/Log;->Ec:Z

    .line 48
    sget-boolean v0, Ltmsdk/common/utils/Log;->Ec:Z

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ltmsdk/common/utils/b;

    invoke-direct {v0}, Ltmsdk/common/utils/b;-><init>()V

    sput-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ltmsdk/common/utils/c;

    invoke-direct {v0}, Ltmsdk/common/utils/c;-><init>()V

    sput-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 177
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ltmsdk/common/utils/a;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "data"
    .parameter "tr"

    .prologue
    .line 187
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Ltmsdk/common/utils/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 159
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ltmsdk/common/utils/a;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "tag"
    .parameter "data"
    .parameter "tr"

    .prologue
    .line 169
    sget-object v0, Ltmsdk/common/utils/Log;->Ed:Ltmsdk/common/utils/a;

    invoke-static {p1}, Ltmsdk/common/utils/Log;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Ltmsdk/common/utils/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public static writeLog(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .parameter "file"
    .parameter "msg"

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, os:Ljava/io/FileOutputStream;
    :try_start_0
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 69
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 70
    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v2, os:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-object v1, v2

    .line 82
    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v1, :cond_2

    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :goto_0
    const/4 v1, 0x0

    .line 91
    :cond_2
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v3, "QQPimSecure"

    const-string v4, "file not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    if-eqz v1, :cond_2

    .line 84
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 88
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 85
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 75
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 76
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v3, "QQPimSecure"

    const-string v4, "io exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    if-eqz v1, :cond_2

    .line 84
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 88
    :goto_5
    const/4 v1, 0x0

    goto :goto_1

    .line 85
    :catch_4
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    :goto_6
    :try_start_7
    const-string v3, "QQPimSecure"

    const-string v4, "runtime error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 82
    if-eqz v1, :cond_2

    .line 84
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 88
    .end local v0           #e:Ljava/lang/Exception;
    :goto_7
    const/4 v1, 0x0

    goto :goto_1

    .line 85
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v1, :cond_3

    .line 84
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 88
    :goto_9
    const/4 v1, 0x0

    :cond_3
    throw v3

    .line 85
    :catch_7
    move-exception v0

    .line 86
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 78
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 75
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 72
    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v2       #os:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/FileOutputStream;
    .restart local v1       #os:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static writeLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/qqpimsecure_debug.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Ltmsdk/common/utils/Log;->writeLog(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    return-void
.end method
