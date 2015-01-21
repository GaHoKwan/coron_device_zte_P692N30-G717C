.class public Lgn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

.field private a:Lgh;

.field private a:Lgq;

.field private a:Lgr;

.field private a:Z

.field private b:I

.field private b:Landroid/os/Handler;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(ILgh;)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->b:Z

    .line 40
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 41
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->c:Z

    .line 42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->d:Z

    .line 43
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->e:Z

    .line 49
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->f:Z

    .line 53
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lgn;->a:Lgh;

    .line 54
    invoke-virtual/range {p2 .. p2}, Lgh;->a()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lgn;->a:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getInterface()Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 58
    if-nez p1, :cond_1

    .line 59
    const/16 v2, 0x1f40

    move-object/from16 v0, p0

    iput v2, v0, Lgn;->a:I

    .line 63
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lgn;->a:I

    int-to-double v2, v2

    const-wide v4, 0x3f947ae147ae147bL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lgn;->b:I

    .line 64
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->a:Z

    .line 66
    new-instance v2, Lgq;

    const/16 v3, 0x10

    move-object/from16 v0, p0

    iget v4, v0, Lgn;->a:I

    const/16 v5, 0x1e

    const/16 v6, 0x32

    move-object/from16 v0, p0

    iget v7, v0, Lgn;->a:I

    int-to-double v7, v7

    const-wide v9, 0x3f9eb851eb851eb8L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lgn;->a:I

    int-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/16 v9, 0xd

    const-wide v10, 0x3f647ae147ae147bL

    const-wide/high16 v12, 0x4024

    const-wide/16 v14, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x1e

    invoke-direct/range {v2 .. v17}, Lgq;-><init>(IIIIIIIDDDII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lgn;->a:Lgq;

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->open(IIII)I

    .line 85
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lgn;->c:I

    .line 86
    const/16 v2, 0x1f40

    move-object/from16 v0, p0

    iget v3, v0, Lgn;->a:I

    if-ne v2, v3, :cond_0

    .line 87
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lgn;->c:I

    .line 88
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->b:Z

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    move-object/from16 v0, p0

    iget v3, v0, Lgn;->c:I

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->dspOpen(I)I

    .line 92
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lgn;->f:Z

    .line 93
    return-void

    .line 61
    :cond_1
    const/16 v2, 0x3e80

    move-object/from16 v0, p0

    iput v2, v0, Lgn;->a:I

    goto/16 :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iput-object v1, p0, Lgn;->a:Lgq;

    .line 271
    iput-object v1, p0, Lgn;->a:Lgr;

    .line 272
    iget-object v0, p0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->dspClose()V

    .line 274
    iget-object v0, p0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->destroy()V

    .line 275
    iput-object v1, p0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 276
    iput-object v1, p0, Lgn;->a:Lgh;

    .line 277
    iput-object v1, p0, Lgn;->a:Landroid/os/Handler;

    .line 278
    iput-object v1, p0, Lgn;->b:Landroid/os/Handler;

    .line 279
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 205
    iget-boolean v0, p0, Lgn;->f:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    iget-boolean v0, p0, Lgn;->a:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [S

    check-cast v0, [S

    .line 212
    invoke-direct {p0, v0}, Lgn;->a([S)[B

    move-result-object v0

    .line 213
    if-eqz v0, :cond_5

    iget-object v1, p0, Lgn;->a:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lgn;->a:Lgh;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lgn;->a:Lgh;

    invoke-virtual {v1}, Lgh;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v1

    iget-wide v1, v1, Lgt;->d:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 216
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lgt;->d:J

    .line 218
    :cond_2
    iget-object v1, p0, Lgn;->a:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 220
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 221
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 222
    iget v0, v1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lgn;->a:Z

    if-eqz v0, :cond_3

    .line 223
    iget v0, v1, Landroid/os/Message;->arg1:I

    neg-int v0, v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 225
    :cond_3
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 235
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lgn;->a:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lgn;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lgn;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 227
    :cond_5
    iget-boolean v0, p0, Lgn;->c:Z

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_6

    .line 228
    invoke-direct {p0}, Lgn;->b()V

    goto :goto_1

    .line 229
    :cond_6
    iget-boolean v0, p0, Lgn;->d:Z

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {p0, v2}, Lgn;->a(I)V

    goto :goto_1

    .line 231
    :cond_7
    iget-boolean v0, p0, Lgn;->e:Z

    if-eqz v0, :cond_4

    .line 232
    invoke-virtual {p0, v2}, Lgn;->a(I)V

    goto :goto_1

    .line 241
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 243
    iput-boolean v5, p0, Lgn;->f:Z

    .line 244
    invoke-direct {p0}, Lgn;->a()V

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lgn;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lgn;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a([S)[B
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lgn;->c:Z

    .line 111
    iput-boolean v1, p0, Lgn;->d:Z

    .line 112
    iput-boolean v1, p0, Lgn;->e:Z

    .line 113
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lgn;->a([S)[S

    move-result-object v1

    .line 117
    if-nez v1, :cond_2

    .line 118
    iput-boolean v2, p0, Lgn;->c:Z

    goto :goto_0

    .line 137
    :cond_2
    array-length v0, v1

    .line 139
    invoke-direct {p0, v1, v0}, Lgn;->a([SI)[B

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    .line 141
    iput-boolean v2, p0, Lgn;->e:Z

    goto :goto_0
.end method

.method private a([SI)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 189
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 195
    :cond_1
    iget-object v0, p0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    iget-boolean v1, p0, Lgn;->b:Z

    invoke-virtual {v0, v1, p2}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getDestSize(ZI)I

    move-result v0

    .line 197
    new-array v0, v0, [B

    .line 199
    iget-object v1, p0, Lgn;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    iget-boolean v2, p0, Lgn;->b:Z

    invoke-virtual {v1, p1, v0, v2}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->encodeToRaw([S[BZ)I

    goto :goto_0
.end method

.method private a([S)[S
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    array-length v1, p1

    .line 152
    iget-object v2, p0, Lgn;->a:Lgq;

    invoke-virtual {v2, p1, v1}, Lgq;->a([SI)Lgr;

    move-result-object v1

    iput-object v1, p0, Lgn;->a:Lgr;

    .line 153
    iget-object v1, p0, Lgn;->a:Lgr;

    iget-boolean v1, v1, Lgr;->a:Z

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lgn;->a:Lgr;

    iget-boolean v1, v1, Lgr;->c:Z

    iput-boolean v1, p0, Lgn;->a:Z

    .line 155
    iget-boolean v1, p0, Lgn;->a:Z

    if-eqz v1, :cond_2

    .line 156
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lgt;->b:I

    .line 157
    iget-object v1, p0, Lgn;->a:Lgh;

    invoke-virtual {v1}, Lgh;->b()V

    .line 159
    :cond_2
    iget-object v1, p0, Lgn;->a:Lgr;

    iget-boolean v1, v1, Lgr;->b:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lgn;->a:Lgq;

    invoke-virtual {v1}, Lgq;->a()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_3

    .line 160
    invoke-direct {p0}, Lgn;->b()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lgn;->a:Lgq;

    iget v1, p0, Lgn;->b:I

    invoke-virtual {v0, v1}, Lgq;->a(I)[S

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lgn;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgn;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgn;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lgn;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 296
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 297
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lgn;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgn;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgn;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lgn;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 286
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 287
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 288
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lgn;->a:Landroid/os/Handler;

    .line 255
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lgn;->f:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgn;->f:Z

    .line 97
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 98
    new-instance v0, Lgo;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgo;-><init>(Lgn;Landroid/os/Looper;)V

    iput-object v0, p0, Lgn;->b:Landroid/os/Handler;

    .line 105
    iget-object v0, p0, Lgn;->a:Lgh;

    iget-object v1, p0, Lgn;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lgh;->a(Landroid/os/Handler;)V

    .line 106
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 107
    return-void
.end method
