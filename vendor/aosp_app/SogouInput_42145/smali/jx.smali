.class public final Ljx;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private final a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

.field private a:Ljy;

.field private final a:Lkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Ljx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljx;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Ljx;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    iput-object p1, p0, Ljx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    .line 63
    new-instance v0, Lkc;

    new-instance v1, Lki;

    invoke-virtual {p1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a()Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lki;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lkc;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lq;)V

    iput-object v0, p0, Ljx;->a:Lkc;

    .line 65
    iget-object v0, p0, Ljx;->a:Lkc;

    invoke-virtual {v0}, Lkc;->start()V

    .line 66
    sget-object v0, Ljy;->b:Ljy;

    iput-object v0, p0, Ljx;->a:Ljy;

    .line 69
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    invoke-virtual {v0}, Lkl;->c()V

    .line 71
    :cond_0
    invoke-direct {p0}, Ljx;->c()V

    .line 72
    return-void
.end method

.method public static a(Ln;)Lah;
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-static {p0}, Lal;->a(Ln;)Lah;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ln;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 155
    invoke-static {p0}, Ljx;->a(Ln;)Lah;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lah;->a()Lai;

    move-result-object v0

    .line 157
    sget-object v1, Lai;->a:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v0, "CONTACT_TYPE"

    .line 180
    :goto_0
    return-object v0

    .line 159
    :cond_0
    sget-object v1, Lai;->b:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v0, "EMAIL_TYPE"

    goto :goto_0

    .line 161
    :cond_1
    sget-object v1, Lai;->h:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    const-string v0, "TEL_TYPE"

    goto :goto_0

    .line 163
    :cond_2
    sget-object v1, Lai;->i:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const-string v0, "SMS_TYPE"

    goto :goto_0

    .line 165
    :cond_3
    sget-object v1, Lai;->d:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    const-string v0, "URL_TYPE"

    goto :goto_0

    .line 167
    :cond_4
    sget-object v1, Lai;->k:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    const-string v0, "WIFI_TYPE"

    goto :goto_0

    .line 169
    :cond_5
    sget-object v1, Lai;->j:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 170
    const-string v0, "CALENDER_TYPE"

    goto :goto_0

    .line 171
    :cond_6
    sget-object v1, Lai;->l:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 172
    const-string v0, "THEME_TYPE"

    goto :goto_0

    .line 173
    :cond_7
    sget-object v1, Lai;->p:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 174
    const-string v0, "PRODUCT_TYPE"

    goto :goto_0

    .line 175
    :cond_8
    sget-object v1, Lai;->c:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 176
    const-string v0, "PRODUCT_TYPE"

    goto :goto_0

    .line 177
    :cond_9
    sget-object v1, Lai;->m:Lai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 178
    const-string v0, "WEIXIN"

    goto :goto_0

    .line 180
    :cond_a
    const-string v0, "TEXT_TYPE"

    goto :goto_0
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    sget-boolean v0, Ljx;->a:Z

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Ljx;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Ljx;->a:Ljy;

    sget-object v1, Ljy;->b:Ljy;

    if-ne v0, v1, :cond_1

    .line 145
    sget-object v0, Ljy;->a:Ljy;

    iput-object v0, p0, Ljx;->a:Ljy;

    .line 146
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    iget-object v1, p0, Ljx;->a:Lkc;

    invoke-virtual {v1}, Lkc;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v0, v1, v2}, Lkl;->a(Landroid/os/Handler;I)V

    .line 148
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, p0, v1}, Lkl;->b(Landroid/os/Handler;I)V

    .line 150
    :cond_0
    iget-object v0, p0, Ljx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->b()V

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Ljy;->c:Ljy;

    iput-object v0, p0, Ljx;->a:Ljy;

    .line 128
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    invoke-virtual {v0}, Lkl;->d()V

    .line 130
    :cond_0
    iget-object v0, p0, Ljx;->a:Lkc;

    invoke-virtual {v0}, Lkc;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f070009

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    :try_start_0
    iget-object v0, p0, Ljx;->a:Lkc;

    invoke-virtual {v0}, Lkc;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Ljx;->removeMessages(I)V

    .line 140
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Ljx;->removeMessages(I)V

    .line 141
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Ljx;->a:Lkc;

    invoke-virtual {v0}, Lkc;->interrupt()V

    .line 195
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    iget-object v0, p0, Ljx;->a:Ljy;

    sget-object v1, Ljy;->a:Ljy;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, p0, v1}, Lkl;->b(Landroid/os/Handler;I)V

    goto :goto_0

    .line 83
    :pswitch_2
    sget-boolean v0, Ljx;->a:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "Got restart preview message"

    invoke-static {v0}, Ljx;->a(Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-direct {p0}, Ljx;->c()V

    goto :goto_0

    .line 89
    :pswitch_3
    sget-boolean v0, Ljx;->a:Z

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "Got decode succeeded message"

    invoke-static {v0}, Ljx;->a(Ljava/lang/String;)V

    .line 92
    :cond_2
    sget-object v0, Ljy;->b:Ljy;

    iput-object v0, p0, Ljx;->a:Ljy;

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ln;

    .line 94
    new-instance v1, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;

    invoke-direct {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;-><init>()V

    .line 95
    invoke-virtual {v0}, Ln;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ln;->a()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a([B)V

    .line 97
    invoke-virtual {v0}, Ln;->a()[Lp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a([Lp;)V

    .line 98
    invoke-virtual {v0}, Ln;->a()La;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(La;)V

    .line 99
    invoke-virtual {v0}, Ln;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(J)V

    .line 100
    invoke-static {v0}, Ljx;->a(Ln;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultAgent;->a(Ljava/lang/String;)V

    .line 102
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    const-string v3, "SCAN_RESULT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Ljx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    const-class v3, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v1, "TYPE"

    invoke-static {v0}, Ljx;->a(Ln;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Ljx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 112
    :pswitch_4
    sget-object v0, Ljy;->a:Ljy;

    iput-object v0, p0, Ljx;->a:Ljy;

    .line 113
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lkl;->a()Lkl;

    move-result-object v0

    iget-object v1, p0, Ljx;->a:Lkc;

    invoke-virtual {v1}, Lkc;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v0, v1, v2}, Lkl;->a(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 117
    :pswitch_5
    sget-boolean v0, Ljx;->a:Z

    if-eqz v0, :cond_3

    .line 118
    const-string v0, "Got return scan result message"

    invoke-static {v0}, Ljx;->a(Ljava/lang/String;)V

    .line 120
    :cond_3
    iget-object v1, p0, Ljx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Ljx;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->finish()V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f070005
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
