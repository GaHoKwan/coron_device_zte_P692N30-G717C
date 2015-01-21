.class public final Lcom/zte/filexplorer/AsyncCopier;
.super Landroid/os/AsyncTask;
.source "AsyncCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private currentNumber:I

.field private destination:Ljava/io/File;

.field private filesNumber:I

.field private mProgressMessage:Ljava/lang/String;

.field private mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

.field protected final mResources:Landroid/content/res/Resources;

.field private mResult:Ljava/lang/Boolean;

.field private source:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resources"
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/zte/filexplorer/AsyncCopier;->mResources:Landroid/content/res/Resources;

    .line 30
    const-string v0, "Starting"

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressMessage:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->source:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->destination:Ljava/io/File;

    .line 33
    return-void
.end method


# virtual methods
.method protected copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 13
    .parameter "sourceFile"
    .parameter "destinationFile"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 100
    .local v7, files:[Ljava/lang/String;
    array-length v1, v7

    iput v1, p0, Lcom/zte/filexplorer/AsyncCopier;->filesNumber:I

    .line 101
    iput v11, p0, Lcom/zte/filexplorer/AsyncCopier;->currentNumber:I

    .line 102
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v1, v7

    if-ge v10, v1, :cond_4

    .line 103
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v7, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v7, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/zte/filexplorer/AsyncCopier;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 102
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    .end local v7           #files:[Ljava/lang/String;
    .end local v10           #i:I
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/zte/filexplorer/AsyncCopier;->filesNumber:I

    if-nez v1, :cond_2

    .line 108
    const/4 v1, 0x1

    iput v1, p0, Lcom/zte/filexplorer/AsyncCopier;->filesNumber:I

    .line 109
    :cond_2
    iget v1, p0, Lcom/zte/filexplorer/AsyncCopier;->currentNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zte/filexplorer/AsyncCopier;->currentNumber:I

    .line 110
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/filexplorer/AsyncCopier;->currentNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/filexplorer/AsyncCopier;->filesNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/zte/filexplorer/AsyncCopier;->publishProgress([Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 113
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v8, fis:Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 115
    .local v9, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 116
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 117
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 118
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 119
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 120
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 121
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #fcin:Ljava/nio/channels/FileChannel;
    .end local v5           #fcout:Ljava/nio/channels/FileChannel;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    :cond_4
    move v1, v12

    .line 130
    :goto_1
    return v1

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v1, v11

    .line 124
    goto :goto_1

    .line 125
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 126
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move v1, v11

    .line 127
    goto :goto_1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/zte/filexplorer/AsyncCopier;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->source:Ljava/io/File;

    iget-object v1, p0, Lcom/zte/filexplorer/AsyncCopier;->destination:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/zte/filexplorer/AsyncCopier;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/filexplorer/AsyncCopier;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    .line 53
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zte/filexplorer/AsyncCopier;->mResult:Ljava/lang/Boolean;

    .line 72
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    invoke-interface {v0}, Lcom/zte/filexplorer/ProgressTracker;->onComplete()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    .line 77
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/filexplorer/AsyncCopier;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/filexplorer/AsyncCopier;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 59
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressMessage:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    iget-object v1, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zte/filexplorer/ProgressTracker;->onProgress(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setProgressTracker(Lcom/zte/filexplorer/ProgressTracker;)V
    .locals 2
    .parameter "progressTracker"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    .line 40
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    iget-object v1, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zte/filexplorer/ProgressTracker;->onProgress(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mResult:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/zte/filexplorer/AsyncCopier;->mProgressTracker:Lcom/zte/filexplorer/ProgressTracker;

    invoke-interface {v0}, Lcom/zte/filexplorer/ProgressTracker;->onComplete()V

    .line 46
    :cond_0
    return-void
.end method
