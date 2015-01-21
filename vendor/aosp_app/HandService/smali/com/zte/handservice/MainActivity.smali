.class public Lcom/zte/handservice/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final JOINME_PKG_NAME:Ljava/lang/String; = "com.joinme.maindaemon"


# instance fields
.field private SCHEDUL:J

.field private afterServiceButton:Landroid/widget/Button;

.field private appUpdateButton:Landroid/widget/Button;

.field private gridAdapter:Lcom/zte/handservice/BluegodGridViewAdapter;

.field private icHelpButton:Landroid/widget/Button;

.field private joinmeBtn:Landroid/widget/Button;

.field private phoneDoctorButton:Landroid/widget/Button;

.field private phoneUpdateButton:Landroid/widget/Button;

.field private questionFeedbackButton:Landroid/widget/Button;

.field private starButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/zte/handservice/MainActivity;->SCHEDUL:J

    return-void
.end method

.method private buttonInit()V
    .locals 3

    .prologue
    const v2, 0x7f090014

    .line 162
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->icHelpButton:Landroid/widget/Button;

    .line 163
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->phoneDoctorButton:Landroid/widget/Button;

    .line 164
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->afterServiceButton:Landroid/widget/Button;

    .line 165
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->appUpdateButton:Landroid/widget/Button;

    .line 166
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->phoneUpdateButton:Landroid/widget/Button;

    .line 167
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->questionFeedbackButton:Landroid/widget/Button;

    .line 168
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->starButton:Landroid/widget/Button;

    .line 169
    invoke-virtual {p0, v2}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/handservice/MainActivity;->joinmeBtn:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->icHelpButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->phoneDoctorButton:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->afterServiceButton:Landroid/widget/Button;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->appUpdateButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->phoneUpdateButton:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->questionFeedbackButton:Landroid/widget/Button;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->starButton:Landroid/widget/Button;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->icHelpButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->phoneDoctorButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->afterServiceButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->appUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->phoneUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->questionFeedbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->starButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->joinmeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->joinmeBtn:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/zte/handservice/MainActivity;->joinmeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_0
    return-void
.end method

