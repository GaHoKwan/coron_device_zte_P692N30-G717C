.class public final Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "VCardComposer.java"

# interfaces
.implements Lcom/pim/vcard/VCardComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pim/vcard/VCardComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerForOutputStream"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer.HandlerForOutputStream"


# instance fields
.field private mOnTerminateIsCalled:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWriter:Ljava/io/Writer;

.field final synthetic this$0:Lcom/pim/vcard/VCardComposer;


# direct methods
.method public constructor <init>(Lcom/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "outputStream"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 182
    iput-object p2, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 183
    return-void
.end method


# virtual methods
.method public closeOutputStream()V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VCardComposer.HandlerForOutputStream"

    const-string v2, "IOException is thrown during close(). Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->onTerminate()V

    .line 275
    :cond_0
    return-void
.end method

.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 6
    .parameter "vcard"

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v0

    .line 222
    .local v0, costTime:J
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 224
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v3

    const-string v4, "write vcf cost time"

    invoke-virtual {v3, v4, v0, v1}, Lcom/util/TimeCount;->addDurTimeByTitle(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v3, 0x1

    .end local v0           #costTime:J
    :goto_0
    return v3

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, e:Ljava/io/IOException;
    const-string v3, "VCardComposer.HandlerForOutputStream"

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException occurred during exportOneContactData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException occurred: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/pim/vcard/VCardComposer;->access$1(Lcom/pim/vcard/VCardComposer;Ljava/lang/String;)V

    .line 230
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v0

    .line 188
    .local v0, costTime:J
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    .line 189
    iget-object v7, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v8, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    #getter for: Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;
    invoke-static {v8}, Lcom/pim/vcard/VCardComposer;->access$0(Lcom/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 188
    iput-object v5, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    .line 191
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v5

    sub-long v0, v5, v0

    .line 192
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v5

    const-string v6, "write vcf cost time"

    invoke-virtual {v5, v6, v0, v1}, Lcom/util/TimeCount;->addDurTimeByTitle(Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    iget-object v5, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    #getter for: Lcom/pim/vcard/VCardComposer;->mIsDoCoMo:Z
    invoke-static {v5}, Lcom/pim/vcard/VCardComposer;->access$2(Lcom/pim/vcard/VCardComposer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    :try_start_1
    iget-object v5, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    iget-object v6, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    const-string v7, "-1"

    const/4 v8, 0x0

    #calls: Lcom/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    invoke-static {v6, v7, v8}, Lcom/pim/vcard/VCardComposer;->access$3(Lcom/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/pim/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 216
    :cond_0
    const/4 v4, 0x1

    .end local v0           #costTime:J
    :goto_0
    return v4

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, e1:Ljava/io/UnsupportedEncodingException;
    const-string v5, "VCardComposer.HandlerForOutputStream"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported charset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    #getter for: Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;
    invoke-static {v7}, Lcom/pim/vcard/VCardComposer;->access$0(Lcom/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v5, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Encoding is not supported (usually this does not happen!): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    #getter for: Lcom/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;
    invoke-static {v7}, Lcom/pim/vcard/VCardComposer;->access$0(Lcom/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    #setter for: Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/pim/vcard/VCardComposer;->access$1(Lcom/pim/vcard/VCardComposer;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .end local v3           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #costTime:J
    :catch_1
    move-exception v2

    .line 205
    .local v2, e:Lcom/pim/vcard/exception/VCardException;
    const-string v5, "VCardComposer.HandlerForOutputStream"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "VCardException has been thrown during on Init(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Lcom/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .end local v2           #e:Lcom/pim/vcard/exception/VCardException;
    :catch_2
    move-exception v2

    .line 209
    .local v2, e:Ljava/io/IOException;
    const-string v5, "VCardComposer.HandlerForOutputStream"

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException occurred during exportOneContactData: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v5, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Lcom/pim/vcard/VCardComposer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException occurred: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/pim/vcard/VCardComposer;->access$1(Lcom/pim/vcard/VCardComposer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 6

    .prologue
    .line 236
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v0

    .line 238
    .local v0, costTime:J
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 239
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    if-eqz v3, :cond_1

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 245
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    instance-of v3, v3, Ljava/io/FileOutputStream;

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v3, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    .line 258
    :cond_1
    :goto_0
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/util/TimeCount;->getCurTime()J

    move-result-wide v3

    sub-long v0, v3, v0

    .line 259
    invoke-static {}, Lcom/util/TimeCount;->getInstance()Lcom/util/TimeCount;

    move-result-object v3

    const-string v4, "write vcf cost time"

    invoke-virtual {v3, v4, v0, v1}, Lcom/util/TimeCount;->addDurTimeByTitle(Ljava/lang/String;J)Z

    .line 260
    return-void

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, e:Ljava/io/IOException;
    :try_start_1
    const-string v3, "VCardComposer.HandlerForOutputStream"

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException during closing the output stream: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 251
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    invoke-virtual {p0}, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    goto :goto_0

    .line 253
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 254
    invoke-virtual {p0}, Lcom/pim/vcard/VCardComposer$HandlerForOutputStream;->closeOutputStream()V

    .line 255
    throw v3
.end method
