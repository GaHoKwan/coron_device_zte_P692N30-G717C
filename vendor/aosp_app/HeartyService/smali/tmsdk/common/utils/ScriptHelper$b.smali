.class final Ltmsdk/common/utils/ScriptHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/utils/ScriptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field data:[B

.field size:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method c(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 353
    new-array v1, v3, [B

    .line 354
    .local v1, size:[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 355
    new-instance v2, Ljava/io/IOException;

    const-string v3, "respond data is invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    invoke-static {v1}, Ltmsdkobf/jr;->p([B)I

    move-result v2

    iput v2, p0, Ltmsdk/common/utils/ScriptHelper$b;->size:I

    .line 359
    iget v2, p0, Ltmsdk/common/utils/ScriptHelper$b;->size:I

    new-array v0, v2, [B

    .line 360
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_1

    .line 361
    new-instance v2, Ljava/io/IOException;

    const-string v3, "respond data is invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_1
    iput-object v0, p0, Ltmsdk/common/utils/ScriptHelper$b;->data:[B

    .line 365
    return-void
.end method
