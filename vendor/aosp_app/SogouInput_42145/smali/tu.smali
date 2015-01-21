.class public Ltu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc;
.implements Lud;


# static fields
.field public static a:Landroid/os/Bundle;

.field private static a:Lsg;

.field public static a:Ltu;

.field public static a:Z

.field private static b:Landroid/os/Bundle;


# instance fields
.field private a:F

.field private a:I

.field private a:J

.field private a:Landroid/app/Activity;

.field public a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/graphics/Bitmap;

.field public a:Landroid/os/Handler;

.field private a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/PopupWindow;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

.field public a:Ljava/lang/String;

.field private b:F

.field private b:I

.field private b:Landroid/view/View;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/PopupWindow;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Z

.field private final c:I

.field private c:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private final d:I

.field private d:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private e:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private f:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private g:Landroid/widget/RelativeLayout;

.field private h:I

.field private h:Landroid/widget/RelativeLayout;

.field private i:I

.field private i:Landroid/widget/RelativeLayout;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    sput-object v0, Ltu;->a:Lsg;

    .line 112
    sput-object v0, Ltu;->a:Ltu;

    .line 147
    sput-object v0, Ltu;->b:Landroid/os/Bundle;

    .line 148
    sput-object v0, Ltu;->a:Landroid/os/Bundle;

    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Ltu;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v2, p0, Ltu;->b:Z

    .line 133
    iput v2, p0, Ltu;->b:I

    .line 141
    const-string v0, ""

    iput-object v0, p0, Ltu;->a:Ljava/lang/String;

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltu;->a:J

    .line 150
    const/high16 v0, 0x43a0

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltu;->c:I

    .line 151
    const/high16 v0, 0x43b9

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ltu;->d:I

    .line 153
    const v0, 0x3f6e147b

    iput v0, p0, Ltu;->a:F

    .line 154
    const v0, 0x3f0ccccd

    iput v0, p0, Ltu;->b:F

    .line 163
    iput v2, p0, Ltu;->e:I

    .line 164
    iput v2, p0, Ltu;->f:I

    .line 166
    iput v2, p0, Ltu;->g:I

    .line 167
    iput v2, p0, Ltu;->h:I

    .line 168
    iput v2, p0, Ltu;->i:I

    .line 169
    iput v2, p0, Ltu;->j:I

    .line 177
    new-instance v0, Ltv;

    invoke-direct {v0, p0}, Ltv;-><init>(Ltu;)V

    iput-object v0, p0, Ltu;->a:Landroid/os/Handler;

    .line 661
    new-instance v0, Ltx;

    invoke-direct {v0, p0}, Ltx;-><init>(Ltu;)V

    iput-object v0, p0, Ltu;->a:Landroid/view/View$OnTouchListener;

    .line 832
    new-instance v0, Lub;

    invoke-direct {v0, p0}, Lub;-><init>(Ltu;)V

    iput-object v0, p0, Ltu;->a:Landroid/view/View$OnClickListener;

    .line 370
    iput-object p1, p0, Ltu;->a:Landroid/app/Activity;

    .line 371
    iput-boolean v2, p0, Ltu;->b:Z

    .line 372
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltu;->a:Landroid/content/Context;

    .line 373
    iput-object p2, p0, Ltu;->a:Landroid/view/View;

    .line 374
    iput p3, p0, Ltu;->a:I

    .line 375
    invoke-direct {p0}, Ltu;->m()V

    .line 376
    invoke-direct {p0}, Ltu;->n()V

    .line 377
    sput-object p0, Ltu;->a:Ltu;

    .line 378
    sget-object v0, Ltu;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 379
    sget-object v0, Ltu;->b:Landroid/os/Bundle;

    const-string v1, "upload_serial_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->a:Ljava/lang/String;

    .line 380
    sget-object v0, Ltu;->b:Landroid/os/Bundle;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Layr;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltu;->a:Landroid/graphics/Bitmap;

    .line 382
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    iget-object v1, p0, Ltu;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 383
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 384
    iget-object v1, p0, Ltu;->a:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 385
    const/4 v0, 0x3

    iput v0, p0, Ltu;->b:I

    .line 398
    :cond_0
    :goto_0
    invoke-direct {p0}, Ltu;->a()Z

    .line 399
    invoke-direct {p0}, Ltu;->a()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltu;->a:Landroid/app/AlertDialog;

    .line 401
    return-void

    .line 386
    :cond_1
    sget-object v0, Ltu;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Ltu;->a:Landroid/os/Bundle;

    const-string v1, "upload_serial_no"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->a:Ljava/lang/String;

    .line 388
    sget-object v0, Ltu;->a:Landroid/os/Bundle;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Layr;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ltu;->a:Landroid/graphics/Bitmap;

    .line 390
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    iget-object v1, p0, Ltu;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 392
    iget-object v1, p0, Ltu;->a:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 393
    sget-object v0, Ltu;->a:Landroid/os/Bundle;

    const-string v1, "transferredSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 394
    sget-object v2, Ltu;->a:Landroid/os/Bundle;

    const-string v3, "allSize"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 395
    invoke-virtual {p0, v0, v1, v2, v3}, Ltu;->a(JJ)V

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Ltu;->b:I

    goto :goto_0
