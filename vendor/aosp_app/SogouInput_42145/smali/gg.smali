.class public Lgg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/os/Handler;

.field private a:Landroid/telephony/TelephonyManager;

.field private a:Lgh;

.field private a:Lgj;

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(IIIIIIIIILjava/lang/String;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    move/from16 v0, p1

    iput v0, p0, Lgg;->a:I

    .line 103
    move/from16 v0, p2

    iput v0, p0, Lgg;->b:I

    .line 104
    move/from16 v0, p3

    iput v0, p0, Lgg;->c:I

    .line 105
    move/from16 v0, p4

    iput v0, p0, Lgg;->d:I

    .line 106
    move/from16 v0, p5

    iput v0, p0, Lgg;->e:I

    .line 107
    move/from16 v0, p6

    iput v0, p0, Lgg;->f:I

    .line 108
    move/from16 v0, p7

    iput v0, p0, Lgg;->g:I

    .line 109
    move/from16 v0, p8

    iput v0, p0, Lgg;->h:I

    .line 110
    move/from16 v0, p9

    iput v0, p0, Lgg;->i:I

    .line 111
    move-object/from16 v0, p10

    iput-object v0, p0, Lgg;->a:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p11

    iput-object v0, p0, Lgg;->a:Landroid/telephony/TelephonyManager;

    .line 114
    move-object/from16 v0, p12

    iput-object v0, p0, Lgg;->a:Landroid/net/ConnectivityManager;

    .line 115
    new-instance v1, Lgh;

    iget v7, p0, Lgg;->e:I

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lgh;-><init>(Lgg;IIIIIIIIILjava/lang/String;Landroid/telephony/TelephonyManager;Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lgg;->a:Lgh;

    .line 118
    return-void
.end method


# virtual methods
.method public a()Lgj;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lgg;->a:Lgj;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgg;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->b()V

    .line 140
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lgg;->a:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method public a(Lgj;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lgg;->a:Lgj;

    .line 133
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lgg;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()V

    .line 144
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lgg;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lgg;->a:Lgh;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lgg;->a:Lgh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 182
    :cond_0
    iput-object v2, p0, Lgg;->a:Lgh;

    .line 183
    iput-object v2, p0, Lgg;->a:Landroid/os/Handler;

    .line 184
    iput-object v2, p0, Lgg;->a:Landroid/telephony/TelephonyManager;

    .line 185
    iput-object v2, p0, Lgg;->a:Lgj;

    .line 186
    return-void
.end method
