.class public Ltm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud;


# static fields
.field public static a:Landroid/os/Bundle;

.field private static a:Lsg;

.field public static a:Ltm;

.field public static a:Z

.field private static b:Landroid/os/Bundle;


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/app/Activity;

.field public a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private a:Landroid/media/AudioManager;

.field private a:Landroid/media/AudioRecord;

.field public a:Landroid/os/Handler;

.field private a:Landroid/view/View;

.field private a:Landroid/view/animation/Animation;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

.field private a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

.field private a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

.field private a:Ljava/io/FileOutputStream;

.field private a:Ljava/lang/String;

.field private a:[B

.field private b:I

.field private b:J

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Landroid/widget/RelativeLayout;

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Ltm;->a:Z

    .line 124
    sput-object v1, Ltm;->a:Lsg;

    .line 168
    sput-object v1, Ltm;->b:Landroid/os/Bundle;

    .line 169
    sput-object v1, Ltm;->a:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v7, p0, Ltm;->b:Z

    .line 94
    iput-boolean v7, p0, Ltm;->c:Z

    .line 128
    const-string v0, ""

    iput-object v0, p0, Ltm;->b:Ljava/lang/String;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Ltm;->b:I

    .line 158
    iput v1, p0, Ltm;->c:I

    .line 159
    iput v1, p0, Ltm;->d:I

    .line 225
    new-instance v0, Lto;

    invoke-direct {v0, p0}, Lto;-><init>(Ltm;)V

    iput-object v0, p0, Ltm;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 289
    new-instance v0, Ltp;

    invoke-direct {v0, p0}, Ltp;-><init>(Ltm;)V

    iput-object v0, p0, Ltm;->a:Landroid/os/Handler;

    .line 178
    iput-object p1, p0, Ltm;->a:Landroid/app/Activity;

    .line 179
    iput-boolean v7, p0, Ltm;->b:Z

    .line 180
    iput p3, p0, Ltm;->a:I

    .line 181
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltm;->a:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    .line 184
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Ltm;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 186
    if-eq v0, v4, :cond_0

    .line 223
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Ltm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;->getInterface(Landroid/content/Context;)Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    move-result-object v0

    iput-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 193
    :cond_1
    iput-object p2, p0, Ltm;->a:Landroid/view/View;

    .line 194
    invoke-direct {p0}, Ltm;->k()V

    .line 195
    invoke-direct {p0}, Ltm;->n()V

    .line 196
    sget-object v0, Ltm;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Ltm;->b:Landroid/os/Bundle;

    const-string v1, "upload_serial_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltm;->b:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 199
    iget-object v1, p0, Ltm;->b:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 200
    const/4 v0, 0x5

    iput v0, p0, Ltm;->b:I

    .line 210
    :cond_2
    :goto_1
    invoke-direct {p0}, Ltm;->c()Z

    .line 211
    sput-object p0, Ltm;->a:Ltm;

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltm;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    const v1, 0x7f0b0363

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Ltm;->a:Landroid/app/Activity;

    const v3, 0x7f0b036e

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Ltm;->a:Landroid/app/Activity;

    const v6, 0x7f0b0333

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    const v1, 0x7f0b033d

    new-instance v2, Ltn;

    invoke-direct {v2, p0}, Ltn;-><init>(Ltm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    const v1, 0x7f0b033e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltm;->a:Landroid/app/AlertDialog;

    goto :goto_0

    .line 201
    :cond_3
    sget-object v0, Ltm;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 202
    sget-object v0, Ltm;->a:Landroid/os/Bundle;

    const-string v1, "upload_serial_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltm;->b:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 204
    iget-object v1, p0, Ltm;->b:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 205
    sget-object v0, Ltm;->a:Landroid/os/Bundle;

    const-string v1, "transferredSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 206
    sget-object v2, Ltm;->a:Landroid/os/Bundle;

    const-string v3, "allSize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 207
    invoke-virtual {p0, v0, v1, v2, v3}, Ltm;->a(JJ)V

    .line 208
    iput v5, p0, Ltm;->b:I

    goto :goto_1
.end method

.method static synthetic a(Ltm;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Ltm;->a:I

    return v0
.end method

.method static synthetic a(Ltm;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Ltm;->b:I

    return p1
.end method

.method static synthetic a(Ltm;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Ltm;->b:J

    return-wide v0
.end method

.method static synthetic a(Ltm;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Ltm;->a:J

    return-wide p1
.end method

.method static synthetic a(Ltm;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Ltm;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ltm;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Ltm;)Landroid/media/AudioRecord;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic a(Ltm;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ltm;->a:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ltm;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter

    .prologue
    .line 52
    sput-object p0, Ltm;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic a(Ltm;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Ltm;)Lcom/sohu/inputmethod/multimedia/TimerRecView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    return-object v0
.end method

.method static synthetic a(Ltm;)Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    return-object v0
.end method

.method static synthetic a(Ltm;)Ljava/io/FileOutputStream;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic a(Ltm;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ltm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ltm;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lsg;)Lsg;
    .locals 0
    .parameter

    .prologue
    .line 52
    sput-object p0, Ltm;->a:Lsg;

    return-object p0
.end method

.method static synthetic a(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ltm;->m()V

    return-void
.end method

.method static synthetic a(Ltm;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Ltm;->b:Z

    return v0
.end method

.method static synthetic a(Ltm;)[B
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->a:[B

    return-object v0
.end method

.method static synthetic b(Ltm;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Ltm;->b:I

    return v0
.end method

.method static synthetic b(Ltm;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Ltm;->a:J

    return-wide v0
.end method

.method static synthetic b(Ltm;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Ltm;->b:J

    return-wide p1
.end method

.method static synthetic b(Ltm;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ltm;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ltm;->l()V

    return-void
.end method

.method static synthetic b(Ltm;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ltm;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Ltm;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Ltm;->e:I

    return v0
.end method

.method static synthetic c(Ltm;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ltm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 851
    sput-object p0, Ltm;->b:Landroid/os/Bundle;

    .line 852
    const/4 v0, 0x0

    sput-object v0, Ltm;->a:Landroid/os/Bundle;

    .line 853
    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 591
    iget v0, p0, Ltm;->b:I

    packed-switch v0, :pswitch_data_0

    .line 644
    :goto_0
    :pswitch_0
    return v2

    .line 595
    :pswitch_1
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 596
    iget-object v0, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a()V

    .line 599
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->a()V

    .line 600
    iget-object v0, p0, Ltm;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Ltm;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0375

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 608
    :pswitch_2
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Ltm;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Ltm;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0376

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 617
    :pswitch_3
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Ltm;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 622
    iget-object v0, p0, Ltm;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 630
    :pswitch_4
    iget-object v0, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0359

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 632
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Ltm;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Ltm;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setVisibility(I)V

    goto/16 :goto_0

    .line 638
    :pswitch_5
    iget-object v0, p0, Ltm;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Ltm;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic d(Ltm;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Ltm;->f:I

    return v0
.end method

.method public static d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 856
    const/4 v0, 0x0

    sput-object v0, Ltm;->b:Landroid/os/Bundle;

    .line 857
    sput-object p0, Ltm;->a:Landroid/os/Bundle;

    .line 858
    return-void
.end method

.method public static e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    sput-object v1, Ltm;->a:Landroid/os/Bundle;

    .line 545
    sget-object v0, Ltm;->a:Lsg;

    if-eqz v0, :cond_0

    .line 546
    sget-object v0, Ltm;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 547
    :cond_0
    sput-object v1, Ltm;->a:Lsg;

    .line 548
    return-void
.end method

.method public static j()V
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x0

    sput-object v0, Ltm;->b:Landroid/os/Bundle;

    .line 862
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/TimerRecView;

    iput-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    .line 433
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltm;->a:Landroid/widget/RelativeLayout;

    .line 435
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    .line 436
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    iput-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    .line 437
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setService(Ltm;)V

    .line 439
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    .line 441
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltm;->a:Landroid/widget/TextView;

    .line 443
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltm;->a:Landroid/widget/LinearLayout;

    .line 445
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltm;->b:Landroid/widget/TextView;

    .line 447
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltm;->c:Landroid/widget/RelativeLayout;

    .line 449
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltm;->b:Landroid/widget/ImageView;

    .line 450
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f07010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltm;->a:Landroid/widget/Button;

    .line 451
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltm;->b:Landroid/widget/Button;

    .line 452
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltm;->b:Landroid/widget/LinearLayout;

    .line 454
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    .line 455
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 456
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltm;->c:Z

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 527
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltm;->c:Z

    .line 529
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->b()V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 538
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltm;->c:Z

    .line 540
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->c()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Ltm;->a:Landroid/widget/Button;

    new-instance v1, Ltq;

    invoke-direct {v1, p0}, Ltq;-><init>(Ltm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Ltm;->b:Landroid/widget/Button;

    new-instance v1, Ltr;

    invoke-direct {v1, p0}, Ltr;-><init>(Ltm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Ltm;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 574
    sget-object v0, Ltm;->a:Lsg;

    if-eqz v0, :cond_0

    .line 575
    sget-object v0, Ltm;->a:Lsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 576
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bf:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bf:I

    .line 579
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Ltm;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltm;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Ltm;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    :cond_0
    iget v0, p0, Ltm;->b:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    :pswitch_0
    iget-object v0, p0, Ltm;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 263
    sput-object v1, Ltm;->a:Ltm;

    .line 264
    iget-object v0, p0, Ltm;->a:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Ltm;->a:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 266
    iput-object v1, p0, Ltm;->a:Ljava/io/FileOutputStream;

    .line 268
    :cond_1
    iput-object v1, p0, Ltm;->a:Landroid/view/animation/Animation;

    .line 269
    iput-object v1, p0, Ltm;->a:Lcom/sohu/inputmethod/voice/encode/SpeexIMEInterface;

    .line 270
    iput-object v1, p0, Ltm;->a:Landroid/app/AlertDialog;

    .line 271
    iput-object v1, p0, Ltm;->a:Landroid/app/Activity;

    .line 272
    iput-object v1, p0, Ltm;->a:Landroid/content/Context;

    .line 273
    iput-object v1, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    .line 274
    iput-object v1, p0, Ltm;->a:Landroid/view/View;

    .line 276
    iput-object v1, p0, Ltm;->a:Landroid/widget/Button;

    .line 277
    iput-object v1, p0, Ltm;->b:Landroid/widget/Button;

    .line 278
    iput-object v1, p0, Ltm;->b:Landroid/widget/LinearLayout;

    .line 280
    iput-object v1, p0, Ltm;->a:Landroid/widget/TextView;

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltm;->b:Z

    .line 282
    invoke-virtual {p0}, Ltm;->g()V

    .line 283
    return-void

    .line 246
    :pswitch_1
    invoke-virtual {p0, v2}, Ltm;->a(I)V

    .line 247
    invoke-direct {p0}, Ltm;->c()Z

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-virtual {p0, v2}, Ltm;->a(I)V

    .line 251
    invoke-direct {p0}, Ltm;->c()Z

    goto :goto_0

    .line 254
    :pswitch_3
    invoke-direct {p0}, Ltm;->o()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput p1, p0, Ltm;->b:I

    .line 587
    invoke-direct {p0}, Ltm;->c()Z

    .line 588
    return-void
.end method

.method public a(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x64

    const-wide/16 v0, 0x0

    .line 807
    const/4 v2, 0x3

    iput v2, p0, Ltm;->b:I

    .line 808
    invoke-direct {p0}, Ltm;->c()Z

    .line 810
    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    :goto_0
    const-wide/16 v2, 0x5f

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 811
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    .line 812
    add-int/lit8 v0, v0, -0x1

    .line 813
    :cond_0
    iget-object v1, p0, Ltm;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    return-void

    .line 810
    :cond_1
    mul-long v0, p1, v4

    div-long/2addr v0, p3

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 825
    const/4 v0, 0x4

    iput v0, p0, Ltm;->b:I

    .line 826
    sput-object v1, Ltm;->b:Landroid/os/Bundle;

    .line 827
    sput-object v1, Ltm;->a:Landroid/os/Bundle;

    .line 828
    invoke-direct {p0}, Ltm;->c()Z

    .line 829
    return-void
.end method

.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    sput-object p1, Ltm;->a:Lsg;

    .line 287
    return-void
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 648
    .line 650
    const/16 v0, 0x3e80

    :try_start_0
    iput v0, p0, Ltm;->e:I

    .line 651
    iget v0, p0, Ltm;->e:I

    iget v1, p0, Ltm;->d:I

    iget v2, p0, Ltm;->c:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Ltm;->f:I

    .line 653
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Ltm;->e:I

    iget v3, p0, Ltm;->d:I

    iget v4, p0, Ltm;->c:I

    iget v5, p0, Ltm;->f:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ltm;->a:Landroid/media/AudioRecord;

    .line 655
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 656
    const/16 v0, 0x1f40

    iput v0, p0, Ltm;->e:I

    .line 657
    iget v0, p0, Ltm;->e:I

    iget v1, p0, Ltm;->d:I

    iget v2, p0, Ltm;->c:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Ltm;->f:I

    .line 658
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Ltm;->e:I

    iget v3, p0, Ltm;->d:I

    iget v4, p0, Ltm;->c:I

    iget v5, p0, Ltm;->f:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Ltm;->a:Landroid/media/AudioRecord;

    .line 661
    :cond_0
    iget v0, p0, Ltm;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Ltm;->a:[B

    .line 662
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v6, :cond_1

    move v0, v6

    .line 667
    :goto_0
    return v0

    :cond_1
    move v0, v7

    .line 662
    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 665
    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 420
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltm;->a:Landroid/app/Activity;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 422
    const-string v2, "upload_serial_no"

    iget-object v3, p0, Ltm;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v2, "action"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 425
    iget-object v1, p0, Ltm;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    iget-object v1, p0, Ltm;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 427
    invoke-virtual {p0}, Ltm;->g()V

    .line 428
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 832
    const-string v0, "uploadResult"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 833
    sparse-switch v0, :sswitch_data_0

    .line 841
    iget-object v0, p0, Ltm;->a:Landroid/content/Context;

    const v1, 0x7f0b0371

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Ltm;->b:I

    .line 845
    sput-object p1, Ltm;->b:Landroid/os/Bundle;

    .line 846
    const/4 v0, 0x0

    sput-object v0, Ltm;->a:Landroid/os/Bundle;

    .line 847
    invoke-direct {p0}, Ltm;->c()Z

    .line 848
    return-void

    .line 835
    :sswitch_0
    iget-object v0, p0, Ltm;->a:Landroid/content/Context;

    const v1, 0x7f0b0370

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 838
    :sswitch_1
    iget-object v0, p0, Ltm;->a:Landroid/content/Context;

    const v1, 0x7f0b036f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 833
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x26 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 671
    const/4 v0, 0x1

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltm;->a:Ljava/lang/String;

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltm;->c:Ljava/lang/String;

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltm;->d:Ljava/lang/String;

    .line 675
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ltm;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 678
    invoke-static {v1}, Layw;->a(Ljava/io/File;)Z

    .line 683
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ltm;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    invoke-static {v1}, Layw;->a(Ljava/io/File;)Z

    .line 692
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 693
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Ltm;->a:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_2
    :goto_2
    return v0

    .line 680
    :cond_3
    invoke-static {v1}, Layw;->b(Ljava/io/File;)Z

    goto :goto_0

    .line 688
    :cond_4
    invoke-static {v1}, Layw;->b(Ljava/io/File;)Z

    goto :goto_1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 696
    const/4 v0, 0x0

    .line 697
    iget-object v1, p0, Ltm;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 698
    iget-object v1, p0, Ltm;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 699
    const/4 v1, -0x1

    iput v1, p0, Ltm;->b:I

    .line 700
    iget-object v1, p0, Ltm;->a:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 701
    iget-object v1, p0, Ltm;->a:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_2

    .line 703
    :try_start_1
    iget-object v1, p0, Ltm;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 704
    iget-object v1, p0, Ltm;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 705
    :catch_1
    move-exception v1

    .line 706
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public c()V
    .locals 10

    .prologue
    const-wide v8, 0x3fda666666666666L

    const-wide v6, 0x3fc896e7bf53896eL

    .line 459
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()I

    move-result v0

    int-to-double v2, v0

    .line 461
    iget-object v0, p0, Ltm;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 462
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_1

    .line 463
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object v0, v1

    .line 465
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fb79435e50d7943L

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object v0, v1

    .line 466
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fbe50d79435e50dL

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 467
    iget-object v0, p0, Ltm;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v0, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 470
    const-wide v4, 0x3fe25b9efd4e25baL

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 471
    iget-object v1, p0, Ltm;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-object v0, p0, Ltm;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 474
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    .line 475
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object v0, v1

    .line 477
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fc58ed2308158edL

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 478
    iget-object v0, p0, Ltm;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-object v0, p0, Ltm;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 481
    const-wide v4, 0x3fd08158ed230816L

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 482
    iget-object v1, p0, Ltm;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    iget-object v0, p0, Ltm;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 485
    iget-object v1, p0, Ltm;->a:Landroid/app/Activity;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 486
    mul-double v4, v2, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 487
    iget-object v1, p0, Ltm;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    iget-object v0, p0, Ltm;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 490
    iget-object v1, p0, Ltm;->a:Landroid/app/Activity;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 491
    mul-double v4, v2, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 492
    iget-object v1, p0, Ltm;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0, v2, v3}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->setViewPositions(D)V

    .line 501
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 509
    :cond_0
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 510
    iget-boolean v0, p0, Ltm;->c:Z

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Ltm;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 512
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 519
    :goto_0
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->d()V

    .line 521
    :cond_1
    return-void

    .line 516
    :cond_2
    iget-object v0, p0, Ltm;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 769
    iget-object v0, p0, Ltm;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cu:I

    .line 770
    iget-object v0, p0, Ltm;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    .line 772
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Ltm;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 774
    if-eq v0, v3, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {p0}, Ltm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    const/4 v0, 0x2

    iput v0, p0, Ltm;->b:I

    .line 780
    invoke-direct {p0}, Ltm;->c()Z

    .line 781
    invoke-virtual {p0}, Ltm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->setVisibility(I)V

    .line 783
    new-instance v0, Ltt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltt;-><init>(Ltm;Ltn;)V

    invoke-virtual {v0}, Ltt;->start()V

    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Ltm;->a:Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/ProgressVoiceView;->a()V

    .line 787
    iget-object v0, p0, Ltm;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 792
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Ltm;->a:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 794
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ltm;->a:Landroid/media/AudioManager;

    .line 795
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x6

    iput v0, p0, Ltm;->b:I

    .line 799
    invoke-direct {p0}, Ltm;->c()Z

    .line 800
    invoke-virtual {p0}, Ltm;->g()V

    .line 801
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 817
    invoke-direct {p0}, Ltm;->l()V

    .line 818
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 819
    const/4 v0, 0x3

    iput v0, p0, Ltm;->b:I

    .line 820
    invoke-direct {p0}, Ltm;->c()Z

    .line 821
    iget-object v0, p0, Ltm;->b:Landroid/widget/TextView;

    const-string v1, "5%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    return-void
.end method
