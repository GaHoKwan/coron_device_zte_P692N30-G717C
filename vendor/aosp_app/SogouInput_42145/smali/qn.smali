.class public Lqn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final a:Ljava/util/HashMap;

.field private a:Lqt;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lqn;->a:I

    .line 74
    iput v0, p0, Lqn;->b:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lqn;->a:Ljava/util/HashMap;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqn;->a:Z

    .line 84
    new-instance v0, Lqr;

    invoke-direct {v0}, Lqr;-><init>()V

    iput-object v0, p0, Lqn;->a:Lqt;

    .line 85
    return-void
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lqn;->a(Ljava/io/DataInputStream;Z)V

    .line 378
    return-void
.end method

.method private a(Ljava/io/DataInputStream;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v3, p0, Lqn;->a:Lqt;

    .line 349
    iget-object v4, p0, Lqn;->a:Ljava/util/HashMap;

    .line 350
    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 352
    invoke-virtual {v3}, Lqt;->a()V

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    move v2, v1

    .line 358
    :goto_0
    if-ge v2, v5, :cond_2

    .line 360
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 364
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    .line 365
    :goto_1
    if-ge v0, v7, :cond_1

    .line 366
    invoke-static {p1}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Ljava/io/DataInputStream;)Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v9

    .line 367
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget v10, p0, Lqn;->a:I

    iget v11, p0, Lqn;->b:I

    invoke-static {v10, v11, v9, v6}, Lqq;->a(IILcom/sohu/inputmethod/gesture/Gesture;Ljava/lang/String;)Lqq;

    move-result-object v9

    invoke-virtual {v3, v9}, Lqt;->a(Lqq;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 374
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/sohu/inputmethod/gesture/Gesture;)Ljava/util/ArrayList;
    .locals 3
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lqn;->a:I

    iget v1, p0, Lqn;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lqq;->a(IILcom/sohu/inputmethod/gesture/Gesture;Ljava/lang/String;)Lqq;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lqn;->a:Lqt;

    iget v2, p0, Lqn;->a:I

    iget-object v0, v0, Lqq;->a:[F

    invoke-virtual {v1, v2, v0}, Lqt;->a(I[F)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 273
    .line 278
    :try_start_0
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_2

    .line 279
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 291
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 292
    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_1
    if-eqz p2, :cond_0

    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 304
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 306
    :cond_1
    return-void

    .line 281
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    const v0, 0x8000

    invoke-direct {v2, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    :try_start_3
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v2

    move-object v2, v0

    goto :goto_0

    .line 294
    :pswitch_0
    :try_start_4
    invoke-direct {p0, v2}, Lqn;->a(Ljava/io/DataInputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 303
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz p2, :cond_3

    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 304
    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 303
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/io/OutputStream;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 220
    const/4 v1, 0x0

    .line 228
    :try_start_0
    iget-object v3, p0, Lqn;->a:Ljava/util/HashMap;

    .line 230
    new-instance v2, Ljava/io/DataOutputStream;

    instance-of v0, p1, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 235
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 243
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v3, v4

    .line 247
    :goto_1
    if-ge v3, v6, :cond_0

    .line 248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 230
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    const v5, 0x8000

    invoke-direct {v0, p1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    goto :goto_0

    .line 252
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqn;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    if-eqz p2, :cond_3

    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 263
    :cond_3
    return-void

    .line 261
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz p2, :cond_4

    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 147
    if-nez v0, :cond_2

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lqn;->a:Lqt;

    iget v1, p0, Lqn;->a:I

    iget v2, p0, Lqn;->b:I

    invoke-static {v1, v2, p2, p1}, Lqq;->a(IILcom/sohu/inputmethod/gesture/Gesture;Ljava/lang/String;)Lqq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqt;->a(Lqq;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqn;->a:Z

    goto :goto_0
.end method

.method public a([Ljava/io/InputStream;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 309
    .line 316
    :try_start_0
    iget-object v2, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v1

    .line 317
    :goto_0
    :try_start_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 320
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_0

    .line 321
    new-instance v2, Ljava/io/DataInputStream;

    aget-object v4, p1, v0

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 329
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 330
    packed-switch v3, :pswitch_data_0

    .line 317
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    goto :goto_0

    .line 323
    :cond_0
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    aget-object v4, p1, v0

    const v5, 0x8000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 324
    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    .line 332
    :pswitch_0
    const/4 v3, 0x0

    :try_start_5
    invoke-direct {p0, v2, v3}, Lqn;->a(Ljava/io/DataInputStream;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 342
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz p2, :cond_1

    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 343
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 342
    :cond_2
    throw v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 343
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 345
    :cond_5
    return-void

    .line 342
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lqn;->a:Z

    return v0
.end method

.method public b(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 166
    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lqn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    iget-object v0, p0, Lqn;->a:Lqt;

    invoke-virtual {p2}, Lcom/sohu/inputmethod/gesture/Gesture;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lqt;->a(J)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqn;->a:Z

    goto :goto_0
.end method
