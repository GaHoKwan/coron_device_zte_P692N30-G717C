.class Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/elvis/e;


# static fields
.field static a:Z


# instance fields
.field private b:J

.field private final c:Lcom/nuance/dragon/toolkit/file/FileManager;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->a:Z

    :try_start_0
    const-string v0, "dmt_elvis"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;

    const-string v2, "Failed to load native library."

    invoke-static {v1, v2, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->a:Z

    goto :goto_0
.end method

.method constructor <init>(Lcom/nuance/dragon/toolkit/file/FileManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v1, p1}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t delete file: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error copying file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Could not create log output file:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v1, 0x400

    :try_start_4
    new-array v1, v1, [B

    :goto_3
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error closing file:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_1
.end method

.method public static native elvisGetParamsFromBinFile(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;)I
.end method


# virtual methods
.method public final a(Lcom/nuance/dragon/toolkit/elvis/WordSlot;)I
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-nez p1, :cond_0

    const-string v0, "addWordClass (): invalid WordSlot!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getId()Ljava/lang/String;

    move-result-object v3

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addWordClass ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): native Elvis does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getRebuildType()I

    move-result v0

    if-nez v0, :cond_3

    move v5, v6

    :goto_1
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/elvis/WordSlot;->getType()I

    move-result v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisAddWordClass(JLjava/lang/String;IZ)I

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error adding word class to native Elvis: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iput-boolean v6, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->g:Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/nuance/dragon/toolkit/grammar/Word;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const-string v1, "addExternalPronunciation (): invalid word!"

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addExternalPronunciation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/grammar/Word;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): native Elvis does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->g:Z

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSpokenForm()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisAddExternalPronunciation(JLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addExternalPronunciation ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/grammar/Word;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): no pronunciation found."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addExternalPronunciation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/dragon/toolkit/grammar/Word;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): native Elvis error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IIZZ)I
    .locals 8

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addConstraint ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): native Elvis does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->g:Z

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisAddConstraint(JLjava/lang/String;IIZZ)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/Word;Z)I
    .locals 10

    const/4 v9, 0x2

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addWordClassMembers (Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): native Elvis does not exist!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addWordClassMembers (Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): word list is null!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSpokenForm()Ljava/lang/String;

    move-result-object v5

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Word;->getUserId()I

    move-result v6

    const/16 v8, 0xa

    move-object v0, p0

    move-object v3, p1

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisAddClassMember(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No pronunciation found.  Cannot add member to word class ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not add member to word class ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    const/4 v7, 0x1

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error adding transitions to constraint ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": native Elvis does not exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_3

    const-string v4, "_CONSTRAINT_CLASS_START"

    :goto_1
    if-nez p3, :cond_2

    const-string v5, "_CONSTRAINT_CLASS_END"

    :goto_2
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    move-object v0, p0

    move-object v3, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisAddTransition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error adding transitions to constraint ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v5, p3

    goto :goto_2

    :cond_3
    move-object v4, p2

    goto :goto_1
.end method

.method public final a([S)I
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "processAudio: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    array-length v2, p1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisProcessAudio(J[SI)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const-string v0, "getResult: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetChoiceCount(J)I

    move-result v3

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v4, v5}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetGateConfidence(J)I

    move-result v4

    if-gez v3, :cond_1

    const-string v0, "getResult: error retrieving choices."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;IJ)V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/DefaultResultFilter;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/elvis/DefaultResultFilter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/elvis/DefaultResultFilter;->applyFilter(Lcom/nuance/dragon/toolkit/elvis/ElvisResult;)Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_6

    if-lez v3, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getResult: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " choices."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_2

    iget-wide v6, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v6, v7, v1, v5}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetChoiceListEntry(JILjava/util/List;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "elvis result error."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->createRealEntry(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    invoke-direct {v0, v6}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;-><init>(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    const-string v0, "No nbest results."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".psa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".grm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adapt"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadElvis("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): native Elvis does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v4, v1}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForReading(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/util/JSONUtils;->readFromStream(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->createFromJSON(Lorg/json/JSONObject;)Lcom/nuance/dragon/toolkit/elvis/Grammar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisLoad(JLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "loadElvis ("

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") error loading Elvis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Error reading Elvis grm file"

    invoke-static {p0, v4, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->g:Z

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->g:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisDestroy(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->f:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "Error enabling recognition logging: native Elvis does not exist."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisEnableRecognitionLogging(JLjava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    const-string v1, "createElvis: native Elvis already exists."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisCreate(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    :cond_1
    :goto_1
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_9

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    iput p2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->g:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "No binfile or language specified."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;

    invoke-direct {v1}, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;-><init>()V

    invoke-static {v3, p3, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetParamsFromBinFile(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;)I

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "createElvis: Elvis binfile not found: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisCreate(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_7

    iget-object v3, v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_languageCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_sampleRate:I

    if-eq v3, p2, :cond_8

    :cond_6
    const-string v2, "createElvis: wrong language / sampling rate detected for Elvis bin file"

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_languageCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_sampleRate:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Unable to create native Elvis with requested language and frequency."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_languageCode:Ljava/lang/String;

    iget p2, v1, Lcom/nuance/dragon/toolkit/elvis/BinFileParametersJni;->_sampleRate:I

    :cond_8
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x4d2

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisCreate(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    goto/16 :goto_1

    :cond_9
    const-string v1, "Unable to create native Elvis"

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/elvis/Grammar;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".psa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".grm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveElvis("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): native Elvis does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v3, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v3, v4, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisSave(JLjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "saveElvis ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") error saving Elvis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v1, v2}, Lcom/nuance/dragon/toolkit/file/FileManager;->openFileForWriting(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/elvis/Grammar;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/util/JSONUtils;->saveToStream(Lorg/json/JSONObject;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error saving Elvis grammar"

    invoke-static {p0, v2, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nuance/dragon/toolkit/grammar/Word;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeWordClassMember (Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): native Elvis does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeWordClassMember (Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): word is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p2}, Lcom/nuance/dragon/toolkit/grammar/Word;->getSurfaceForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisRemoveClassMember(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "elvisdump.psa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "elvisdump.rpr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "elvisdump.utt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "elvisdump.sph"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v1, "Destination folder cannot be created."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v1, "Destination folder is not a valid directory."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v4}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v7, v8}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 8

    const-string v0, "([a-z]+)_([a-z]+)_([a-z0-9]+)_(\\d+)k\\.bin"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->c:Lcom/nuance/dragon/toolkit/file/FileManager;

    invoke-virtual {v0, v1}, Lcom/nuance/dragon/toolkit/file/FileManager;->findFiles(Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/d;->a(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/d;->b(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/nuance/dragon/toolkit/elvis/d;->c(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    new-instance v7, Lcom/nuance/dragon/toolkit/elvis/g;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v7, v5, v6, v4}, Lcom/nuance/dragon/toolkit/elvis/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/List;II)Z
    .locals 7

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "Error starting wakeup mode: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Error starting wake-up: empty wake-up phrase list."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Phrase ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->h:J

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisStartWakeupMode(J[Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisStopRecognizing(JZ)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b([S)I
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "processWakeupAudio: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->h:J

    :cond_2
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    array-length v2, p1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisProcessWakeupAudio(J[SI)I

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "destroyElvis: native Elvis does not exist!"

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisDestroy(J)V

    iput-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisEnableVerboseLogging(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteConstraint ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): native Elvis does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisDeleteConstraint(JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "Error starting recognize: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Error starting recognize: empty active constraint list."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v6

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Constraint ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v3, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisStartRecognizing(J[Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_0

    move v6, v5

    goto :goto_0
.end method

.method public final c()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "clearConstraints: native Elvis does not exist!"

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisClearGrammar(J)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Erroring Clearing Elvis constraints."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-string v1, "Error starting adaptation: native Elvis does not exist."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "Error starting adaptation: invalid phrase."

    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisStartAdaptation(JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisProcessAdaptation(J)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Error checking wakeup phrase: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisCheckWakeupPhrase(JLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adapt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisEndAdaptationSession(JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public native elvisAddClassMember(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)I
.end method

.method public native elvisAddConstraint(JLjava/lang/String;IIZZ)I
.end method

.method public native elvisAddExternalPronunciation(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native elvisAddTransition(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native elvisAddWordClass(JLjava/lang/String;IZ)I
.end method

.method public native elvisCheckAdaptationStatus(J)Z
.end method

.method public native elvisCheckWakeupPhrase(JLjava/lang/String;)Z
.end method

.method public native elvisClearGrammar(J)I
.end method

.method public native elvisCreate(Lcom/nuance/dragon/toolkit/file/FileManager;Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method public native elvisDeleteConstraint(JLjava/lang/String;)I
.end method

.method public native elvisDestroy(J)V
.end method

.method public native elvisEnableRecognitionLogging(JLjava/lang/String;I)I
.end method

.method public native elvisEnableVerboseLogging(Z)V
.end method

.method public native elvisEndAdaptationSession(JLjava/lang/String;)I
.end method

.method public native elvisGetChoiceCount(J)I
.end method

.method public native elvisGetChoiceListEntry(JILjava/util/List;)I
.end method

.method public native elvisGetGateConfidence(J)I
.end method

.method public native elvisGetRecognitionLoggingStatus(J)I
.end method

.method public native elvisGetUtteranceTime(J)I
.end method

.method public native elvisLoad(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native elvisProcessAdaptation(J)I
.end method

.method public native elvisProcessAudio(J[SI)I
.end method

.method public native elvisProcessWakeupAudio(J[SI)I
.end method

.method public native elvisReleaseUnusedMemory(J)I
.end method

.method public native elvisRemoveClassMember(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public native elvisSave(JLjava/lang/String;)I
.end method

.method public native elvisStartAdaptation(JLjava/lang/String;)I
.end method

.method public native elvisStartRecognizing(J[Ljava/lang/String;IZ)I
.end method

.method public native elvisStartWakeupMode(J[Ljava/lang/String;II)I
.end method

.method public native elvisStopRecognizing(JZ)I
.end method

.method public native elvisStopWakeupMode(J)I
.end method

.method public final f()Z
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Error checking adaptation status: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisCheckAdaptationStatus(J)Z

    move-result v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v2, v3}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisStopWakeupMode(J)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final h()Lcom/nuance/dragon/toolkit/elvis/ElvisResult;
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "getWakeupResult: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetChoiceCount(J)I

    move-result v0

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetGateConfidence(J)I

    move-result v4

    iget-wide v1, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetUtteranceTime(J)I

    move-result v2

    if-gez v0, :cond_1

    const-string v0, "getWakeupResult: error retrieving choices."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    move-object v3, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    if-lez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "getResult: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " choices."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1, v8, v5}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetChoiceListEntry(JILjava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "elvis result error."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x1

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->h:J

    int-to-long v6, v2

    add-long/2addr v0, v6

    const-wide/16 v6, 0xfa

    sub-long/2addr v0, v6

    move-wide v1, v0

    :goto_2
    new-instance v6, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;

    new-array v7, v9, [Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;

    invoke-virtual {v0, v3}, Lcom/nuance/dragon/toolkit/elvis/NbestEntryJni;->createRealEntry(Lcom/nuance/dragon/toolkit/elvis/Grammar;)Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;-><init>([Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList$Entry;)V

    new-instance v0, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/nuance/dragon/toolkit/elvis/ElvisResult;-><init>(Lcom/nuance/dragon/toolkit/elvis/ElvisNbestList;IJ)V

    goto :goto_1

    :cond_4
    const-string v2, "getWakeupResult: error retrieving utterance time."

    invoke-static {p0, v2}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public final i()V
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Error releasing unused memory: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisReleaseUnusedMemory(J)I

    goto :goto_0
.end method

.method public final j()I
    .locals 4

    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Error getting logging status: native Elvis does not exist."

    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nuance/dragon/toolkit/elvis/NativeElvisImpl;->elvisGetRecognitionLoggingStatus(J)I

    move-result v0

    goto :goto_0
.end method
