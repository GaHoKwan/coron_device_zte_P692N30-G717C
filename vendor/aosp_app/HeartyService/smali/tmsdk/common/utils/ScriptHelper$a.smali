.class final Ltmsdk/common/utils/ScriptHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/utils/ScriptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field data:[B

.field size:I

.field time:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method writeToStream(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 333
    iget-object v1, p0, Ltmsdk/common/utils/ScriptHelper$a;->data:[B

    array-length v1, v1

    iput v1, p0, Ltmsdk/common/utils/ScriptHelper$a;->size:I

    .line 334
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 335
    .local v0, header:[B
    iget v1, p0, Ltmsdk/common/utils/ScriptHelper$a;->type:I

    invoke-static {v1}, Ltmsdkobf/jr;->bo(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget v1, p0, Ltmsdk/common/utils/ScriptHelper$a;->time:I

    invoke-static {v1}, Ltmsdkobf/jr;->bo(I)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget v1, p0, Ltmsdk/common/utils/ScriptHelper$a;->size:I

    invoke-static {v1}, Ltmsdkobf/jr;->bo(I)[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 339
    iget-object v1, p0, Ltmsdk/common/utils/ScriptHelper$a;->data:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 340
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 342
    return-void
.end method
