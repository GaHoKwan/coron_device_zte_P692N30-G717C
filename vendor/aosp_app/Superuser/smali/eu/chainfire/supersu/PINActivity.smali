.class public Leu/chainfire/supersu/PINActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private Ą:Landroid/widget/TextView;

.field private ą:Landroid/widget/TextView;

.field private Ć:Landroid/widget/TextView;

.field private ć:Landroid/widget/TextView;

.field private ċ:Landroid/widget/TextView;

.field private đ:Ljava/lang/String;

.field private Ē:I

.field private ē:Z

.field private Ė:Landroid/os/Bundle;

.field private ȃ:Landroid/widget/TextView;

.field private Ȋ:Landroid/widget/TextView;

.field private ˮ͈:Landroid/widget/TextView;

.field private ˮ͍:Landroid/widget/TextView;

.field private ܕ:Z

.field private 㥳:Z

.field private 䒧:Ljava/lang/String;

.field private 岱:Landroid/widget/TextView;

.field private 庸:Z

.field private 櫯:Landroid/widget/TextView;

.field private 纫:Landroid/widget/TextView;

.field private 躆:Z

.field private 鷭:Landroid/widget/TextView;

.field private 띥:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->鷭:Landroid/widget/TextView;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->櫯:Landroid/widget/TextView;

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͈:Landroid/widget/TextView;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ȃ:Landroid/widget/TextView;

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ą:Landroid/widget/TextView;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ą:Landroid/widget/TextView;

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ć:Landroid/widget/TextView;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ć:Landroid/widget/TextView;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͍:Landroid/widget/TextView;

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->岱:Landroid/widget/TextView;

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ȋ:Landroid/widget/TextView;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ċ:Landroid/widget/TextView;

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->纫:Landroid/widget/TextView;

    .line 237
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->躆:Z

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ܕ:Z

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->庸:Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->đ:Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/supersu/PINActivity;->Ē:I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ē:Z

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/supersu/PINActivity;->띥:J

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->㥳:Z

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    .line 19
    return-void
.end method