.end method

.method static synthetic a(Ltu;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Ltu;->a:I

    return v0
.end method

.method static synthetic a(Ltu;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Ltu;->b:I

    return p1
.end method

.method static synthetic a(Ltu;)J
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-wide v0, p0, Ltu;->a:J

    return-wide v0
.end method

.method static synthetic a(Ltu;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Ltu;->a:J

    return-wide p1
.end method

.method static synthetic a(Ltu;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    .line 424
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    const v1, 0x7f0b0363

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Ltu;->a:Landroid/app/Activity;

    const v3, 0x7f0b036e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ltu;->a:Landroid/app/Activity;

    const v7, 0x7f0b0335

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    const v1, 0x7f0b033d

    new-instance v2, Ltw;

    invoke-direct {v2, p0}, Ltw;-><init>(Ltu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    const v1, 0x7f0b033e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltu;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ltu;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ltu;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Ltu;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Ltu;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ltu;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter

    .prologue
    .line 54
    sput-object p0, Ltu;->b:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic a(Ltu;)Lcom/sohu/inputmethod/multimedia/ProgressImageView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    return-object v0
.end method

.method static synthetic a(Ltu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ltu;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a()Lsg;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ltu;->a:Lsg;

    return-object v0
.end method

.method static synthetic a(Lsg;)Lsg;
    .locals 0
    .parameter

    .prologue
    .line 54
    sput-object p0, Ltu;->a:Lsg;

    return-object p0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 900
    packed-switch p1, :pswitch_data_0

    .line 912
    :goto_0
    iput v2, p0, Ltu;->b:I

    .line 913
    invoke-direct {p0}, Ltu;->a()Z

    .line 914
    return-void

    .line 902
    :pswitch_0
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b035c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 905
    :pswitch_1
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b035b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 908
    :pswitch_2
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b035d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x10

    const-wide/16 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 291
    iget-object v0, p0, Ltu;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    const v2, 0x7f0b0354

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ltu;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Ltu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    const v2, 0x7f0b0355

    new-array v3, v8, [Ljava/lang/Object;

    div-long v4, p1, v9

    invoke-virtual {p0, v4, v5}, Ltu;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    div-long v0, p1, v9

    invoke-direct {p0, v0, v1}, Ltu;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Ltu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Ltu;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    :cond_0
    iget-object v0, p0, Ltu;->e:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    const v2, 0x7f0b0356

    new-array v3, v8, [Ljava/lang/Object;

    div-long v4, p1, v11

    invoke-virtual {p0, v4, v5}, Ltu;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    div-long v0, p1, v11

    invoke-direct {p0, v0, v1}, Ltu;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Ltu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Ltu;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    :cond_1
    iget-object v0, p0, Ltu;->f:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    const v2, 0x7f0b0357

    new-array v3, v8, [Ljava/lang/Object;

    const-wide/16 v4, 0x40

    div-long v4, p1, v4

    invoke-virtual {p0, v4, v5}, Ltu;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const-wide/16 v0, 0x40

    div-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Ltu;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Ltu;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Ltu;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    :cond_2
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 878
    const-string v1, "filesize"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 879
    const-string v1, "rawfilepath"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v1, "filename"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v1, "filetype"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    const-string v1, "upload_serial_no"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Ltu;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 885
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 886
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 887
    return-void
.end method

.method static synthetic a(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ltu;->l()V

    return-void
.end method

.method static synthetic a(Ltu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ltu;->a(I)V

    return-void
.end method

.method static synthetic a(Ltu;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ltu;->a(J)V

    return-void
.end method

.method static synthetic a(Ltu;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Ltu;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 725
    iget v0, p0, Ltu;->b:I

    packed-switch v0, :pswitch_data_0

    .line 765
    :goto_0
    return v2

    .line 727
    :pswitch_0
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a(Z)V

    .line 728
    iget-object v0, p0, Ltu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a(JJ)V

    .line 730
    iget-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Ltu;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Ltu;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 734
    iget-object v0, p0, Ltu;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Ltu;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 738
    :pswitch_1
    iget-object v0, p0, Ltu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    const v1, 0x7f0b034e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 743
    iget-object v0, p0, Ltu;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Ltu;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 748
    :pswitch_2
    iget-object v0, p0, Ltu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    const v1, 0x7f0b034f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 752
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a(JJ)V

    goto :goto_0

    .line 755
    :pswitch_3
    iget-object v0, p0, Ltu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 759
    iget-object v0, p0, Ltu;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Ltu;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0359

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 762
    iget-object v0, p0, Ltu;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(J)Z
    .locals 4
    .parameter

    .prologue
    .line 917
    const-wide/32 v0, 0x100000

    div-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 918
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ltu;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Ltu;->b:Z

    return v0
.end method

.method static synthetic b(Ltu;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Ltu;->b:I

    return v0
.end method

.method static synthetic b(Ltu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Ltu;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ltu;->j()V

    return-void
.end method

.method static synthetic b(Ltu;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ltu;->a()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    sput-object v1, Ltu;->a:Landroid/os/Bundle;

    .line 457
    sget-object v0, Ltu;->a:Lsg;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Ltu;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lsl;->d(Lorg/apache/http/client/HttpClient;Lsg;)V

    .line 459
    :cond_0
    sput-object v1, Ltu;->a:Lsg;

    .line 460
    return-void
.end method

.method public static c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 817
    sput-object p0, Ltu;->b:Landroid/os/Bundle;

    .line 818
    const/4 v0, 0x0

    sput-object v0, Ltu;->a:Landroid/os/Bundle;

    .line 819
    return-void
.end method

.method static synthetic c(Ltu;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ltu;->k()V

    return-void
.end method

.method public static d(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 822
    const/4 v0, 0x0

    sput-object v0, Ltu;->b:Landroid/os/Bundle;

    .line 823
    sput-object p0, Ltu;->a:Landroid/os/Bundle;

    .line 824
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    sput-object v0, Ltu;->b:Landroid/os/Bundle;

    .line 794
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 310
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)I

    move-result v0

    .line 312
    if-ltz v0, :cond_2

    if-gt v0, v2, :cond_2

    .line 313
    if-ne v0, v2, :cond_1

    .line 314
    iget-object v0, p0, Ltu;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Ltu;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    :goto_0
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    iget v1, p0, Ltu;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 327
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    iget v1, p0, Ltu;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 329
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    iget v1, p0, Ltu;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 330
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    iget v1, p0, Ltu;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 332
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltu;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Ltu;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 334
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Ltu;->a:Landroid/widget/PopupWindow;

    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 336
    iget-object v1, p0, Ltu;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()Landroid/view/View;

    move-result-object v0

    iget v2, p0, Ltu;->e:I

    iget v3, p0, Ltu;->f:I

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 339
    :cond_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Ltu;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Ltu;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Ltu;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Ltu;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 345
    :cond_0
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 348
    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 464
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b03fa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->a:Landroid/widget/RelativeLayout;

    .line 538
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltu;->a:Landroid/widget/TextView;

    .line 539
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f07010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltu;->a:Landroid/widget/LinearLayout;

    .line 540
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltu;->b:Landroid/widget/TextView;

    .line 543
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f07010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->c:Landroid/widget/RelativeLayout;

    .line 545
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f070106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltu;->b:Landroid/widget/LinearLayout;

    .line 546
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f070107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ltu;->a:Landroid/widget/ImageView;

    .line 547
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f07010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltu;->b:Landroid/widget/Button;

    .line 548
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f070109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltu;->c:Landroid/widget/Button;

    .line 549
    iget-object v0, p0, Ltu;->c:Landroid/widget/Button;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 551
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    .line 552
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f07010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltu;->a:Landroid/widget/Button;

    .line 553
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    iput-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    .line 554
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->d:Landroid/widget/RelativeLayout;

    .line 557
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltu;->c:Landroid/view/View;

    .line 559
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->e:Landroid/widget/RelativeLayout;

    .line 560
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f07010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltu;->c:Landroid/widget/TextView;

    .line 561
    iget-object v0, p0, Ltu;->c:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Ltu;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->f:Landroid/widget/RelativeLayout;

    .line 564
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltu;->d:Landroid/widget/TextView;

    .line 565
    iget-object v0, p0, Ltu;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 566
    iget-object v0, p0, Ltu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->g:Landroid/widget/RelativeLayout;

    .line 568
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltu;->e:Landroid/widget/TextView;

    .line 569
    iget-object v0, p0, Ltu;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 570
    iget-object v0, p0, Ltu;->e:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltu;->f:Landroid/widget/TextView;

    .line 572
    iget-object v0, p0, Ltu;->f:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Ltu;->f:Landroid/widget/TextView;

    iget-object v1, p0, Ltu;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->h:Landroid/widget/RelativeLayout;

    .line 575
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ltu;->i:Landroid/widget/RelativeLayout;

    .line 576
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    .line 577
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltu;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 579
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 580
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 582
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Ltu;->b:Landroid/view/View;

    .line 583
    iget-object v0, p0, Ltu;->b:Landroid/view/View;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 584
    iget-object v0, p0, Ltu;->b:Landroid/view/View;

    iget-object v1, p0, Ltu;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 585
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Ltu;->b:Landroid/view/View;

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    .line 586
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 588
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 589
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 590
    iget-object v0, p0, Ltu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 592
    invoke-virtual {p0}, Ltu;->a()V

    .line 593
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    new-instance v1, Lty;

    invoke-direct {v1, p0}, Lty;-><init>(Ltu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    iget-object v0, p0, Ltu;->b:Landroid/widget/Button;

    new-instance v1, Ltz;

    invoke-direct {v1, p0}, Ltz;-><init>(Ltu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v0, p0, Ltu;->c:Landroid/widget/Button;

    new-instance v1, Lua;

    invoke-direct {v1, p0}, Lua;-><init>(Ltu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 716
    iget v0, p0, Ltu;->b:I

    if-ne v0, v1, :cond_0

    .line 717
    sget-object v0, Ltu;->a:Lsg;

    if-eqz v0, :cond_0

    .line 718
    sget-object v0, Ltu;->a:Lsg;

    invoke-virtual {v0, v1}, Lsg;->b(Z)V

    .line 719
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bg:I

    .line 722
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Ltu;->b:I

    return v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 922
    const-wide/32 v0, 0x100000

    div-long v0, p1, v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, p1

    const-wide/high16 v3, 0x4130

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    :goto_0
    return-object v0

    .line 924
    :cond_0
    const-wide/16 v0, 0x400

    div-long v0, p1, v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, p1

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 926
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    const v1, 0x7f0b0358

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 351
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 353
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Ltu;->i:I

    .line 354
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Ltu;->j:I

    .line 356
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 357
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 359
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v4, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v4, p0, Ltu;->a:F

    mul-float/2addr v0, v4

    :goto_0
    float-to-int v0, v0

    iput v0, p0, Ltu;->g:I

    .line 360
    iget v0, p0, Ltu;->g:I

    iget v4, p0, Ltu;->c:I

    if-le v0, v4, :cond_1

    iget v0, p0, Ltu;->c:I

    :goto_1
    iput v0, p0, Ltu;->g:I

    .line 361
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v5, :cond_2

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v5, p0, Ltu;->b:F

    mul-float/2addr v0, v5

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ltu;->h:I

    .line 362
    iget v0, p0, Ltu;->h:I

    iget v1, p0, Ltu;->d:I

    if-le v0, v1, :cond_3

    iget v0, p0, Ltu;->d:I

    :goto_3
    iput v0, p0, Ltu;->h:I

    .line 364
    iget v0, p0, Ltu;->g:I

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltu;->e:I

    .line 366
    iget v0, p0, Ltu;->h:I

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ltu;->f:I

    .line 367
    return-void

    .line 359
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v4, p0, Ltu;->a:F

    mul-float/2addr v0, v4

    goto :goto_0

    .line 360
    :cond_1
    iget v0, p0, Ltu;->g:I

    goto :goto_1

    .line 361
    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Ltu;->b:F

    mul-float/2addr v0, v1

    goto :goto_2

    .line 362
    :cond_3
    iget v0, p0, Ltu;->h:I

    goto :goto_3
.end method

.method public a(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 777
    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    :goto_0
    long-to-int v0, v0

    .line 778
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 779
    add-int/lit8 v0, v0, -0x1

    .line 780
    :cond_0
    iget-object v1, p0, Ltu;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a(JJ)V

    .line 782
    return-void

    .line 777
    :cond_1
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 934
    sput-boolean v6, Ltu;->a:Z

    .line 935
    if-nez p1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 939
    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v6

    const-string v0, "_display_name"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    .line 940
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 941
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 942
    const-string v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-static {v0}, Lsm;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->c:Ljava/lang/String;

    .line 945
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->b:Ljava/lang/String;

    move v0, v6

    :goto_1
    move v6, v0

    .line 958
    :goto_2
    if-eqz v1, :cond_1

    .line 959
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 962
    :cond_1
    if-eqz v6, :cond_5

    .line 963
    invoke-direct {p0, v7}, Ltu;->a(I)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 947
    goto :goto_1

    .line 950
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->c:Ljava/lang/String;

    .line 951
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 952
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 953
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ltu;->b:Ljava/lang/String;

    goto :goto_2

    .line 955
    :cond_4
    iget-object v0, p0, Ltu;->c:Ljava/lang/String;

    iput-object v0, p0, Ltu;->b:Ljava/lang/String;

    goto :goto_2

    .line 966
    :cond_5
    iget-object v0, p0, Ltu;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 786
    const/4 v0, 0x2

    iput v0, p0, Ltu;->b:I

    .line 787
    sput-object v1, Ltu;->b:Landroid/os/Bundle;

    .line 788
    sput-object v1, Ltu;->a:Landroid/os/Bundle;

    .line 789
    invoke-direct {p0}, Ltu;->a()Z

    .line 790
    return-void
.end method

.method public a(Lsg;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    sput-object p1, Ltu;->a:Lsg;

    .line 534
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 971
    const/4 v0, 0x0

    sput-boolean v0, Ltu;->a:Z

    .line 972
    iget-object v0, p0, Ltu;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltu;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Ltu;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 440
    :cond_0
    invoke-virtual {p0}, Ltu;->a()V

    .line 441
    iget-object v0, p0, Ltu;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0}, Ltu;->k()V

    .line 443
    invoke-direct {p0}, Ltu;->j()V

    .line 445
    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 798
    const-string v0, "uploadResult"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 799
    sparse-switch v0, :sswitch_data_0

    .line 807
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b0371

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 810
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Ltu;->b:I

    .line 811
    sput-object p1, Ltu;->b:Landroid/os/Bundle;

    .line 812
    const/4 v0, 0x0

    sput-object v0, Ltu;->a:Landroid/os/Bundle;

    .line 813
    invoke-direct {p0}, Ltu;->a()Z

    .line 814
    return-void

    .line 801
    :sswitch_0
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b0370

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 804
    :sswitch_1
    iget-object v0, p0, Ltu;->a:Landroid/content/Context;

    const v1, 0x7f0b036f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 799
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x26 -> :sswitch_1
    .end sparse-switch
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Ltu;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltu;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Ltu;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 476
    :cond_0
    iget v0, p0, Ltu;->b:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    :pswitch_0
    sput-object v1, Ltu;->a:Ltu;

    .line 492
    iget-object v0, p0, Ltu;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 493
    iget-object v0, p0, Ltu;->c:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    iget-object v0, p0, Ltu;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltu;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Ltu;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 497
    iput-object v1, p0, Ltu;->a:Landroid/graphics/Bitmap;

    .line 499
    :cond_1
    iput-object v1, p0, Ltu;->a:Landroid/app/AlertDialog;

    .line 500
    iput-object v1, p0, Ltu;->a:Landroid/app/Activity;

    .line 502
    iput-object v1, p0, Ltu;->a:Landroid/view/View;

    .line 503
    iput-object v1, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    .line 504
    iput-object v1, p0, Ltu;->a:Landroid/graphics/Bitmap;

    .line 505
    iput-object v1, p0, Ltu;->a:Landroid/widget/TextView;

    .line 506
    iput-object v1, p0, Ltu;->a:Landroid/widget/LinearLayout;

    .line 507
    iput-object v1, p0, Ltu;->b:Landroid/widget/LinearLayout;

    .line 510
    iput-object v1, p0, Ltu;->a:Landroid/widget/Button;

    .line 511
    iput-object v1, p0, Ltu;->b:Landroid/widget/Button;

    .line 512
    iput-object v1, p0, Ltu;->c:Landroid/widget/Button;

    .line 514
    iput-object v1, p0, Ltu;->e:Landroid/widget/RelativeLayout;

    .line 515
    iput-object v1, p0, Ltu;->f:Landroid/widget/RelativeLayout;

    .line 516
    iput-object v1, p0, Ltu;->g:Landroid/widget/RelativeLayout;

    .line 517
    iput-object v1, p0, Ltu;->c:Landroid/widget/TextView;

    .line 518
    iput-object v1, p0, Ltu;->d:Landroid/widget/TextView;

    .line 519
    iput-object v1, p0, Ltu;->e:Landroid/widget/TextView;

    .line 520
    iput-object v1, p0, Ltu;->f:Landroid/widget/TextView;

    .line 522
    iput-object v1, p0, Ltu;->a:Landroid/widget/PopupWindow;

    .line 523
    iput-object v1, p0, Ltu;->b:Landroid/view/View;

    .line 524
    iput-object v1, p0, Ltu;->b:Landroid/widget/PopupWindow;

    .line 525
    iput-object v1, p0, Ltu;->c:Landroid/view/View;

    .line 527
    iput-object v1, p0, Ltu;->h:Landroid/widget/RelativeLayout;

    .line 528
    iput-object v1, p0, Ltu;->i:Landroid/widget/RelativeLayout;

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltu;->b:Z

    .line 530
    return-void

    .line 478
    :pswitch_1
    invoke-direct {p0}, Ltu;->k()V

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-direct {p0}, Ltu;->o()V

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()V
    .locals 12

    .prologue
    const-wide v10, 0x3fda666666666666L

    const-wide v8, 0x3fc896e7bf53896eL

    .line 596
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()I

    move-result v0

    int-to-double v2, v0

    .line 598
    iget-object v0, p0, Ltu;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 599
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_4

    .line 600
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    move-object v0, v1

    .line 602
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fbe50d79435e50dL

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 603
    iget-object v0, p0, Ltu;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    iget-object v0, p0, Ltu;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 606
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_3

    .line 607
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    move-object v0, v1

    .line 609
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fc58ed2308158edL

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 610
    iget-object v0, p0, Ltu;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget-object v0, p0, Ltu;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 613
    const-wide v4, 0x3fd08158ed230816L

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 614
    iget-object v1, p0, Ltu;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 617
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_2

    .line 618
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object v0, v1

    .line 620
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fb2dcf7ea712dcfL

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 621
    iget-object v0, p0, Ltu;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v0, p0, Ltu;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 624
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_1

    .line 625
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    move-object v0, v1

    .line 627
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fb840ac7691840bL

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 628
    const-wide v4, 0x3fd6e7bf53896e7cL

    mul-double/2addr v4, v2

    double-to-int v0, v4

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 629
    iget-object v0, p0, Ltu;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    iget-object v0, p0, Ltu;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 632
    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v4, v1

    const-wide v6, 0x3fdbbbbbbbbbbbbcL

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 633
    const-wide v4, 0x3fc8ed2308158ed2L

    mul-double/2addr v4, v2

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 634
    iget-object v1, p0, Ltu;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget-object v0, p0, Ltu;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 637
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    .line 638
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    move-object v0, v1

    .line 640
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-wide v4, 0x3fb79435e50d7943L

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 641
    iget-object v0, p0, Ltu;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    iget-object v0, p0, Ltu;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 644
    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 645
    mul-double v4, v2, v8

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 646
    iget-object v1, p0, Ltu;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iget-object v0, p0, Ltu;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 649
    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v10

    double-to-int v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 650
    mul-double v1, v2, v8

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 651
    iget-object v1, p0, Ltu;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    return-void

    :cond_0
    move-object v1, v0

    goto :goto_4

    :cond_1
    move-object v1, v0

    goto/16 :goto_3

    :cond_2
    move-object v1, v0

    goto/16 :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public f()V
    .locals 5

    .prologue
    .line 769
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 770
    const/4 v0, 0x1

    iput v0, p0, Ltu;->b:I

    .line 771
    invoke-direct {p0}, Ltu;->a()Z

    .line 772
    iget-object v0, p0, Ltu;->b:Landroid/widget/TextView;

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Ltu;->a:Lcom/sohu/inputmethod/multimedia/ProgressImageView;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sohu/inputmethod/multimedia/ProgressImageView;->a(JJ)V

    .line 774
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 890
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 891
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 892
    const-string v2, "upload_serial_no"

    iget-object v3, p0, Ltu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "action"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 895
    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 896
    iget-object v1, p0, Ltu;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 897
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Ltu;->a:Landroid/app/Activity;

    check-cast v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    .line 979
    return-void
.end method
