.class public Lgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private a:Landroid/media/AudioRecord;

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/os/Handler;

.field private a:Landroid/telephony/TelephonyManager;

.field private a:Lgh;

.field private a:Lgm;

.field private a:Z

.field private a:[S

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(ILandroid/telephony/TelephonyManager;ZLgh;Landroid/net/ConnectivityManager;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3e80

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v1, 0x10

    iput v1, p0, Lgk;->a:I

    .line 28
    iput v6, p0, Lgk;->b:I

    .line 29
    iput v0, p0, Lgk;->c:I

    .line 44
    iput-boolean v4, p0, Lgk;->a:Z

    .line 55
    iput p1, p0, Lgk;->f:I

    .line 56
    iput-object p2, p0, Lgk;->a:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object p5, p0, Lgk;->a:Landroid/net/ConnectivityManager;

    .line 59
    new-instance v1, Lgm;

    iget-object v2, p0, Lgk;->a:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lgk;->a:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v2, v3}, Lgm;-><init>(Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lgk;->a:Lgm;

    .line 60
    iput-object p4, p0, Lgk;->a:Lgh;

    .line 61
    invoke-virtual {p4}, Lgh;->a()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lgk;->a:Landroid/os/Handler;

    .line 64
    if-nez p3, :cond_0

    .line 66
    const/16 v1, 0xc

    iput v1, p0, Lgk;->a:I

    .line 71
    :cond_0
    iget v1, p0, Lgk;->f:I

    if-ne v1, v5, :cond_2

    .line 80
    :goto_0
    iget-object v1, p0, Lgk;->a:Lgm;

    invoke-virtual {v1}, Lgm;->b()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lgk;->a:Lgh;

    invoke-virtual {v2, v1}, Lgh;->a(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lgk;->a:Lgh;

    iget-object v3, p0, Lgk;->a:Lgm;

    invoke-virtual {v3, v1}, Lgm;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lgh;->b(I)V

    .line 86
    invoke-static {v0}, Lgs;->a(I)I

    move-result v0

    iput v0, p0, Lgk;->b:I

    .line 87
    invoke-direct {p0}, Lgk;->a()Z

    move-result v0

    iput-boolean v0, p0, Lgk;->a:Z

    .line 88
    iget v0, p0, Lgk;->b:I

    if-ne v0, v6, :cond_4

    .line 89
    iget-object v0, p0, Lgk;->a:Lgh;

    invoke-virtual {v0, v5}, Lgh;->c(I)V

    .line 93
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    iget v1, p0, Lgk;->f:I

    if-ne v1, v0, :cond_3

    .line 74
    const/4 v0, 0x3

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lgk;->a:Lgm;

    invoke-virtual {v0}, Lgm;->a()I

    move-result v0

    goto :goto_0

    .line 90
    :cond_4
    iget v0, p0, Lgk;->b:I

    const/16 v1, 0x1f40

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p0, Lgk;->a:Lgh;

    invoke-virtual {v0, v4}, Lgh;->c(I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 262
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 263
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 264
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    invoke-direct {p0}, Lgk;->b()V

    .line 267
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 9

    .prologue
    const/16 v8, 0x3e80

    const/16 v3, 0x1000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0}, Lgk;->a()V

    .line 129
    iget v0, p0, Lgk;->b:I

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v7

    .line 136
    :cond_1
    :try_start_0
    iget v0, p0, Lgk;->b:I

    iget v1, p0, Lgk;->a:I

    iget v2, p0, Lgk;->c:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lgk;->d:I

    .line 139
    iget v0, p0, Lgk;->d:I

    if-gtz v0, :cond_2

    .line 140
    iget v0, p0, Lgk;->b:I

    if-ne v0, v8, :cond_0

    .line 141
    const/16 v0, 0x1f40

    iput v0, p0, Lgk;->b:I

    .line 143
    iget v0, p0, Lgk;->b:I

    iget v1, p0, Lgk;->a:I

    iget v2, p0, Lgk;->c:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lgk;->d:I

    .line 145
    iget v0, p0, Lgk;->d:I

    if-lez v0, :cond_0

    .line 154
    :cond_2
    iget v0, p0, Lgk;->d:I

    if-ge v0, v3, :cond_3

    .line 155
    const/16 v0, 0x1000

    iput v0, p0, Lgk;->d:I

    .line 159
    :cond_3
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lgk;->b:I

    iget v3, p0, Lgk;->a:I

    iget v4, p0, Lgk;->c:I

    iget v5, p0, Lgk;->d:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    .line 163
    iget-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 164
    iget v0, p0, Lgk;->b:I

    if-ne v0, v8, :cond_0

    .line 165
    const/16 v0, 0x1f40

    iput v0, p0, Lgk;->b:I

    .line 166
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lgk;->b:I

    iget v3, p0, Lgk;->a:I

    iget v4, p0, Lgk;->c:I

    iget v5, p0, Lgk;->d:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    .line 170
    iget-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 179
    :cond_4
    iget v0, p0, Lgk;->d:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lgk;->a:[S
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :goto_1
    move v7, v0

    .line 184
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v7

    .line 182
    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lgk;->a:[S

    .line 250
    iput-object v0, p0, Lgk;->a:Lgh;

    .line 251
    iput-object v0, p0, Lgk;->a:Landroid/os/Handler;

    .line 252
    iput-object v0, p0, Lgk;->a:Landroid/telephony/TelephonyManager;

    .line 253
    iput-object v0, p0, Lgk;->a:Lgm;

    .line 254
    invoke-virtual {p0}, Lgk;->a()V

    .line 255
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgk;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    .line 121
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lgk;->a:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/16 v6, -0x64

    const/4 v1, 0x0

    .line 191
    iget-boolean v0, p0, Lgk;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgk;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0, v6}, Lgk;->a(I)V

    .line 193
    invoke-virtual {p0}, Lgk;->a()V

    .line 246
    :goto_0
    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgk;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    invoke-direct {p0}, Lgk;->c()V

    .line 207
    invoke-direct {p0}, Lgk;->d()V

    move v0, v1

    move v2, v1

    .line 208
    :goto_2
    iget-object v3, p0, Lgk;->a:Lgh;

    invoke-virtual {v3}, Lgh;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    iget-object v3, p0, Lgk;->a:Landroid/media/AudioRecord;

    iget-object v4, p0, Lgk;->a:[S

    iget-object v5, p0, Lgk;->a:[S

    array-length v5, v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    iput v3, p0, Lgk;->e:I

    .line 210
    iget v3, p0, Lgk;->e:I

    if-lez v3, :cond_5

    iget v3, p0, Lgk;->e:I

    iget-object v4, p0, Lgk;->a:[S

    array-length v4, v4

    if-gt v3, v4, :cond_5

    .line 213
    iget v3, p0, Lgk;->e:I

    new-array v3, v3, [S

    .line 214
    iget-object v4, p0, Lgk;->a:[S

    iget v5, p0, Lgk;->e:I

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 219
    iget-object v4, p0, Lgk;->a:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 221
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 222
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iget v3, p0, Lgk;->e:I

    add-int/2addr v2, v3

    .line 227
    iget v3, p0, Lgk;->b:I

    mul-int/lit8 v3, v3, 0x1e

    if-lt v2, v3, :cond_2

    .line 228
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iput v1, v0, Lgt;->b:I

    .line 229
    iget-object v0, p0, Lgk;->a:Lgh;

    invoke-virtual {v0}, Lgh;->b()V

    .line 230
    iget v0, v4, Landroid/os/Message;->arg1:I

    neg-int v0, v0

    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 231
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 245
    :cond_1
    :goto_3
    invoke-direct {p0}, Lgk;->b()V

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 204
    const/16 v0, -0x65

    invoke-direct {p0, v0}, Lgk;->a(I)V

    goto :goto_1

    .line 234
    :cond_2
    iget-object v3, p0, Lgk;->a:Lgh;

    invoke-virtual {v3}, Lgh;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 235
    iget v0, v4, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_3

    iget v0, v4, Landroid/os/Message;->arg1:I

    neg-int v0, v0

    :goto_4
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 236
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 235
    :cond_3
    iget v0, v4, Landroid/os/Message;->arg1:I

    goto :goto_4

    .line 239
    :cond_4
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 241
    :cond_5
    invoke-direct {p0, v6}, Lgk;->a(I)V

    goto :goto_3
.end method