.method public static 櫯()Ljava/lang/String;
    .locals 5

    .line 0
    const-string v2, ""

    .line 128
    new-instance v3, Ljava/io/File;

    sget-object v0, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    const/16 v0, 0x20

    new-array v4, v0, [B

    .line 134
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v2, v0

    .line 137
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    move-exception v4

    .line 138
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 139
    throw v4

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    nop

    .line 144
    :catch_0
    :cond_1
    return-object v2
.end method

.method static synthetic 鷭(Leu/chainfire/supersu/PINActivity;)I
    .locals 1

    .line 0
    iget v0, p0, Leu/chainfire/supersu/PINActivity;->Ē:I

    return v0
.end method

.method public static 鷭(Landroid/app/Activity;ZIZ)V
    .locals 4

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 37
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    .line 40
    .line 41
    const/high16 v0, 0x4085

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    const-string v0, "eu.chainfire.supersu.pin.forresult"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const-string v0, "eu.chainfire.supersu.pin.closeonclear"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string v0, "eu.chainfire.supersu.pin.isverify"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method

.method public static 鷭(Leu/chainfire/supersu/MainActivity;Landroid/content/Intent;Leu/chainfire/supersu/MainActivity$8;Leu/chainfire/supersu/MainActivity$9;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 0
    move-object v4, p1

    move-object v3, p0

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->櫯()Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4, v5}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 93
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 94
    return-void

    .line 95
    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "eu.chainfire.supersu.pin.status"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 96
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 97
    :cond_2
    return-void

    .line 100
    :cond_3
    move-object p1, p3

    .line 101
    invoke-static {p0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    new-instance v1, Leu/chainfire/supersu/PINActivity$1;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/PINActivity$1;-><init>(Leu/chainfire/supersu/MainActivity$9;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    new-instance v1, Leu/chainfire/supersu/PINActivity$2;

    invoke-direct {v1, p1}, Leu/chainfire/supersu/PINActivity$2;-><init>(Leu/chainfire/supersu/MainActivity$9;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    :cond_4
    return-void
.end method

.method public static 鷭(Leu/chainfire/supersu/PromptActivity;ILjava/lang/String;ZJ)V
    .locals 4

    .line 0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 54
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Leu/chainfire/supersu/PINActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    .line 56
    .line 57
    const/high16 v0, 0x4085

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    const-string v0, "eu.chainfire.supersu.pin.forresult"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v0, "eu.chainfire.supersu.pin.responsecode"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v0, "eu.chainfire.supersu.pin.appname"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v0, "eu.chainfire.supersu.pin.askagain"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v0, "eu.chainfire.supersu.pin.expiretime"

    invoke-virtual {v3, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static 鷭()Z
    .locals 2

    .line 0
    invoke-static {}, Leu/chainfire/supersu/PINActivity;->櫯()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private 鷭(ILjava/lang/String;)Z
    .locals 8

    .line 0
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ܕ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 151
    :cond_0
    const/4 v4, 0x1

    .line 153
    new-instance v5, Landroid/content/Intent;

    const-string v0, "eu.chainfire.supersu.pin"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 156
    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {v5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_1
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->庸:Z

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v5}, Leu/chainfire/supersu/PINActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    goto/16 :goto_3

    .line 162
    :cond_2
    new-instance p1, Leu/chainfire/supersu/Settings;

    invoke-direct {p1, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->đ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Leu/chainfire/supersu/Settings;->櫯(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object p2

    .line 165
    iget-object v0, p2, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    invoke-static {p0, v5, v0}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    const/4 v4, 0x0

    .line 169
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/PINActivity$3;

    invoke-direct {v1, p0, p2, p1}, Leu/chainfire/supersu/PINActivity$3;-><init>(Leu/chainfire/supersu/PINActivity;Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings;)V

    .line 182
    new-instance v2, Leu/chainfire/supersu/PINActivity$4;

    invoke-direct {v2, p0, p2, p1}, Leu/chainfire/supersu/PINActivity$4;-><init>(Leu/chainfire/supersu/PINActivity;Leu/chainfire/supersu/Settings$App;Leu/chainfire/supersu/Settings;)V

    .line 169
    invoke-static {p0, v0, v1, v2}, Leu/chainfire/supersu/Constants;->鷭(Landroid/app/Activity;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V

    .line 196
    goto/16 :goto_2

    :cond_3
    iget-object v0, p2, Leu/chainfire/supersu/Settings$App;->ˮ͍:Ljava/lang/String;

    if-nez v0, :cond_7

    move-object v6, v5

    move-object v5, p0

    invoke-static {}, Leu/chainfire/supersu/PINActivity;->櫯()Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v5, v6, v7}, Leu/chainfire/supersu/PINActivity;->鷭(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    .line 198
    iget-wide v0, p0, Leu/chainfire/supersu/PINActivity;->띥:J

    iput-wide v0, p2, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 199
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ē:Z

    if-eqz v0, :cond_5

    iget-wide v0, p0, Leu/chainfire/supersu/PINActivity;->띥:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 200
    :cond_5
    const/4 v0, 0x1

    iput v0, p2, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 201
    goto :goto_1

    .line 202
    :cond_6
    const/4 v0, 0x2

    iput v0, p2, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 204
    :goto_1
    invoke-virtual {p2}, Leu/chainfire/supersu/Settings$App;->ˮ͈()V

    .line 205
    invoke-virtual {p1, p0}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 207
    iget v0, p0, Leu/chainfire/supersu/PINActivity;->Ē:I

    const/4 v1, 0x1

    invoke-virtual {p2, p0, v0, v1}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 208
    goto :goto_2

    .line 209
    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p2, Leu/chainfire/supersu/Settings$App;->ȃ:J

    .line 210
    const/4 v0, 0x2

    iput v0, p2, Leu/chainfire/supersu/Settings$App;->庸:I

    .line 211
    invoke-virtual {p2}, Leu/chainfire/supersu/Settings$App;->ˮ͈()V

    .line 212
    invoke-virtual {p1, p0}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/Context;)V

    .line 214
    iget v0, p0, Leu/chainfire/supersu/PINActivity;->Ē:I

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, v1}, Leu/chainfire/supersu/Settings$App;->鷭(Landroid/content/Context;II)V

    .line 217
    :goto_2
    iget v0, p0, Leu/chainfire/supersu/PINActivity;->Ē:I

    invoke-static {v0}, Leu/chainfire/supersu/PromptQueue;->鷭(I)V

    .line 218
    invoke-static {p0}, Leu/chainfire/supersu/PromptQueue;->鷭(Landroid/content/Context;)Z

    .line 221
    :goto_3
    return v4
.end method

.method private static 鷭(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    .line 0
    invoke-static {p0}, Leu/chainfire/supersu/Settings;->ˮ͈(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "eu.chainfire.supersu.pin.status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "eu.chainfire.supersu.pin.status"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "eu.chainfire.supersu.pin.code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/Settings;->ˮ͈(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->鷭(ILjava/lang/String;)Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ܕ:Z

    .line 336
    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 338
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 257
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->setContentView(I)V

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    .line 260
    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 263
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.forresult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->庸:Z

    .line 264
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->庸:Z

    if-nez v0, :cond_2

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->躆:Z

    .line 266
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.appname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->đ:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.responsecode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/PINActivity;->Ē:I

    .line 268
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.askagain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ē:Z

    .line 269
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.expiretime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/supersu/PINActivity;->띥:J

    .line 270
    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.closeonclear"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->躆:Z

    .line 272
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.isverify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->㥳:Z

    .line 274
    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 277
    :cond_3
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->鷭:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->櫯:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͈:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ȃ:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ą:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ą:Landroid/widget/TextView;

    .line 283
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ć:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ć:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͍:Landroid/widget/TextView;

    .line 286
    const v0, 0x7f040044

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->岱:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f040045

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ȋ:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->ċ:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->纫:Landroid/widget/TextView;

    .line 291
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->㥳:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->鷭:Landroid/widget/TextView;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 293
    :cond_4
    new-instance p1, Leu/chainfire/supersu/PINActivity$5;

    invoke-direct {p1, p0}, Leu/chainfire/supersu/PINActivity$5;-><init>(Leu/chainfire/supersu/PINActivity;)V

    .line 305
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->櫯:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͈:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ȃ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ą:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ą:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ć:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ć:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͍:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->岱:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ȋ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ċ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 316
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->纫:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 318
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->庸:Z

    if-eqz v0, :cond_5

    .line 319
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->鷭(ILjava/lang/String;)Z

    .line 322
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PINActivity;->onPIN(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method public onPIN(Landroid/view/View;)V
    .locals 5

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ȃ:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 350
    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ą:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 351
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ą:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 352
    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ć:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 353
    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ć:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 354
    :cond_4
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͍:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 355
    :cond_5
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->岱:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 356
    :cond_6
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ȋ:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 357
    :cond_7
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ċ:Landroid/widget/TextView;

    if-ne p1, v0, :cond_8

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 358
    :cond_8
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->纫:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    iget-object v1, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 360
    :cond_9
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->ˮ͈:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    .line 361
    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    .line 362
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->躆:Z

    if-eqz v0, :cond_a

    .line 363
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->鷭(ILjava/lang/String;)Z

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ܕ:Z

    .line 365
    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 370
    :cond_a
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 371
    iget-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->㥳:Z

    if-eqz v0, :cond_b

    .line 372
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->鷭:Landroid/widget/TextView;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    goto :goto_1

    .line 374
    :cond_b
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->鷭:Landroid/widget/TextView;

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 376
    goto :goto_1

    .line 377
    :cond_c
    const-string v3, ""

    .line 378
    const/4 v4, 0x0

    goto :goto_0

    .line 379
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    add-int/lit8 v4, v4, 0x1

    :goto_0
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v4, v0, :cond_d

    .line 381
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->鷭:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    const-string v1, "eu.chainfire.supersu.pin.code"

    iget-object v2, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->櫯:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 386
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->䒧:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Leu/chainfire/supersu/PINActivity;->鷭(ILjava/lang/String;)Z

    move-result v3

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ܕ:Z

    .line 388
    if-eqz v3, :cond_e

    .line 389
    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    .line 390
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 393
    :cond_e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    iget-object v0, p0, Leu/chainfire/supersu/PINActivity;->Ė:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 330
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->鷭(ILjava/lang/String;)Z

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/PINActivity;->ܕ:Z

    .line 344
    invoke-virtual {p0}, Leu/chainfire/supersu/PINActivity;->finish()V

    .line 345
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leu/chainfire/supersu/PINActivity;->overridePendingTransition(II)V

    .line 346
    return-void
.end method
