.class public Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final b:[B


# instance fields
.field private final a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

.field private c:Z

.field private d:[B

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x800

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    iput-boolean v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->c:Z

    .line 71
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->d:[B

    .line 72
    if-eqz p3, :cond_0

    .line 73
    new-instance v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$c;

    invoke-direct {v0, p2, v1}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$c;-><init>(I[B)V

    iput-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    iget-object v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    invoke-virtual {v1, v3}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->a(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->a:[B

    .line 78
    iput v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    .line 79
    iput v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    .line 80
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$a;

    invoke-direct {v0, p2, v1}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$a;-><init>(I[B)V

    iput-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    goto :goto_0
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->c:Z

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 150
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 151
    iput-boolean v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->c:Z

    .line 152
    iget-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    sget-object v1, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->b:[B

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->a([BIIZ)Z

    move-result v0

    .line 156
    :goto_1
    if-nez v0, :cond_2

    .line 157
    new-instance v0, Landroid/util/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    iget-object v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->d:[B

    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->a([BIIZ)Z

    move-result v0

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    iget v0, v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->b:I

    iput v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    .line 160
    iput v3, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->d:[B

    .line 97
    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    if-lt v0, v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a()V

    .line 119
    :cond_0
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    if-lt v0, v1, :cond_1

    .line 120
    const/4 v0, -0x1

    .line 122
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    iget-object v0, v0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->a:[B

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    if-lt v0, v1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a()V

    .line 130
    :cond_0
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    if-lt v0, v1, :cond_1

    .line 131
    const/4 v0, -0x1

    .line 136
    :goto_0
    return v0

    .line 133
    :cond_1
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a:Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;

    iget-object v1, v1, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64$b;->a:[B

    iget v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    if-lt v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->a()V

    .line 107
    :cond_0
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    if-lt v0, v1, :cond_1

    .line 108
    const-wide/16 v0, 0x0

    .line 112
    :goto_0
    return-wide v0

    .line 110
    :cond_1
    iget v0, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->f:I

    iget v1, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 111
    iget v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/mediatek/protect/emailcommon/utility/ExtendBase64InputStream;->e:I

    goto :goto_0
.end method
