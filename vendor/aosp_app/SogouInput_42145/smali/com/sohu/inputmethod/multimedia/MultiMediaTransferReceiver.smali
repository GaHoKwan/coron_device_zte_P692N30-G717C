.class public Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/Dialog;

.field public static a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private static final a:[J


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/pm/PackageManager;

.field private a:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:[J

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void

    .line 60
    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-object p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 722
    const-string v0, ""

    .line 723
    packed-switch p1, :pswitch_data_0

    .line 734
    const v0, 0x7f0b0339

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    :goto_0
    return-object v0

    .line 725
    :pswitch_0
    const v0, 0x7f0b0335

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 728
    :pswitch_1
    const v0, 0x7f0b0333

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 731
    :pswitch_2
    const v0, 0x7f0b0337

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "com.sohu.inputmethod.sms.new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;Z)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->b(Z)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v3, v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;ZZ)V

    goto :goto_0

    .line 131
    :cond_3
    const-string v1, "com.sohu.inputmethod.sms.alert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lafp;->b(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;ZZ)V

    goto :goto_0

    .line 138
    :cond_5
    const-string v1, "com.sohu.inputmethod.sms.soundvibrate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 139
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->b()V

    .line 140
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->c()V

    goto :goto_0

    .line 141
    :cond_6
    const-string v1, "com.sohu.inputmethod.sms.TOUPLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->c(Landroid/os/Bundle;)V

    goto :goto_0

    .line 143
    :cond_7
    const-string v1, "com.sohu.inputmethod.sms.UPLOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->d(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 145
    :cond_8
    const-string v1, "com.sohu.inputmethod.sms.UPLOADFAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->g(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 147
    :cond_9
    const-string v1, "com.sohu.inputmethod.sms.DOWNLOADFAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 148
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 151
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->h(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 153
    :cond_b
    const-string v1, "com.sohu.inputmethod.sms.READDOWNLOADDIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 159
    sget-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    sget-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    sget-object v1, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    sget-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    .line 171
    :cond_0
    const-string v0, "dataUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 174
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Landroid/app/AlertDialog;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 336
    sput-object p2, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/Dialog;

    .line 339
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 340
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 341
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 345
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lul;

    invoke-direct {v1, p0, p2}, Lul;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    new-instance v0, Lum;

    invoke-direct {v0, p0}, Lum;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 360
    const v0, 0x7f0700f6

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const v0, 0x7f0700f9

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    const v0, 0x7f0700fb

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 363
    const v1, 0x7f0700fa

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 364
    new-instance v8, Lun;

    invoke-direct {v8, p0, p2, v0, v1}, Lun;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/app/AlertDialog;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 440
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    const-string v0, "multimedia_serial_no"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 463
    const-string v0, "sogoumedia_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 464
    new-instance v0, Lvj;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v4, "sogoumessage_item"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    const-string v6, "media_list_size"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct/range {v0 .. v8}, Lvj;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;JLandroid/os/Handler;)V

    invoke-virtual {v0}, Lvj;->start()V

    .line 469
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    const/4 v8, 0x0

    .line 446
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 447
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 448
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 449
    :catch_1
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 253
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 255
    const v2, 0x7f020099

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 256
    const v2, 0x7f0b033b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v3, 0x7d3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 259
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 261
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 262
    const v3, 0x7f03002e

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 264
    const/4 v0, -0x1

    iget-object v4, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v5, 0x7f0b02cf

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Luj;

    invoke-direct {v5, p0, p1, v2}, Luj;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v0, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 269
    const/4 v4, -0x2

    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v5, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 270
    new-instance v0, Luk;

    invoke-direct {v0, p0, p1}, Luk;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 275
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 276
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 278
    if-eqz p3, :cond_0

    .line 279
    invoke-direct {p0, p1, v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;Landroid/app/AlertDialog;)V

    .line 299
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v0, "media_list_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 282
    const-string v2, "multimedia_sender"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    const-string v4, "multimedia_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 285
    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v6, 0x7f0b033a

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v4, v7, v9

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 288
    const v0, 0x7f0700f7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    const v1, 0x7f0700f8

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 290
    if-eqz p2, :cond_1

    .line 291
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 292
    sget-object v3, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 297
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 181
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 182
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 184
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 185
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 201
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const v1, 0x7f0b035f

    new-instance v2, Luh;

    invoke-direct {v2, p0, p1}, Luh;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    const v1, 0x7f0b0360

    new-instance v2, Lui;

    invoke-direct {v2, p0, p1}, Lui;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const-string v1, "multimedia_sender"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    const-string v2, "multimedia_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 238
    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v4, 0x7f0b0361

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    const v1, 0x7f0b033b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 246
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->i(Landroid/os/Bundle;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/os/Vibrator;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/os/Vibrator;

    sget-object v1, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 196
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-class v2, Lcom/sohu/inputmethod/settings/AutoUpgradeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    const-string v1, "sogou.action.upload.multimedia"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 487
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 491
    const-string v0, "uploadResult"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 492
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 493
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->f(Landroid/os/Bundle;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->e(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f0b0348

    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->bu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->bu:I

    .line 505
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->bl:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->bl:I

    .line 506
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Lafp;->i()I

    move-result v2

    if-ne v2, v9, :cond_1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v3}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v3

    iget-object v4, v3, Lamo;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lafp;->i()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lafp;->j()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lamo;->q:Ljava/lang/String;

    .line 516
    :goto_0
    const-string v1, "upload_serial_no"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    const-string v2, "isbackground"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 518
    const-string v3, "transfertype"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 519
    const-string v4, "filetype"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 520
    if-eqz v2, :cond_2

    .line 521
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 522
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-class v5, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sohu.inputmethod.sms.UPLOADFAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 525
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 526
    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const/high16 v5, 0x800

    invoke-static {v2, v10, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 527
    new-instance v2, Landroid/app/Notification;

    const v5, 0x7f02009a

    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v8, v4}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 530
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 531
    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v7, 0x7f0b0345

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-virtual {v7, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v6, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 534
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 535
    packed-switch v3, :pswitch_data_0

    .line 569
    :cond_0
    :goto_1
    return-void

    .line 512
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v3}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v3

    iget-object v4, v3, Lamo;->q:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lafp;->i()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lafp;->k()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lamo;->q:Ljava/lang/String;

    goto/16 :goto_0

    .line 537
    :pswitch_0
    invoke-static {p1}, Ltm;->c(Landroid/os/Bundle;)V

    goto :goto_1

    .line 540
    :pswitch_1
    invoke-static {p1}, Ltu;->c(Landroid/os/Bundle;)V

    goto :goto_1

    .line 543
    :pswitch_2
    invoke-static {p1}, Luv;->c(Landroid/os/Bundle;)V

    goto :goto_1

    .line 548
    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 565
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 567
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 550
    :pswitch_3
    sget-object v1, Ltm;->a:Ltm;

    if-eqz v1, :cond_3

    sget-object v0, Ltm;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 555
    :pswitch_4
    sget-object v1, Ltu;->a:Ltu;

    if-eqz v1, :cond_3

    sget-object v0, Ltu;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 560
    :pswitch_5
    sget-object v1, Luv;->a:Luv;

    if-eqz v1, :cond_3

    sget-object v0, Luv;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 548
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    const v13, 0x7f0b0347

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 572
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bv:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bv:I

    .line 573
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->bq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->bq:I

    .line 574
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lafp;->i()I

    move-result v2

    if-ne v2, v10, :cond_4

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v3}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v3

    iget-object v4, v3, Lamo;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lafp;->i()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lafp;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lamo;->r:Ljava/lang/String;

    .line 584
    :goto_0
    const-string v0, "sogouMedia"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 585
    const-string v2, "upload_serial_no"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    const-string v3, "isbackground"

    invoke-virtual {p1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 587
    const-string v4, "filetype"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 588
    const-string v5, "transfertype"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 589
    sget-object v6, Lcom/sohu/inputmethod/platform/PlatformView;->a:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->B()V

    .line 591
    if-eqz v3, :cond_2

    .line 592
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->C()V

    .line 593
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    const-string v3, "UNKNOWN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 596
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v3, v11, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 603
    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f02009c

    iget-object v7, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v13, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 606
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 607
    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v8, 0x7f0b0344

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v11

    invoke-virtual {v8, v13, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v7, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 610
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 611
    packed-switch v5, :pswitch_data_0

    .line 625
    :cond_2
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 642
    :cond_3
    :goto_3
    if-nez v1, :cond_7

    .line 645
    :goto_4
    return-void

    .line 580
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v3}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v3

    iget-object v4, v3, Lamo;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lafp;->i()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lafp;->k()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lamo;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 598
    :cond_5
    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 599
    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_1

    .line 613
    :pswitch_0
    invoke-static {v1}, Ltm;->c(Landroid/os/Bundle;)V

    goto :goto_2

    .line 616
    :pswitch_1
    invoke-static {v1}, Ltu;->c(Landroid/os/Bundle;)V

    goto :goto_2

    .line 619
    :pswitch_2
    invoke-static {v1}, Luv;->c(Landroid/os/Bundle;)V

    goto :goto_2

    .line 627
    :pswitch_3
    sget-object v0, Ltm;->a:Ltm;

    if-eqz v0, :cond_6

    sget-object v0, Ltm;->a:Ltm;

    iget-object v0, v0, Ltm;->a:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_5
    move-object v1, v0

    .line 630
    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 627
    goto :goto_5

    .line 632
    :pswitch_4
    sget-object v0, Ltu;->a:Ltu;

    if-eqz v0, :cond_3

    sget-object v0, Ltu;->a:Ltu;

    iget-object v0, v0, Ltu;->a:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_3

    .line 637
    :pswitch_5
    sget-object v0, Luv;->a:Luv;

    if-eqz v0, :cond_3

    sget-object v0, Luv;->a:Luv;

    iget-object v0, v0, Luv;->a:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_3

    .line 643
    :cond_7
    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 644
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 625
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 648
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 650
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 651
    const v1, 0x7f0b033d

    new-instance v2, Lup;

    invoke-direct {v2, p0, p1}, Lup;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    const v1, 0x7f0b033e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 658
    const-string v1, "filetype"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 659
    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b0349

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 661
    const v1, 0x7f0b033b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 662
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 664
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 665
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 666
    return-void
.end method

.method private h(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 669
    const-string v0, "multimedia_serial_no"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 671
    const-string v0, "sogouMedia"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;

    .line 673
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    iget-object v2, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->e:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 676
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 678
    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 679
    const v2, 0x7f0b033d

    new-instance v3, Luf;

    invoke-direct {v3, p0, p1}, Luf;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    const v2, 0x7f0b033e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 685
    new-instance v2, Lug;

    invoke-direct {v2, p0, p1}, Lug;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v3, 0x7f0b034a

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    iget v0, v0, Lcom/sohu/inputmethod/multimedia/SogouMedia;->a:I

    invoke-static {v6, v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 694
    const v0, 0x7f0b033b

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 697
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 698
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 699
    return-void
.end method

.method private i(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    .line 702
    const-string v0, "multimedia_serial_no"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    const-string v0, "sogoumedia_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 714
    new-instance v0, Lvj;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v4, "sogoumessage_item"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    check-cast v4, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    const-string v6, "media_list_size"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lvj;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;JLandroid/os/Handler;)V

    invoke-virtual {v0}, Lvj;->start()V

    .line 719
    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v2, 0x1

    .line 472
    const-wide/32 v0, 0x100000

    div-long v0, p1, v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, p1

    const-wide/high16 v3, 0x4130

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    .line 474
    :cond_0
    const-wide/16 v0, 0x400

    div-long v0, p1, v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, p1

    const-wide/high16 v3, 0x4090

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v1, 0x7f0b0358

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lue;

    invoke-direct {v0, p0}, Lue;-><init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)V

    sput-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 112
    return-void
.end method

.method public a(Landroid/os/Bundle;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0b033b

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 303
    const-string v0, "multimedia_serial_no"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    const-string v0, "multimedia_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 309
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-class v4, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const-string v3, "com.sohu.inputmethod.sms.alert"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 313
    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v10, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 314
    new-instance v4, Landroid/app/Notification;

    const v0, 0x7f02009a

    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v0, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 316
    iput-object v3, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 317
    const/16 v0, 0x10

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 319
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v5, 0x7f0b034a

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v5, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v4, v5, v6, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 328
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v4}, Lsc;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 329
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const v7, 0x7f0b033c

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/sohu/inputmethod/multimedia/TransferService;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a()V

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/app/NotificationManager;

    .line 95
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a:Landroid/content/pm/PackageManager;

    .line 96
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
