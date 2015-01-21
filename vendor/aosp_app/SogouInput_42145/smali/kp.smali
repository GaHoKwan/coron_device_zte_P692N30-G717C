.class public Lkp;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lko;


# direct methods
.method public constructor <init>(Lko;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lkp;->a:Lko;

    .line 195
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 196
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v2, Lri;

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lri;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lko;->a(Lko;Lri;)Lri;

    .line 202
    const/4 v2, 0x0

    .line 203
    const/4 v6, 0x0

    .line 208
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    :try_start_0
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lri;

    move-result-object v0

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lri;->c(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lri;

    move-result-object v0

    invoke-virtual {v0}, Lri;->c()V

    .line 213
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lko;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 217
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 218
    iget-object v0, p0, Lkp;->a:Lko;

    const-string v3, "=========prepare download1==============="

    invoke-static {v0, v3}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download1 url:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v0, v3, v7, v8}, Lkq;->a(Ljava/lang/String;II)V

    .line 223
    :cond_1
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v7, v8}, Lko;->a(Ljava/lang/String;II)V

    .line 225
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lri;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 226
    if-nez v0, :cond_4

    .line 227
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lri;

    move-result-object v5

    invoke-virtual {v5}, Lri;->a()I

    move-result v5

    invoke-interface {v0, v3, v5}, Lkq;->a(Ljava/lang/String;I)V

    .line 230
    :cond_2
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lri;

    move-result-object v5

    invoke-virtual {v5}, Lri;->a()I

    move-result v5

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->a(Lko;)Lri;

    move-result-object v7

    invoke-virtual {v0, v3, v5, v7}, Lko;->a(Ljava/lang/String;ILri;)V

    .line 231
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v5, 0x26

    invoke-static {v0, v3, v5}, Lko;->a(Lko;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_36
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 415
    :try_start_1
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    .line 416
    if-eqz v4, :cond_3

    .line 417
    :try_start_2
    invoke-virtual {v2}, Layt;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18

    .line 422
    :cond_3
    :try_start_3
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v0, v1}, Lko;->a(Lko;Lri;)Lri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1a

    .line 423
    :try_start_5
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1b

    :try_start_6
    invoke-static {v0}, Lko;->a(Lko;)Lks;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1c

    move-result-object v0

    :try_start_7
    invoke-virtual {v0}, Lks;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    .line 428
    :goto_0
    return-void

    .line 234
    :cond_4
    :try_start_8
    const-string v2, "Content-Length"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 235
    const-string v2, "Content-Length"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 237
    :goto_1
    new-instance v2, Layt;

    const-string v7, "rw"

    const/16 v8, 0xa

    invoke-direct {v2, v5, v7, v8}, Layt;-><init>(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_36
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_30
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 238
    int-to-long v7, v3

    :try_start_9
    invoke-virtual {v2, v7, v8}, Layt;->setLength(J)V

    .line 239
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Layt;->seek(J)V

    .line 242
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lku;

    move-result-object v5

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->a(Lko;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lku;->g:Ljava/lang/String;

    .line 243
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lku;

    move-result-object v5

    const/4 v7, 0x0

    iput v7, v5, Lku;->d:I

    .line 244
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lku;

    move-result-object v5

    const/4 v7, 0x0

    iput v7, v5, Lku;->b:I

    .line 245
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lku;

    move-result-object v5

    iput v3, v5, Lku;->c:I

    .line 246
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lks;

    move-result-object v5

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->a(Lko;)Lku;

    move-result-object v7

    invoke-virtual {v5, v7}, Lks;->a(Lku;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_37
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2a

    move-object v5, v2

    move v2, v1

    .line 287
    :goto_2
    if-nez v0, :cond_b

    .line 288
    :try_start_a
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Lri;

    move-result-object v3

    invoke-virtual {v3}, Lri;->a()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lkq;->a(Ljava/lang/String;I)V

    .line 291
    :cond_5
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Lri;

    move-result-object v3

    invoke-virtual {v3}, Lri;->a()I

    move-result v3

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->a(Lko;)Lri;

    move-result-object v7

    invoke-virtual {v0, v2, v3, v7}, Lko;->a(Ljava/lang/String;ILri;)V

    .line 292
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x26

    invoke-static {v0, v2, v3}, Lko;->a(Lko;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2d

    .line 415
    :try_start_b
    invoke-static {v6}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    .line 416
    if-eqz v5, :cond_6

    .line 417
    :try_start_c
    invoke-virtual {v5}, Layt;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    .line 422
    :cond_6
    :try_start_d
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_13

    const/4 v1, 0x0

    :try_start_e
    invoke-static {v0, v1}, Lko;->a(Lko;Lri;)Lri;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14

    .line 423
    :try_start_f
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_15

    :try_start_10
    invoke-static {v0}, Lko;->a(Lko;)Lks;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_16

    move-result-object v0

    :try_start_11
    invoke-virtual {v0}, Lks;->a()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 249
    :cond_7
    :try_start_12
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lks;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    .line 250
    iget v2, v0, Lku;->c:I

    if-lez v2, :cond_21

    iget v2, v0, Lku;->c:I

    iget v3, v0, Lku;->d:I

    if-lt v2, v3, :cond_21

    .line 251
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 252
    iget v3, v0, Lku;->c:I

    .line 253
    iget v0, v0, Lku;->d:I

    .line 254
    new-instance v2, Layt;

    const-string v7, "rw"

    const/16 v8, 0xa

    invoke-direct {v2, v5, v7, v8}, Layt;-><init>(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_36
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_30
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 255
    int-to-long v7, v0

    :try_start_13
    invoke-virtual {v2, v7, v8}, Layt;->seek(J)V

    .line 256
    iget-object v5, p0, Lkp;->a:Lko;

    const-string v7, "=========prepare download2==============="

    invoke-static {v5, v7}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lkp;->a:Lko;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download2 url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lkp;->a:Lko;

    invoke-static {v8}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lkp;->a:Lko;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "============totalBytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",   startOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lkq;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 260
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lkq;

    move-result-object v5

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v0, v3}, Lkq;->a(Ljava/lang/String;II)V

    .line 262
    :cond_8
    iget-object v5, p0, Lkp;->a:Lko;

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v0, v3}, Lko;->a(Ljava/lang/String;II)V

    .line 264
    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lri;

    move-result-object v5

    invoke-virtual {v5, v0}, Lri;->a(I)Lorg/apache/http/HttpResponse;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_38
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_32
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2b

    move-result-object v5

    move v12, v0

    move-object v0, v5

    move-object v5, v2

    move v2, v12

    goto/16 :goto_2

    .line 266
    :cond_9
    :try_start_14
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 267
    new-instance v2, Layt;

    const-string v3, "rw"

    const/16 v7, 0xa

    invoke-direct {v2, v5, v3, v7}, Layt;-><init>(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_36
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_30
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    .line 268
    :try_start_15
    iget v3, v0, Lku;->c:I

    .line 269
    int-to-long v7, v3

    invoke-virtual {v2, v7, v8}, Layt;->setLength(J)V

    .line 270
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Layt;->seek(J)V

    .line 271
    const/4 v5, 0x0

    .line 272
    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->a(Lko;)Lks;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v0, v0, Lku;->e:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lks;->a(ILjava/lang/String;)V

    .line 273
    iget-object v0, p0, Lkp;->a:Lko;

    const-string v7, "=========prepare download3==============="

    invoke-static {v0, v7}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download3 url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lkp;->a:Lko;

    invoke-static {v8}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "============totalBytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",   startOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 277
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5, v3}, Lkq;->a(Ljava/lang/String;II)V

    .line 279
    :cond_a
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v3}, Lko;->a(Ljava/lang/String;II)V

    .line 281
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lri;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lri;->a(I)Lorg/apache/http/HttpResponse;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_39
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_33
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2c

    move-result-object v0

    move-object v5, v2

    move v2, v1

    goto/16 :goto_2

    .line 297
    :cond_b
    :try_start_16
    iget-object v1, p0, Lkp;->a:Lko;

    const-string v6, "=========start download==============="

    invoke-static {v1, v6}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lkp;->a:Lko;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentBytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " totalBytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->a(Lko;)Lks;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v7, p0, Lkp;->a:Lko;

    invoke-static {v7}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lks;->b(ILjava/lang/String;)V

    .line 300
    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->a(Lko;)Lkq;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 301
    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->a(Lko;)Lkq;

    move-result-object v1

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v2, v3}, Lkq;->b(Ljava/lang/String;II)V

    .line 303
    :cond_c
    iget-object v1, p0, Lkp;->a:Lko;

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2, v3}, Lko;->b(Ljava/lang/String;II)V

    .line 305
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_3b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2e

    move-result-object v4

    .line 308
    const/16 v0, 0x400

    :try_start_17
    new-array v0, v0, [B

    .line 310
    const-wide/16 v6, 0x0

    move v1, v2

    .line 312
    :goto_4
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_d

    .line 313
    iget-object v9, p0, Lkp;->a:Lko;

    invoke-static {v9}, Lko;->a(Lko;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_d

    iget-object v9, p0, Lkp;->a:Lko;

    invoke-static {v9}, Lko;->a(Lko;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_34
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2e

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_10

    .line 339
    :cond_d
    :try_start_18
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    .line 340
    iget-object v0, p0, Lkp;->a:Lko;

    const-string v2, "=========pause download==============="

    invoke-static {v0, v2}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentBytes:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " totalBytes:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lks;->b(ILjava/lang/String;)V

    .line 343
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 344
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1, v3}, Lkq;->d(Ljava/lang/String;II)V

    .line 346
    :cond_e
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3}, Lko;->d(Ljava/lang/String;II)V

    .line 349
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lks;->a(ILjava/lang/String;)V

    .line 350
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v0, v2, v3, v1}, Lko;->a(Lko;III)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2d

    .line 415
    :goto_5
    :try_start_19
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    .line 416
    if-eqz v5, :cond_f

    .line 417
    :try_start_1a
    invoke-virtual {v5}, Layt;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    .line 422
    :cond_f
    :try_start_1b
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    const/4 v1, 0x0

    :try_start_1c
    invoke-static {v0, v1}, Lko;->a(Lko;Lri;)Lri;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    .line 423
    :try_start_1d
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f

    :try_start_1e
    invoke-static {v0}, Lko;->a(Lko;)Lks;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    move-result-object v0

    :try_start_1f
    invoke-virtual {v0}, Lks;->a()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    goto/16 :goto_0

    .line 424
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 316
    :cond_10
    const/4 v9, 0x0

    :try_start_20
    invoke-virtual {v5, v0, v9, v8}, Layt;->write([BII)V

    .line 317
    add-int/2addr v1, v8

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2e

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_12

    .line 320
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 323
    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lkq;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 324
    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lkq;

    move-result-object v2

    iget-object v8, p0, Lkp;->a:Lko;

    invoke-static {v8}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v1, v3}, Lkq;->c(Ljava/lang/String;II)V

    .line 326
    :cond_11
    iget-object v2, p0, Lkp;->a:Lko;

    iget-object v8, p0, Lkp;->a:Lko;

    invoke-static {v8}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v1, v3}, Lko;->c(Ljava/lang/String;II)V

    .line 327
    iget-object v2, p0, Lkp;->a:Lko;

    iget-object v8, p0, Lkp;->a:Lko;

    invoke-static {v8}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v2, v8, v3, v1}, Lko;->a(Lko;III)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_21} :catch_4
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_5
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2d

    move v2, v1

    .line 329
    :cond_12
    :try_start_22
    iget-object v8, p0, Lkp;->a:Lko;

    invoke-static {v8}, Lko;->a(Lko;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_22} :catch_2
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2e

    .line 330
    :try_start_23
    iget-object v9, p0, Lkp;->a:Lko;

    invoke-static {v9}, Lko;->b(Lko;)I

    move-result v9

    sget v10, Lko;->a:I

    if-ne v9, v10, :cond_13

    .line 331
    iget-object v9, p0, Lkp;->a:Lko;

    invoke-static {v9}, Lko;->a(Lko;)Ljava/lang/Object;

    move-result-object v9

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 332
    iget-object v9, p0, Lkp;->a:Lko;

    invoke-static {v9}, Lko;->b(Lko;)I

    move-result v9

    sget v10, Lko;->a:I

    if-ne v9, v10, :cond_13

    .line 333
    iget-object v9, p0, Lkp;->a:Lko;

    invoke-virtual {v9}, Lko;->c()V

    .line 335
    :cond_13
    monitor-exit v8

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :try_start_24
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2e

    .line 384
    :catch_2
    move-exception v0

    move v1, v2

    move-object v2, v4

    move-object v4, v5

    .line 386
    :goto_6
    :try_start_25
    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Lks;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lks;->b(ILjava/lang/String;)V

    .line 387
    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Lks;

    move-result-object v3

    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lks;->a(ILjava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 389
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 390
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x26

    invoke-interface {v0, v1, v3}, Lkq;->a(Ljava/lang/String;I)V

    .line 392
    :cond_14
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x26

    iget-object v5, p0, Lkp;->a:Lko;

    invoke-static {v5}, Lko;->a(Lko;)Lri;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v5}, Lko;->a(Ljava/lang/String;ILri;)V

    .line 393
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x26

    invoke-static {v0, v1, v3}, Lko;->a(Lko;II)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    .line 415
    :try_start_26
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 416
    if-eqz v4, :cond_15

    .line 417
    invoke-virtual {v4}, Layt;->close()V

    .line 422
    :cond_15
    iget-object v0, p0, Lkp;->a:Lko;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lko;->a(Lko;Lri;)Lri;

    .line 423
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    invoke-virtual {v0}, Lks;->a()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_3

    goto/16 :goto_0

    .line 424
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 351
    :cond_16
    :try_start_27
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_18

    .line 352
    iget-object v0, p0, Lkp;->a:Lko;

    const-string v2, "=========cancel download==============="

    invoke-static {v0, v2}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentBytes:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " totalBytes:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lks;->a(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 356
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1, v3}, Lkq;->e(Ljava/lang/String;II)V

    .line 358
    :cond_17
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->a(Lko;)Lri;

    move-result-object v6

    invoke-virtual {v0, v2, v1, v3, v6}, Lko;->a(Ljava/lang/String;IILri;)V

    .line 359
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lko;->a(Lko;I)V

    goto/16 :goto_5

    .line 384
    :catch_4
    move-exception v0

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6

    .line 361
    :cond_18
    if-ge v1, v3, :cond_1c

    .line 362
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lks;->b(ILjava/lang/String;)V

    .line 363
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 364
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-interface {v0, v2, v3}, Lkq;->a(Ljava/lang/String;I)V

    .line 366
    :cond_19
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->a(Lko;)Lri;

    move-result-object v6

    invoke-virtual {v0, v2, v3, v6}, Lko;->a(Ljava/lang/String;ILri;)V

    .line 367
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x2a

    invoke-static {v0, v2, v3}, Lko;->a(Lko;II)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_27 .. :try_end_27} :catch_4
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_2d

    goto/16 :goto_5

    .line 394
    :catch_5
    move-exception v0

    .line 395
    :goto_7
    :try_start_28
    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lks;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lks;->b(ILjava/lang/String;)V

    .line 396
    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lks;

    move-result-object v2

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lks;->a(ILjava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 398
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 399
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v0, v1, v2}, Lkq;->a(Ljava/lang/String;I)V

    .line 401
    :cond_1a
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Lri;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lko;->a(Ljava/lang/String;ILri;)V

    .line 402
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Lko;->a(Lko;II)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    .line 415
    :try_start_29
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_24

    .line 416
    if-eqz v5, :cond_1b

    .line 417
    :try_start_2a
    invoke-virtual {v5}, Layt;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_25

    .line 422
    :cond_1b
    :try_start_2b
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_26

    const/4 v1, 0x0

    :try_start_2c
    invoke-static {v0, v1}, Lko;->a(Lko;Lri;)Lri;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_27

    .line 423
    :try_start_2d
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_28

    :try_start_2e
    invoke-static {v0}, Lko;->a(Lko;)Lks;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_29

    move-result-object v0

    :try_start_2f
    invoke-virtual {v0}, Lks;->a()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_6

    goto/16 :goto_0

    .line 424
    :catch_6
    move-exception v0

    goto/16 :goto_3

    .line 370
    :cond_1c
    :try_start_30
    iget-object v0, p0, Lkp;->a:Lko;

    const-string v2, "=========finish download==============="

    invoke-static {v0, v2}, Lko;->a(Lko;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lkp;->a:Lko;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentBytes:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " totalBytes:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lko;->a(Lko;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_30 .. :try_end_30} :catch_4
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_5
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2d

    .line 373
    :try_start_31
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lks;->a(ILjava/lang/String;)V

    .line 374
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lks;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lks;->b(ILjava/lang/String;)V

    .line 375
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 376
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lkq;->f(Ljava/lang/String;II)V

    .line 378
    :cond_1d
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lri;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lko;->b(Ljava/lang/String;IILri;)V

    .line 379
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lko;->a(Lko;ILjava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_31 .. :try_end_31} :catch_7
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_2f

    goto/16 :goto_5

    .line 384
    :catch_7
    move-exception v0

    move v1, v3

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6

    .line 403
    :catch_8
    move-exception v0

    move-object v5, v4

    .line 405
    :goto_8
    :try_start_32
    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lks;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v6, p0, Lkp;->a:Lko;

    invoke-static {v6}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lks;->b(ILjava/lang/String;)V

    .line 406
    iget-object v2, p0, Lkp;->a:Lko;

    invoke-static {v2}, Lko;->a(Lko;)Lks;

    move-result-object v2

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lks;->a(ILjava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 409
    iget-object v0, p0, Lkp;->a:Lko;

    invoke-static {v0}, Lko;->a(Lko;)Lkq;

    move-result-object v0

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-interface {v0, v1, v2}, Lkq;->a(Ljava/lang/String;I)V

    .line 411
    :cond_1e
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2a

    iget-object v3, p0, Lkp;->a:Lko;

    invoke-static {v3}, Lko;->a(Lko;)Lri;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lko;->a(Ljava/lang/String;ILri;)V

    .line 412
    iget-object v0, p0, Lkp;->a:Lko;

    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->b(Lko;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Lko;->a(Lko;II)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_5

    .line 415
    :try_start_33
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1e

    .line 416
    if-eqz v5, :cond_1f

    .line 417
    :try_start_34
    invoke-virtual {v5}, Layt;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1f

    .line 422
    :cond_1f
    :try_start_35
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_20

    const/4 v1, 0x0

    :try_start_36
    invoke-static {v0, v1}, Lko;->a(Lko;Lri;)Lri;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_21

    .line 423
    :try_start_37
    iget-object v0, p0, Lkp;->a:Lko;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_22

    :try_start_38
    invoke-static {v0}, Lko;->a(Lko;)Lks;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_23

    move-result-object v0

    :try_start_39
    invoke-virtual {v0}, Lks;->a()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_9

    goto/16 :goto_0

    .line 424
    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    :goto_9
    throw v0

    :catchall_1
    move-exception v0

    move-object v5, v4

    .line 415
    :goto_a
    :try_start_3a
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 416
    if-eqz v5, :cond_20

    .line 417
    invoke-virtual {v5}, Layt;->close()V

    .line 422
    :cond_20
    iget-object v1, p0, Lkp;->a:Lko;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lko;->a(Lko;Lri;)Lri;

    .line 423
    iget-object v1, p0, Lkp;->a:Lko;

    invoke-static {v1}, Lko;->a(Lko;)Lks;

    move-result-object v1

    invoke-virtual {v1}, Lks;->a()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_a

    goto :goto_9

    .line 424
    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :catch_e
    move-exception v0

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_3

    :catch_11
    move-exception v0

    goto/16 :goto_3

    :catch_12
    move-exception v0

    goto/16 :goto_3

    :catch_13
    move-exception v0

    goto/16 :goto_3

    :catch_14
    move-exception v0

    goto/16 :goto_3

    :catch_15
    move-exception v0

    goto/16 :goto_3

    :catch_16
    move-exception v0

    goto/16 :goto_3

    :catch_17
    move-exception v0

    goto/16 :goto_3

    :catch_18
    move-exception v0

    goto/16 :goto_3

    :catch_19
    move-exception v0

    goto/16 :goto_3

    :catch_1a
    move-exception v0

    goto/16 :goto_3

    :catch_1b
    move-exception v0

    goto/16 :goto_3

    :catch_1c
    move-exception v0

    goto/16 :goto_3

    :catch_1d
    move-exception v0

    goto/16 :goto_3

    :catch_1e
    move-exception v0

    goto/16 :goto_3

    :catch_1f
    move-exception v0

    goto/16 :goto_3

    :catch_20
    move-exception v0

    goto/16 :goto_3

    :catch_21
    move-exception v0

    goto/16 :goto_3

    :catch_22
    move-exception v0

    goto/16 :goto_3

    :catch_23
    move-exception v0

    goto/16 :goto_3

    :catch_24
    move-exception v0

    goto/16 :goto_3

    :catch_25
    move-exception v0

    goto/16 :goto_3

    :catch_26
    move-exception v0

    goto/16 :goto_3

    :catch_27
    move-exception v0

    goto/16 :goto_3

    :catch_28
    move-exception v0

    goto/16 :goto_3

    :catch_29
    move-exception v0

    goto/16 :goto_3

    .line 414
    :catchall_2
    move-exception v0

    move-object v5, v2

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v5, v2

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v5, v2

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_a

    .line 403
    :catch_2a
    move-exception v0

    move-object v5, v2

    goto/16 :goto_8

    :catch_2b
    move-exception v0

    move-object v5, v2

    goto/16 :goto_8

    :catch_2c
    move-exception v0

    move-object v5, v2

    goto/16 :goto_8

    :catch_2d
    move-exception v0

    goto/16 :goto_8

    :catch_2e
    move-exception v0

    move v1, v2

    goto/16 :goto_8

    :catch_2f
    move-exception v0

    move v1, v3

    goto/16 :goto_8

    .line 394
    :catch_30
    move-exception v0

    move-object v5, v4

    goto/16 :goto_7

    :catch_31
    move-exception v0

    move-object v5, v2

    goto/16 :goto_7

    :catch_32
    move-exception v0

    move-object v5, v2

    goto/16 :goto_7

    :catch_33
    move-exception v0

    move-object v5, v2

    goto/16 :goto_7

    :catch_34
    move-exception v0

    move v1, v2

    goto/16 :goto_7

    :catch_35
    move-exception v0

    move v1, v3

    goto/16 :goto_7

    .line 384
    :catch_36
    move-exception v0

    move-object v2, v4

    goto/16 :goto_6

    :catch_37
    move-exception v0

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto/16 :goto_6

    :catch_38
    move-exception v0

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto/16 :goto_6

    :catch_39
    move-exception v0

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto/16 :goto_6

    :catch_3a
    move-exception v0

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_3b
    move-exception v0

    move v1, v2

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :cond_21
    move v2, v1

    move v3, v1

    move-object v0, v4

    move-object v5, v4

    goto/16 :goto_2

    :cond_22
    move v3, v1

    goto/16 :goto_1
.end method
