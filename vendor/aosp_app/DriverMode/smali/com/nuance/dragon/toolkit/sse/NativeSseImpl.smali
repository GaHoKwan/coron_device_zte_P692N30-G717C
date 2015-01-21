.class Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/sse/a;


# static fields
.field private static a:Z


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x400

    sget-boolean v0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->a:Z

    if-nez v0, :cond_9

    invoke-static {}, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;->isArmV7()Z

    move-result v0

    invoke-static {}, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;->isNeonSupported()Z

    move-result v1

    invoke-static {}, Lcom/nuance/dragon/toolkit/util/internal/NativeUtils;->isX86()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "armV7:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", neonSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x86:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    new-instance v3, Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v0, "extralibs/armeabi-v7a"

    invoke-direct {v3, p1, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    :cond_0
    new-instance v4, Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v0, ".jpg"

    const-string v5, "extralibs/armeabi-v7a"

    invoke-direct {v4, p1, v0, v5}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_1

    const-string v0, "neon"

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " sse core lib will be copied"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v0, "libsse_neon.so"

    :goto_1
    invoke-virtual {v4, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "source libsse_*.so NOT found in assets/extralibs/armeabi-v7a!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "vfp"

    goto :goto_0

    :cond_2
    const-string v0, "libsse_vfp.so"

    goto :goto_1

    :cond_3
    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "target libsse.so could NOT be opened for writingextralibs/armeabi-v7a!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v0, v6, [B

    :goto_2
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Error copying file:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_5
    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "libsse.so could NOT be copied from assets/!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/extralibs/armeabi-v7a/libsse.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :cond_8
    :goto_6
    const-string v0, "dmt_sse"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->a:Z

    :cond_9
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error closing file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error closing file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_8

    new-instance v3, Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v0, "extralibs/x86"

    invoke-direct {v3, p1, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    :cond_b
    new-instance v0, Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v1, ".jpg"

    const-string v4, "extralibs/x86"

    invoke-direct {v0, p1, v1, v4}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "libsse.so"

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "source libsse.so NOT found in assets/extralibs/x86!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v4

    if-nez v4, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "target libsse.so could NOT be opened for writingextralibs/x86!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-array v0, v6, [B

    :goto_7
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_10

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Error copying file:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_e
    :goto_9
    if-eqz v4, :cond_f

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_f
    :goto_a
    const-string v0, "libsse.so"

    invoke-virtual {v3, v0}, Lcom/nuance/dragon/toolkit/file/FileManager;->delete(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "libsse.so could NOT be copied from assets/!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/extralibs/x86/libsse.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error closing file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error closing file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3
.end method

.method private static native sseCreate()J
.end method

.method private static native sseDestroy(J)V
.end method

.method private static native sseGetVersion()Ljava/lang/String;
.end method

.method private static native sseInitialize(JIII[BZZZ)I
.end method

.method private static native sseProcessWithRef(J[S[S[S)I
.end method

.method private static native sseProcessWithoutRef(J[S[S)I
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseDestroy(J)V

    :cond_0
    invoke-static {}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I[BZZZ)Z
    .locals 9

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    move v2, p1

    move v4, v3

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseInitialize(JIII[BZZZ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final a([S[S)[S
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    array-length v0, p1

    new-array v0, v0, [S

    if-eqz p2, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    invoke-static {v1, v2, p1, p2, v0}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseProcessWithRef(J[S[S[S)I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    invoke-static {v1, v2, p1, v0}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseProcessWithoutRef(J[S[S)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseDestroy(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->b:J

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nuance/dragon/toolkit/sse/NativeSseImpl;->sseGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
