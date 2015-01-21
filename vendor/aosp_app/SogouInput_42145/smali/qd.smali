.class public final Lqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 8
    .parameter

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 337
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 338
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 341
    :try_start_0
    invoke-static {v4}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Ljava/io/DataInputStream;)Lcom/sohu/inputmethod/gesture/Gesture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    invoke-static {v4}, Lqp;->a(Ljava/io/Closeable;)V

    .line 346
    :goto_0
    invoke-static {v3}, Lqp;->a(Ljava/io/Closeable;)V

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/gesture/Gesture;->a(Lcom/sohu/inputmethod/gesture/Gesture;J)J

    .line 353
    :cond_0
    return-object v0

    .line 342
    :catch_0
    move-exception v5

    .line 343
    :try_start_1
    const-string v6, "Gestures"

    const-string v7, "Error reading Gesture from parcel:"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-static {v4}, Lqp;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4}, Lqp;->a(Ljava/io/Closeable;)V

    .line 346
    invoke-static {v3}, Lqp;->a(Ljava/io/Closeable;)V

    .line 345
    throw v0
.end method

.method public a(I)[Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 1
    .parameter

    .prologue
    .line 357
    new-array v0, p1, [Lcom/sohu/inputmethod/gesture/Gesture;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lqd;->a(Landroid/os/Parcel;)Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lqd;->a(I)[Lcom/sohu/inputmethod/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method
