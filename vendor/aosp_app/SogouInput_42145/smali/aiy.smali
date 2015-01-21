.class public Laiy;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Laix;


# direct methods
.method public constructor <init>(Laix;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Laiy;->a:Laix;

    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 134
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 139
    const/4 v2, 0x0

    .line 140
    const/4 v1, 0x0

    .line 144
    new-instance v6, Ljava/io/File;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Lri;

    move-result-object v3

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lri;->c(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Laiy;->a:Laix;

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laix;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 149
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 152
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 153
    iget-object v3, p0, Laiy;->a:Laix;

    const-string v4, "=========prepare download==============="

    invoke-static {v3, v4}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 154
    iget-object v3, p0, Laiy;->a:Laix;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v3

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v7}, Laja;->a(Ljava/lang/String;II)V

    .line 156
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Laiz;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Laiz;

    move-result-object v3

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v7}, Laiz;->a(Ljava/lang/String;II)V

    .line 160
    :cond_1
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Lri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lri;->a(I)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 161
    if-nez v5, :cond_5

    .line 162
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)V

    .line 163
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Lri;

    move-result-object v4

    invoke-virtual {v4}, Lri;->a()I

    move-result v4

    invoke-interface {v0, v3, v4}, Laiz;->a(Ljava/lang/String;I)V

    .line 166
    :cond_2
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x26

    invoke-static {v0, v3, v4}, Laix;->a(Laix;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 330
    :try_start_1
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1b

    .line 331
    if-eqz v2, :cond_3

    .line 332
    :try_start_2
    invoke-virtual {v2}, Layt;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c

    .line 334
    :cond_3
    :try_start_3
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1d

    :try_start_4
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1e

    move-result-object v0

    if-eqz v0, :cond_4

    .line 335
    :try_start_5
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1f

    :try_start_6
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_21

    move-result-object v0

    :try_start_7
    invoke-virtual {v0}, Lri;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_22

    .line 337
    :cond_4
    :try_start_8
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_20

    :try_start_9
    invoke-static {v0}, Laix;->a(Laix;)Laho;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_23

    move-result-object v0

    :try_start_a
    invoke-virtual {v0}, Laho;->a()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_24

    .line 342
    :goto_0
    return-void

    .line 169
    :cond_5
    :try_start_b
    const-string v3, "Content-Length"

    invoke-interface {v5, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 170
    const-string v3, "Content-Length"

    invoke-interface {v5, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 172
    :goto_1
    new-instance v3, Layt;

    const-string v7, "rw"

    const/16 v8, 0xa

    invoke-direct {v3, v6, v7, v8}, Layt;-><init>(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 173
    int-to-long v6, v4

    :try_start_c
    invoke-virtual {v3, v6, v7}, Layt;->setLength(J)V

    .line 174
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Layt;->seek(J)V

    .line 177
    new-instance v2, Lahq;

    invoke-direct {v2}, Lahq;-><init>()V

    .line 178
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->c(Laix;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lahq;->a:Ljava/lang/String;

    .line 179
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->a(Laix;)I

    move-result v6

    iput v6, v2, Lahq;->a:I

    .line 180
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lahq;->b:Ljava/lang/String;

    .line 181
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->a(Laix;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lahq;->c:Ljava/lang/String;

    .line 182
    const/4 v6, 0x0

    iput v6, v2, Lahq;->d:I

    .line 183
    const/4 v6, 0x0

    iput v6, v2, Lahq;->b:I

    .line 184
    iput v4, v2, Lahq;->c:I

    .line 185
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->d(Laix;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lahq;->d:Ljava/lang/String;

    .line 186
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->a(Laix;)Laho;

    move-result-object v6

    invoke-virtual {v6, v2}, Laho;->a(Lahq;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_37

    move v6, v4

    move-object v2, v3

    move-object v3, v5

    .line 223
    :goto_2
    if-nez v3, :cond_d

    .line 224
    :try_start_d
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)V

    .line 225
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Lri;

    move-result-object v4

    invoke-virtual {v4}, Lri;->a()I

    move-result v4

    invoke-interface {v0, v3, v4}, Laiz;->a(Ljava/lang/String;I)V

    .line 228
    :cond_6
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x26

    invoke-static {v0, v3, v4}, Laix;->a(Laix;II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 330
    :try_start_e
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    .line 331
    if-eqz v2, :cond_7

    .line 332
    :try_start_f
    invoke-virtual {v2}, Layt;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13

    .line 334
    :cond_7
    :try_start_10
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    :try_start_11
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    move-result-object v0

    if-eqz v0, :cond_8

    .line 335
    :try_start_12
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_16

    :try_start_13
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18

    move-result-object v0

    :try_start_14
    invoke-virtual {v0}, Lri;->a()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_19

    .line 337
    :cond_8
    :try_start_15
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_17

    :try_start_16
    invoke-static {v0}, Laix;->a(Laix;)Laho;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1a

    move-result-object v0

    :try_start_17
    invoke-virtual {v0}, Laho;->a()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 189
    :cond_9
    :try_start_18
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Laho;

    move-result-object v3

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laho;->a(Ljava/lang/String;)Lahq;

    move-result-object v5

    .line 190
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 191
    iget v4, v5, Lahq;->c:I

    .line 192
    iget v0, v5, Lahq;->d:I

    .line 193
    new-instance v3, Layt;

    const-string v5, "rw"

    const/16 v7, 0xa

    invoke-direct {v3, v6, v5, v7}, Layt;-><init>(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6

    .line 194
    int-to-long v5, v0

    :try_start_19
    invoke-virtual {v3, v5, v6}, Layt;->seek(J)V

    .line 195
    iget-object v2, p0, Laiy;->a:Laix;

    const-string v5, "=========prepare download==============="

    invoke-static {v2, v5}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Laiy;->a:Laix;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Laiy;->a:Laix;

    invoke-static {v2}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v2

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v4}, Laja;->a(Ljava/lang/String;II)V

    .line 198
    iget-object v2, p0, Laiy;->a:Laix;

    invoke-static {v2}, Laix;->a(Laix;)Laiz;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 199
    iget-object v2, p0, Laiy;->a:Laix;

    invoke-static {v2}, Laix;->a(Laix;)Laiz;

    move-result-object v2

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0, v4}, Laiz;->a(Ljava/lang/String;II)V

    .line 202
    :cond_a
    iget-object v2, p0, Laiy;->a:Laix;

    invoke-static {v2}, Laix;->a(Laix;)Lri;

    move-result-object v2

    invoke-virtual {v2, v0}, Lri;->a(I)Lorg/apache/http/HttpResponse;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_19} :catch_3e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_38

    move-result-object v2

    move v6, v4

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    goto/16 :goto_2

    .line 204
    :cond_b
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 205
    new-instance v3, Layt;

    const-string v4, "rw"

    const/16 v7, 0xa

    invoke-direct {v3, v6, v4, v7}, Layt;-><init>(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6

    .line 206
    :try_start_1b
    iget v2, v5, Lahq;->c:I

    .line 207
    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Layt;->setLength(J)V

    .line 208
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Layt;->seek(J)V

    .line 209
    const/4 v4, 0x0

    .line 210
    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->a(Laix;)Laho;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v5, v5, Lahq;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Laho;->a(ILjava/lang/String;)V

    .line 211
    iget-object v5, p0, Laiy;->a:Laix;

    const-string v6, "=========prepare download==============="

    invoke-static {v5, v6}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 212
    iget-object v5, p0, Laiy;->a:Laix;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Laiy;->a:Laix;

    invoke-static {v7}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v5

    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v2}, Laja;->a(Ljava/lang/String;II)V

    .line 214
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Laiz;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 215
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Laiz;

    move-result-object v5

    iget-object v6, p0, Laiy;->a:Laix;

    invoke-static {v6}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4, v2}, Laiz;->a(Ljava/lang/String;II)V

    .line 218
    :cond_c
    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Lri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lri;->a(I)Lorg/apache/http/HttpResponse;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_39

    move-result-object v4

    move v6, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_2

    .line 233
    :cond_d
    :try_start_1c
    iget-object v4, p0, Laiy;->a:Laix;

    const-string v5, "=========start download==============="

    invoke-static {v4, v5}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Laiy;->a:Laix;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentBytes:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " totalBytes:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Laho;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v7, p0, Laiy;->a:Laix;

    invoke-static {v7}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Laho;->b(ILjava/lang/String;)V

    .line 236
    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v4

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v6}, Laja;->a(Ljava/lang/String;II)V

    .line 237
    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Laiz;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 238
    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->a(Laix;)Laiz;

    move-result-object v4

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v6}, Laiz;->b(Ljava/lang/String;II)V

    .line 241
    :cond_e
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 244
    const/16 v3, 0x400

    new-array v7, v3, [B

    .line 246
    const-wide/16 v3, 0x0

    move v5, v0

    .line 248
    :cond_f
    :goto_4
    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    .line 249
    iget-object v9, p0, Laiy;->a:Laix;

    invoke-static {v9}, Laix;->b(Laix;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_10

    iget-object v9, p0, Laiy;->a:Laix;

    invoke-static {v9}, Laix;->b(Laix;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_14

    .line 268
    :cond_10
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->b(Laix;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_16

    .line 269
    iget-object v0, p0, Laiy;->a:Laix;

    const-string v3, "=========pause download==============="

    invoke-static {v0, v3}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Laiy;->a:Laix;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laho;

    move-result-object v0

    const/4 v3, 0x1

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Laho;->b(ILjava/lang/String;)V

    .line 272
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Laja;->a(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5, v6}, Laiz;->d(Ljava/lang/String;II)V

    .line 276
    :cond_11
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Laix;->a(Laix;I)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    .line 330
    :goto_5
    :try_start_1d
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    .line 331
    if-eqz v2, :cond_12

    .line 332
    :try_start_1e
    invoke-virtual {v2}, Layt;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    .line 334
    :cond_12
    :try_start_1f
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    :try_start_20
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c

    move-result-object v0

    if-eqz v0, :cond_13

    .line 335
    :try_start_21
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d

    :try_start_22
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_f

    move-result-object v0

    :try_start_23
    invoke-virtual {v0}, Lri;->a()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_10

    .line 337
    :cond_13
    :try_start_24
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e

    :try_start_25
    invoke-static {v0}, Laix;->a(Laix;)Laho;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11

    move-result-object v0

    :try_start_26
    invoke-virtual {v0}, Laho;->a()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1

    goto/16 :goto_0

    .line 338
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 252
    :cond_14
    const/4 v9, 0x0

    :try_start_27
    invoke-virtual {v2, v7, v9, v8}, Layt;->write([BII)V

    .line 253
    add-int/2addr v0, v8

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_f

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 257
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Laho;

    move-result-object v5

    iget-object v8, p0, Laiy;->a:Laix;

    invoke-static {v8}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Laho;->a(ILjava/lang/String;)V

    .line 259
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v5

    iget-object v8, p0, Laiy;->a:Laix;

    invoke-static {v8}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v6}, Laja;->a(Ljava/lang/String;II)V

    .line 260
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v5

    iget-object v8, p0, Laiy;->a:Laix;

    invoke-static {v8}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Laja;->c(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Laiz;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 262
    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->a(Laix;)Laiz;

    move-result-object v5

    iget-object v8, p0, Laiy;->a:Laix;

    invoke-static {v8}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v0, v6}, Laiz;->c(Ljava/lang/String;II)V

    .line 264
    :cond_15
    iget-object v5, p0, Laiy;->a:Laix;

    iget-object v8, p0, Laiy;->a:Laix;

    invoke-static {v8}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v5, v8, v6, v0}, Laix;->a(Laix;III)V

    move v5, v0

    goto/16 :goto_4

    .line 277
    :cond_16
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->b(Laix;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1b

    .line 278
    iget-object v0, p0, Laiy;->a:Laix;

    const-string v3, "=========cancel download==============="

    invoke-static {v0, v3}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Laiy;->a:Laix;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laho;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Laho;->a(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Laja;->a(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 283
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5, v6}, Laiz;->e(Ljava/lang/String;II)V

    .line 285
    :cond_17
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Laix;->a(Laix;I)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_27 .. :try_end_27} :catch_2
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_4
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6

    goto/16 :goto_5

    .line 302
    :catch_2
    move-exception v0

    .line 304
    :goto_6
    :try_start_28
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Laho;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Laho;->b(ILjava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 306
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)V

    .line 307
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 308
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    invoke-interface {v0, v3, v4}, Laiz;->a(Ljava/lang/String;I)V

    .line 310
    :cond_18
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x26

    invoke-static {v0, v3, v4}, Laix;->a(Laix;II)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 330
    :try_start_29
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 331
    if-eqz v2, :cond_19

    .line 332
    invoke-virtual {v2}, Layt;->close()V

    .line 334
    :cond_19
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Lri;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 335
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Lri;

    move-result-object v0

    invoke-virtual {v0}, Lri;->a()V

    .line 337
    :cond_1a
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laho;

    move-result-object v0

    invoke-virtual {v0}, Laho;->a()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_3

    goto/16 :goto_0

    .line 338
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 287
    :cond_1b
    :try_start_2a
    iget-object v0, p0, Laiy;->a:Laix;

    const-string v3, "=========finish download==============="

    invoke-static {v0, v3}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Laiy;->a:Laix;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalBytes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Laix;->a(Laix;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-virtual {v0}, Laix;->c()V

    .line 291
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laho;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Laho;->a(ILjava/lang/String;)V

    .line 292
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laho;

    move-result-object v0

    const/4 v3, 0x2

    iget-object v4, p0, Laiy;->a:Laix;

    invoke-static {v4}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Laho;->b(ILjava/lang/String;)V

    .line 293
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Laja;->a(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 295
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v6, v6}, Laiz;->f(Ljava/lang/String;II)V

    .line 297
    :cond_1c
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Laix;->b(Laix;I)V

    .line 298
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Laix;->b(Laix;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6

    goto/16 :goto_5

    .line 311
    :catch_4
    move-exception v0

    .line 312
    :goto_7
    :try_start_2b
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Laho;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Laho;->b(ILjava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 314
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)V

    .line 315
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 316
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-interface {v0, v3, v4}, Laiz;->a(Ljava/lang/String;I)V

    .line 318
    :cond_1d
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x2a

    invoke-static {v0, v3, v4}, Laix;->a(Laix;II)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 330
    :try_start_2c
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2e

    .line 331
    if-eqz v2, :cond_1e

    .line 332
    :try_start_2d
    invoke-virtual {v2}, Layt;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2f

    .line 334
    :cond_1e
    :try_start_2e
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_30

    :try_start_2f
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_31

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 335
    :try_start_30
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_32

    :try_start_31
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_34

    move-result-object v0

    :try_start_32
    invoke-virtual {v0}, Lri;->a()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_35

    .line 337
    :cond_1f
    :try_start_33
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_33

    :try_start_34
    invoke-static {v0}, Laix;->a(Laix;)Laho;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_36

    move-result-object v0

    :try_start_35
    invoke-virtual {v0}, Laho;->a()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_5

    goto/16 :goto_0

    .line 338
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 319
    :catch_6
    move-exception v0

    .line 321
    :goto_8
    :try_start_36
    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->a(Laix;)Laho;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Laiy;->a:Laix;

    invoke-static {v5}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Laho;->b(ILjava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)V

    .line 324
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 325
    iget-object v0, p0, Laiy;->a:Laix;

    invoke-static {v0}, Laix;->a(Laix;)Laiz;

    move-result-object v0

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-interface {v0, v3, v4}, Laiz;->a(Ljava/lang/String;I)V

    .line 327
    :cond_20
    iget-object v0, p0, Laiy;->a:Laix;

    iget-object v3, p0, Laiy;->a:Laix;

    invoke-static {v3}, Laix;->b(Laix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x2a

    invoke-static {v0, v3, v4}, Laix;->a(Laix;II)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 330
    :try_start_37
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_25

    .line 331
    if-eqz v2, :cond_21

    .line 332
    :try_start_38
    invoke-virtual {v2}, Layt;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_26

    .line 334
    :cond_21
    :try_start_39
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_27

    :try_start_3a
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_28

    move-result-object v0

    if-eqz v0, :cond_22

    .line 335
    :try_start_3b
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_29

    :try_start_3c
    invoke-static {v0}, Laix;->a(Laix;)Lri;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_2b

    move-result-object v0

    :try_start_3d
    invoke-virtual {v0}, Lri;->a()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_2c

    .line 337
    :cond_22
    :try_start_3e
    iget-object v0, p0, Laiy;->a:Laix;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_2a

    :try_start_3f
    invoke-static {v0}, Laix;->a(Laix;)Laho;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_2d

    move-result-object v0

    :try_start_40
    invoke-virtual {v0}, Laho;->a()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_7

    goto/16 :goto_0

    .line 338
    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    :goto_9
    throw v0

    :catchall_0
    move-exception v0

    .line 330
    :goto_a
    :try_start_41
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 331
    if-eqz v2, :cond_23

    .line 332
    invoke-virtual {v2}, Layt;->close()V

    .line 334
    :cond_23
    iget-object v1, p0, Laiy;->a:Laix;

    invoke-static {v1}, Laix;->a(Laix;)Lri;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 335
    iget-object v1, p0, Laiy;->a:Laix;

    invoke-static {v1}, Laix;->a(Laix;)Lri;

    move-result-object v1

    invoke-virtual {v1}, Lri;->a()V

    .line 337
    :cond_24
    iget-object v1, p0, Laiy;->a:Laix;

    invoke-static {v1}, Laix;->a(Laix;)Laho;

    move-result-object v1

    invoke-virtual {v1}, Laho;->a()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_8

    goto :goto_9

    .line 338
    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_3

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

    :catch_2a
    move-exception v0

    goto/16 :goto_3

    :catch_2b
    move-exception v0

    goto/16 :goto_3

    :catch_2c
    move-exception v0

    goto/16 :goto_3

    :catch_2d
    move-exception v0

    goto/16 :goto_3

    :catch_2e
    move-exception v0

    goto/16 :goto_3

    :catch_2f
    move-exception v0

    goto/16 :goto_3

    :catch_30
    move-exception v0

    goto/16 :goto_3

    :catch_31
    move-exception v0

    goto/16 :goto_3

    :catch_32
    move-exception v0

    goto/16 :goto_3

    :catch_33
    move-exception v0

    goto/16 :goto_3

    :catch_34
    move-exception v0

    goto/16 :goto_3

    :catch_35
    move-exception v0

    goto/16 :goto_3

    :catch_36
    move-exception v0

    goto/16 :goto_3

    .line 329
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a

    .line 319
    :catch_37
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8

    :catch_38
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8

    :catch_39
    move-exception v0

    move-object v2, v3

    goto/16 :goto_8

    .line 311
    :catch_3a
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7

    :catch_3b
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7

    :catch_3c
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7

    .line 302
    :catch_3d
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6

    :catch_3e
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6

    :catch_3f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6

    :cond_25
    move v4, v0

    goto/16 :goto_1
.end method
