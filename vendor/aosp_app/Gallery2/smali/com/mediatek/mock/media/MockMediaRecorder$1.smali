.class Lcom/mediatek/mock/media/MockMediaRecorder$1;
.super Ljava/lang/Object;
.source "MockMediaRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mock/media/MockMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mock/media/MockMediaRecorder;


# direct methods
.method constructor <init>(Lcom/mediatek/mock/media/MockMediaRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 64
    const-string v7, "MockMediaRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$000(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v7, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$000(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 66
    iget-object v7, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$100(Lcom/mediatek/mock/media/MockMediaRecorder;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 67
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 68
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 69
    .local v0, b:[B
    const/4 v6, -0x1

    .line 71
    .local v6, size:I
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$000(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 72
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 76
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string v7, "MockMediaRecorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mPath:Ljava/lang/String;
    invoke-static {v9}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$000(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v2, :cond_0

    .line 82
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_0
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    .end local v0           #b:[B
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v6           #size:I
    :cond_1
    :goto_2
    return-void

    .line 81
    .restart local v0       #b:[B
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #size:I
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_3
    if-eqz v5, :cond_4

    .line 85
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v4, v5

    .line 89
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 87
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    const-string v7, "MockMediaRecorder"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 90
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 87
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    const-string v7, "MockMediaRecorder"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 78
    .local v3, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v7, "MockMediaRecorder"

    const-string v8, "read blank.jpg in raw reault in error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    if-eqz v2, :cond_5

    .line 82
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_5
    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 87
    :catch_4
    move-exception v1

    .line 88
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "MockMediaRecorder"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 81
    :goto_4
    if-eqz v2, :cond_6

    .line 82
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    :cond_6
    if-eqz v4, :cond_7

    .line 85
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 89
    :cond_7
    :goto_5
    throw v7

    .line 87
    :catch_5
    move-exception v1

    .line 88
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "MockMediaRecorder"

    const-string v9, "close inputStream fail"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 91
    .end local v0           #b:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v6           #size:I
    :cond_8
    iget-object v7, p0, Lcom/mediatek/mock/media/MockMediaRecorder$1;->this$0:Lcom/mediatek/mock/media/MockMediaRecorder;

    #getter for: Lcom/mediatek/mock/media/MockMediaRecorder;->mFd:Ljava/io/FileDescriptor;
    invoke-static {v7}, Lcom/mediatek/mock/media/MockMediaRecorder;->access$200(Lcom/mediatek/mock/media/MockMediaRecorder;)Ljava/io/FileDescriptor;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 92
    const-string v7, "MockMediaRecorder"

    const-string v8, "mFd != null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 80
    .restart local v0       #b:[B
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    .restart local v6       #size:I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 77
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 75
    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method
