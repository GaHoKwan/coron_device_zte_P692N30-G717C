.class public Lamc;
.super Lalg;
.source "SourceFile"

# interfaces
.implements Lanj;
.implements Lrq;


# instance fields
.field private a:D

.field private a:J

.field private a:Lame;

.field private a:Landroid/app/Notification;

.field private a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

.field private a:Ljava/lang/String;

.field private a:Ljavax/xml/parsers/SAXParser;

.field private a:Z

.field private b:I

.field private b:J

.field private b:Ljava/lang/String;

.field private c:I

.field private c:Ljava/lang/String;

.field private d:I

.field private d:Ljava/lang/String;

.field private e:I

.field private e:Ljava/lang/String;

.field private f:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;II)V
    .locals 9
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
    .line 99
    invoke-direct {p0, p1}, Lalg;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lamc;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 88
    const/4 v1, -0x1

    iput v1, p0, Lamc;->h:I

    .line 90
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lamc;->a:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lamc;->b:J

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamc;->a:Z

    .line 100
    iput-object p2, p0, Lamc;->a:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lamc;->b:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lamc;->c:Ljava/lang/String;

    .line 103
    iput p5, p0, Lamc;->e:I

    .line 104
    iput-wide p6, p0, Lamc;->a:D

    .line 105
    move-object/from16 v0, p8

    iput-object v0, p0, Lamc;->e:Ljava/lang/String;

    .line 106
    move/from16 v0, p10

    iput v0, p0, Lamc;->f:I

    .line 107
    move/from16 v0, p11

    iput v0, p0, Lamc;->g:I

    .line 108
    new-instance v1, Lrr;

    iget-object v2, p0, Lamc;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->S:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "messagetmp.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lamc;->a:Lrr;

    .line 110
    iget-object v1, p0, Lamc;->a:Landroid/content/Context;

    invoke-static {v1}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsa;->a(Lani;)V

    .line 113
    move-object/from16 v0, p9

    iput-object v0, p0, Lamc;->d:Ljava/lang/String;

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    iget-object v2, p0, Lamc;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lamc;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020099

    iget-object v4, p0, Lamc;->a:Landroid/content/Context;

    const v5, 0x7f0b0342

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lamc;->a:Landroid/content/Context;

    invoke-static {v8, p5}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, Lamc;->a:Landroid/app/Notification;

    .line 120
    iget-object v2, p0, Lamc;->a:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 121
    iget-object v1, p0, Lamc;->a:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lamc;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030043

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 124
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    iput-object v1, p0, Lamc;->a:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    new-instance v1, Lame;

    invoke-direct {v1, p0}, Lame;-><init>(Lamc;)V

    iput-object v1, p0, Lamc;->a:Lame;

    .line 131
    iget v1, p0, Lamc;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lamc;->a:Lrr;

    new-instance v2, Lamd;

    invoke-direct {v2, p0}, Lamd;-><init>(Lamc;)V

    invoke-virtual {v1, v2}, Lrr;->a(Lrp;)V

    .line 139
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lamc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lamc;->f:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0}, Lamc;->b()V

    .line 185
    iget-boolean v0, p0, Lamc;->a:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v1, "sogouMedia"

    iget-object v2, p0, Lamc;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v1, "isbackground"

    iget-boolean v2, p0, Lamc;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v1, "packageName"

    iget-object v2, p0, Lamc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "rawfilepath"

    iget-object v2, p0, Lamc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "filepath"

    iget-object v2, p0, Lamc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "filename"

    iget-object v2, p0, Lamc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "filetype"

    iget v2, p0, Lamc;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v1, "filelength"

    iget-wide v2, p0, Lamc;->a:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 197
    const-string v1, "uploadResult"

    iget v2, p0, Lamc;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v1, "upload_serial_no"

    iget-object v2, p0, Lamc;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "sampleRate"

    iget v2, p0, Lamc;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "transfertype"

    iget v2, p0, Lamc;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sohu.inputmethod.sms.UPLOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lamc;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lamc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 506
    iget-wide v0, p0, Lamc;->a:D

    return-wide v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lamc;->b:I

    return v0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 418
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "messagetmp.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lamc;->a:Lame;

    invoke-static {v0}, Lame;->a(Lame;)V

    .line 421
    iget-object v0, p0, Lamc;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "messagetmp.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lamc;->a:Lame;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 423
    iget-object v0, p0, Lamc;->a:Lame;

    invoke-virtual {v0}, Lame;->a()Lcom/sohu/inputmethod/multimedia/SogouMedia;

    move-result-object v0

    iput-object v0, p0, Lamc;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 424
    iget-object v0, p0, Lamc;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lamc;->a:Lcom/sohu/inputmethod/multimedia/SogouMedia;

    iget-object v1, p0, Lamc;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(JJ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 449
    iget-boolean v1, p0, Lamc;->a:Z

    if-eqz v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iput-wide p1, p0, Lamc;->a:J

    .line 451
    iput-wide p3, p0, Lamc;->b:J

    .line 452
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lamc;->a:Landroid/content/Context;

    const-class v3, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string v3, "filepath"

    iget-object v4, p0, Lamc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v3, "upload_serial_no"

    iget-object v4, p0, Lamc;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v3, "transferredSize"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 457
    const-string v3, "allSize"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 458
    const-string v3, "sogouMediaType"

    iget v4, p0, Lamc;->e:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v3, "action"

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v3, "notification"

    iget-object v4, p0, Lamc;->a:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 463
    iget v3, p0, Lamc;->g:I

    packed-switch v3, :pswitch_data_0

    .line 475
    :goto_1
    iget-boolean v3, p0, Lamc;->c:Z

    if-eqz v3, :cond_2

    .line 476
    iget-object v0, p0, Lamc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 465
    :pswitch_0
    invoke-static {v2}, Ltm;->d(Landroid/os/Bundle;)V

    goto :goto_1

    .line 468
    :pswitch_1
    invoke-static {v2}, Ltu;->d(Landroid/os/Bundle;)V

    goto :goto_1

    .line 471
    :pswitch_2
    invoke-static {v2}, Luv;->d(Landroid/os/Bundle;)V

    goto :goto_1

    .line 479
    :cond_2
    iget v1, p0, Lamc;->g:I

    packed-switch v1, :pswitch_data_1

    .line 496
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 498
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 481
    :pswitch_3
    sget-object v1, Ltm;->a:Ltm;

    if-eqz v1, :cond_3

    sget-object v0, Ltm;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 486
    :pswitch_4
    sget-object v1, Ltu;->a:Ltu;

    if-eqz v1, :cond_3

    sget-object v0, Ltu;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 491
    :pswitch_5
    sget-object v1, Luv;->a:Luv;

    if-eqz v1, :cond_3

    sget-object v0, Luv;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 479
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(JJJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x0

    .line 511
    iget-boolean v1, p0, Lamc;->a:Z

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-boolean v1, p0, Lamc;->c:Z

    if-nez v1, :cond_0

    .line 513
    sub-long v1, p5, p3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 515
    iget v1, p0, Lamc;->g:I

    packed-switch v1, :pswitch_data_0

    .line 532
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 517
    :pswitch_0
    sget-object v1, Ltm;->a:Ltm;

    if-eqz v1, :cond_2

    sget-object v0, Ltm;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 522
    :pswitch_1
    sget-object v1, Ltu;->a:Ltu;

    if-eqz v1, :cond_2

    sget-object v0, Ltu;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 527
    :pswitch_2
    sget-object v1, Luv;->a:Luv;

    if-eqz v1, :cond_2

    sget-object v0, Luv;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lsg;)V
    .locals 4
    .parameter

    .prologue
    .line 211
    invoke-virtual {p1}, Lsg;->a()Z

    move-result v0

    iput-boolean v0, p0, Lamc;->c:Z

    .line 212
    iget-boolean v0, p0, Lamc;->c:Z

    if-eqz v0, :cond_0

    .line 213
    iget-wide v0, p0, Lamc;->a:J

    iget-wide v2, p0, Lamc;->b:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lamc;->a(JJ)V

    .line 215
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lamc;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lamc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamc;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/internet/NotifyProgressService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 438
    const-string v2, "upload_serial_no"

    iget-object v3, p0, Lamc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "action"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 441
    iget-object v1, p0, Lamc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 442
    iget-object v1, p0, Lamc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 443
    return-void
.end method

.method public b(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 218
    const/4 v2, 0x0

    .line 220
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lamc;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lamc;->c:I

    .line 222
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    iput v0, p0, Lamc;->d:I

    .line 223
    iget v0, p0, Lamc;->d:I

    iget v2, p0, Lamc;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lamc;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 232
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 236
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lamc;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lamc;->b:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    :goto_0
    iget-object v0, p0, Lamc;->a:Lrr;

    iget-object v1, p0, Lamc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lrr;->a(Ljava/lang/String;Lrq;)I

    move-result v0

    iput v0, p0, Lamc;->h:I

    .line 242
    iget v0, p0, Lamc;->h:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lamc;->a()V

    .line 245
    :cond_0
    :goto_1
    return-void

    .line 225
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 226
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    :goto_3
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 228
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 229
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 232
    :catchall_0
    move-exception v0

    :goto_5
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 237
    :catch_2
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 232
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 228
    :catch_3
    move-exception v0

    goto :goto_4

    .line 225
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public c()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lamc;->c()V

    .line 170
    iget v0, p0, Lamc;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lamc;->h:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 171
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lamc;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "sogou.action.upload.testmobilenet"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "UP_VELOCITY"

    iget-object v2, p0, Lamc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lamc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lamc;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->a()Lani;

    move-result-object v0

    instance-of v0, v0, Lamc;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lamc;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsa;->a(Lani;)V

    .line 181
    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lamc;->e:I

    return v0
.end method

.method public d(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamc;->a:Z

    .line 147
    iget-object v0, p0, Lamc;->a:Lrr;

    invoke-virtual {v0}, Lrr;->d()V

    .line 148
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lamc;->f:I

    return v0
.end method

.method public e(Lorg/apache/http/client/HttpClient;Lsg;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lamc;->c()V

    .line 163
    iget-object v0, p0, Lamc;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->a()Lani;

    move-result-object v0

    instance-of v0, v0, Lamc;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lamc;->a:Landroid/content/Context;

    invoke-static {v0}, Lsa;->a(Landroid/content/Context;)Lsa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsa;->a(Lani;)V

    .line 166
    :cond_0
    return-void
.end method
