.class public Lcom/zte/engineer/LcdTestActivity;
.super Lcom/zte/engineer/ZteActivity;
.source "LcdTestActivity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "TestActivity"

.field private static final TAG:Ljava/lang/String; = "LcdTestActivity"

.field private static final TIMER_EVENT_TICK:I = 0x1


# instance fields
.field private mBGColor:I

.field private mButton:Landroid/widget/LinearLayout;

.field private mFSLl:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/engineer/ZteActivity;-><init>()V

    .line 149
    new-instance v0, Lcom/zte/engineer/LcdTestActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/engineer/LcdTestActivity$1;-><init>(Lcom/zte/engineer/LcdTestActivity;)V

    iput-object v0, p0, Lcom/zte/engineer/LcdTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/LcdTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/engineer/LcdTestActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/LcdTestActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity;->mFSLl:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/engineer/LcdTestActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity;->mButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/engineer/LcdTestActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/engineer/LcdTestActivity;->changeLCDColor()V

    return-void
.end method

.method private changeLCDColor()V
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity;->mFSLl:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    return-void

    .line 131
    :sswitch_0
    const/high16 v0, -0x1

    iput v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    goto :goto_0

    .line 134
    :sswitch_1
    const v0, -0xff0100

    iput v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    goto :goto_0

    .line 137
    :sswitch_2
    const v0, -0xffff01

    iput v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    goto :goto_0

    .line 140
    :sswitch_3
    const/high16 v0, -0x100

    iput v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        -0xffff01 -> :sswitch_3
        -0xff0100 -> :sswitch_2
        -0x10000 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTemp()I
    .locals 8

    .prologue
    .line 203
    const-string v4, "-30"

    .line 204
    .local v4, getTemp:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/devices/platform/mt6320-battery/power_supply/battery/batt_temp"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 207
    .local v0, bufferedreader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 209
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .local v1, bufferedreader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string v5, "LcdTestActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v0, v1

    .line 230
    .end local v1           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    :goto_1
    const-string v5, "LcdTestActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    return v5

    .line 211
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v1       #bufferedreader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 212
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    const-string v4, "-30"

    .line 214
    const-string v5, "LcdTestActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 220
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 221
    .end local v1           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    const-string v4, "-30"

    .line 223
    const-string v5, "LcdTestActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #bufferedreader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 216
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const-string v4, "-30"

    .line 218
    const-string v5, "LcdTestActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 224
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v1

    .line 225
    .end local v1           #bufferedreader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedreader:Ljava/io/BufferedReader;
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    const-string v4, "-30"

    .line 227
    const-string v5, "LcdTestActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException getTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 224
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_3

    .line 220
    :catch_5
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public finishSelf(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zte/engineer/LcdTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->finishSelf(I)V

    .line 185
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    const/high16 v1, -0x100

    if-ne v0, v1, :cond_0

    .line 176
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/zte/engineer/LcdTestActivity;->finishSelf(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xa

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    invoke-virtual {p0, v1}, Lcom/zte/engineer/LcdTestActivity;->finishSelf(I)V

    .line 200
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/zte/engineer/LcdTestActivity;->finishSelf(I)V

    goto :goto_0

    .line 194
    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zte/engineer/LcdTestActivity;->finishSelf(I)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x7f080034
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/zte/engineer/ZteActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 54
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 58
    const-string v1, "TestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EMLcdTest.onCreate: this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/engineer/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const v1, 0x7f080032

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zte/engineer/LcdTestActivity;->mFSLl:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zte/engineer/LcdTestActivity;->mButton:Landroid/widget/LinearLayout;

    .line 62
    iget-object v1, p0, Lcom/zte/engineer/LcdTestActivity;->mButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    .line 70
    iget-object v1, p0, Lcom/zte/engineer/LcdTestActivity;->mFSLl:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/zte/engineer/LcdTestActivity;->mBGColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    iget-object v1, p0, Lcom/zte/engineer/LcdTestActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x578

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    invoke-static {}, Lcom/zte/engineer/LcdTestActivity;->getTemp()I

    move-result v0

    .line 75
    .local v0, temp:I
    const-string v1, "LcdTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v1, 0x1a4

    if-gt v0, v1, :cond_0

    const/16 v1, -0x1e

    if-ge v0, v1, :cond_1

    .line 78
    :cond_0
    const-string v1, "LcdTestActivity"

    const-string v2, "showErrorAndFinish="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p0}, Lcom/zte/engineer/LcdTestActivity;->showErrorAndFinish(Landroid/app/Activity;)V

    .line 80
    const v1, 0x7f06012a

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    :cond_1
    return-void
.end method

.method public showErrorAndFinish(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 236
    const-string v1, "LcdTestActivity"

    const-string v2, "showErrorAndFinish begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Lcom/zte/engineer/LcdTestActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/engineer/LcdTestActivity$2;-><init>(Lcom/zte/engineer/LcdTestActivity;)V

    .line 243
    .local v0, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06012a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0600a0

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 249
    const-string v1, "LcdTestActivity"

    const-string v2, "dzx: showErrorAndFinish end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method