.method private getEnterActivity(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 423
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 424
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v0, enterActivity:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 432
    .local v7, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 434
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 435
    .local v1, enterActivityName:Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 436
    .local v5, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 439
    .end local v1           #enterActivityName:Ljava/lang/String;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method private handleJoinMeBtn()V
    .locals 3

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.joinme.maindaemon"

    invoke-direct {p0, p0, v1}, Lcom/zte/handservice/MainActivity;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const-string v1, "com.joinme.maindaemon"

    invoke-virtual {p0, p0, v1}, Lcom/zte/handservice/MainActivity;->openApps(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://cloud.ztedevices.com:20002/download/JoinMe.apk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initBuleGod()V
    .locals 2

    .prologue
    .line 196
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 197
    .local v0, gridView:Landroid/widget/GridView;
    new-instance v1, Lcom/zte/handservice/BluegodGridViewAdapter;

    invoke-direct {v1, p0}, Lcom/zte/handservice/BluegodGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/handservice/MainActivity;->gridAdapter:Lcom/zte/handservice/BluegodGridViewAdapter;

    .line 199
    iget-object v1, p0, Lcom/zte/handservice/MainActivity;->gridAdapter:Lcom/zte/handservice/BluegodGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    return-void
.end method

.method private isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 364
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    :try_start_0
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 366
    .local v2, pi:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 391
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 371
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 373
    .local v1, installedPkgName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    const/4 v4, 0x1

    goto :goto_0

    .line 383
    .end local v1           #installedPkgName:Ljava/lang/String;
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 301
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 305
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 231
    const-string v4, "test"

    const-string v5, "test"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 233
    .local v3, tag:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v1, intent:Landroid/content/Intent;
    sparse-switch v3, :sswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 237
    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "click"

    const-string v6, "user_help"

    const-string v7, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 239
    const-string v4, "com.zte.UserHelp"

    const-string v5, "com.zte.UserHelp.UserHelpActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v1}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const v4, 0x7f060023

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "click"

    const-string v6, "FAQ"

    const-string v7, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 246
    const-string v4, "com.zte.FAQ"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v1}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :sswitch_2
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "click"

    const-string v6, "after_service"

    const-string v7, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 253
    const-string v4, "com.zte.HandService.START_ACTION_AFTER_SALE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v1}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    :sswitch_3
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "click"

    const-string v6, "update"

    const-string v7, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 260
    const-string v4, "intent.action.startActivity.SETTING_TO_ALIVE_UPDATE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v1}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    :sswitch_4
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "click"

    const-string v6, "DM"

    const-string v7, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 269
    const-string v4, "android.intent.action.zdm.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v1}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    :sswitch_5
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->getFeedbackModule()Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/zte/statistics/sdk/FeedbackModule;->forceShowFeedbackDialog(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 277
    :sswitch_6
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "click"

    const-string v6, "star"

    const-string v7, "1"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://www.myzte.cn/forum.php"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 286
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_0

    .line 288
    :sswitch_7
    :try_start_3
    invoke-direct {p0}, Lcom/zte/handservice/MainActivity;->handleJoinMeBtn()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 291
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_1

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x7f090014 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 29
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/zte/handservice/ProjectConfig;->hasGuide(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 64
    const v25, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zte/handservice/MainActivity;->setContentView(I)V

    .line 80
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 81
    .local v4, context:Landroid/content/Context;
    const-string v25, "STATISTICS"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 84
    .local v20, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/handservice/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.zte.aliveupdate"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 85
    .local v19, packageInfo:Landroid/content/pm/PackageInfo;
    sget-object v25, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYPROXY:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;)V

    .line 86
    const-string v25, "https://cloud.ztedevices.com/dcs/"

    invoke-static/range {v25 .. v25}, Lcom/zte/statistics/sdk/ZTEStatistics;->setCloudUrl(Ljava/lang/String;)V

    .line 87
    invoke-static {v4}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v19           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/zte/handservice/ProjectConfig;->isBlueGod(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 129
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 132
    const v25, 0x7f09001c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/zte/handservice/MainActivity;->buttonInit()V

    .line 151
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/handservice/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 152
    .local v5, dm:Landroid/util/DisplayMetrics;
    const-string v25, "height="

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v25, "width="

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "first"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void

    .line 66
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #dm:Landroid/util/DisplayMetrics;
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/zte/handservice/ProjectConfig;->isBlueGod(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 68
    const v25, 0x7f030001

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zte/handservice/MainActivity;->setContentView(I)V

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/zte/handservice/MainActivity;->initBuleGod()V

    goto/16 :goto_0

    .line 71
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/zte/handservice/ProjectConfig;->isFiveBtns(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 73
    const v25, 0x7f030003

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zte/handservice/MainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 77
    :cond_4
    const v25, 0x7f030005

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zte/handservice/MainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 89
    .restart local v4       #context:Landroid/content/Context;
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    .line 90
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x0

    .line 91
    .local v14, lanuchNumber:I
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 92
    .local v12, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 93
    .local v24, temp:Ljava/lang/String;
    const-string v25, "payload-launch"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 94
    const-string v25, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, lanuchInfo:Ljava/lang/String;
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v9, infoObject:Lorg/json/JSONObject;
    const-string v25, "count"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 106
    .end local v9           #infoObject:Lorg/json/JSONObject;
    .end local v13           #lanuchInfo:Ljava/lang/String;
    .end local v24           #temp:Ljava/lang/String;
    :cond_6
    :goto_3
    sget-object v25, Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;->ONLYBYSELF:Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Lcom/zte/statistics/sdk/ZTEStatistics;->init(Landroid/content/Context;Lcom/zte/statistics/sdk/comm/ConstantDefine$SendMode;)V

    .line 107
    const-string v25, "https://cloud.ztedevices.com/dcs/"

    invoke-static/range {v25 .. v25}, Lcom/zte/statistics/sdk/ZTEStatistics;->setCloudUrl(Ljava/lang/String;)V

    .line 108
    invoke-static {v4}, Lcom/zte/statistics/sdk/ZTEStatistics;->increaseUseTimes(Landroid/content/Context;)V

    .line 109
    const/4 v11, 0x0

    .line 110
    .local v11, isTimerOut:Z
    const-string v25, "time"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 111
    .local v15, lastTime:J
    const-string v25, "first"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 112
    .local v10, isFirst:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 113
    .local v17, nowTime:J
    sub-long v21, v17, v15

    .line 114
    .local v21, schedul:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/handservice/MainActivity;->SCHEDUL:J

    move-wide/from16 v25, v0

    cmp-long v25, v21, v25

    if-ltz v25, :cond_7

    .line 115
    const/4 v11, 0x1

    .line 117
    :cond_7
    if-eqz v10, :cond_8

    .line 118
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 119
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-interface/range {v25 .. v28}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 99
    .end local v10           #isFirst:Z
    .end local v11           #isTimerOut:Z
    .end local v15           #lastTime:J
    .end local v17           #nowTime:J
    .end local v21           #schedul:J
    .restart local v13       #lanuchInfo:Ljava/lang/String;
    .restart local v24       #temp:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 100
    .local v7, e1:Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 120
    .end local v7           #e1:Lorg/json/JSONException;
    .end local v13           #lanuchInfo:Ljava/lang/String;
    .end local v24           #temp:Ljava/lang/String;
    .restart local v10       #isFirst:Z
    .restart local v11       #isTimerOut:Z
    .restart local v15       #lastTime:J
    .restart local v17       #nowTime:J
    .restart local v21       #schedul:J
    :cond_8
    const/16 v25, 0x1f

    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    if-eqz v11, :cond_0

    .line 121
    :cond_9
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 122
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-interface/range {v25 .. v28}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 137
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #isFirst:Z
    .end local v11           #isTimerOut:Z
    .end local v12           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14           #lanuchNumber:I
    .end local v15           #lastTime:J
    .end local v17           #nowTime:J
    .end local v21           #schedul:J
    :cond_a
    const v25, 0x7f09001c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/zte/handservice/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 138
    .local v23, show:Landroid/widget/LinearLayout;
    new-instance v25, Lcom/zte/handservice/MainActivity$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/handservice/MainActivity$1;-><init>(Lcom/zte/handservice/MainActivity;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/zte/handservice/MainActivity;->gridAdapter:Lcom/zte/handservice/BluegodGridViewAdapter;

    invoke-virtual {v3, p3}, Lcom/zte/handservice/BluegodGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 313
    .local v1, imageId:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v2, intent:Landroid/content/Intent;
    sparse-switch v1, :sswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 318
    :sswitch_0
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->getFeedbackModule()Lcom/zte/statistics/sdk/FeedbackModule;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/zte/statistics/sdk/FeedbackModule;->forceShowFeedbackDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 323
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/handservice/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "click"

    const-string v5, "update"

    const-string v6, "1"

    invoke-static {v3, v4, v5, v6}, Lcom/zte/statistics/sdk/ZTEStatistics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/zte/statistics/sdk/ZTEStatistics;->sendCollectionInfo()V

    .line 325
    const-string v3, "intent.action.startActivity.SETTING_TO_ALIVE_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v2}, Lcom/zte/handservice/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f060023

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 335
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :sswitch_2
    invoke-direct {p0}, Lcom/zte/handservice/MainActivity;->handleJoinMeBtn()V

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x7f020011 -> :sswitch_0
        0x7f02001c -> :sswitch_2
        0x7f02002f -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    :goto_0
    return v3

    .line 215
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.AliveUpdate.AliveUpdateService.checkUpdate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "com.zte.handservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "showUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const-string v1, "versionName"

    const-string v2, "ZTE_appName|HandService_country|GENERIC_operator|GENERIC_device|GENERIC_versionName|V1.0.4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/zte/handservice/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x7f090021
        :pswitch_0
    .end packed-switch
.end method

.method public openApps(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 396
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/handservice/MainActivity;->getEnterActivity(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    .local v1, enterActivityName:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    :cond_2
    const v3, 0x7f060023

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 410
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v0, componentName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
