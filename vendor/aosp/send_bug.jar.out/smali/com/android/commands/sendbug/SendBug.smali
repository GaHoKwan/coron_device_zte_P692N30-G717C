.class public Lcom/android/commands/sendbug/SendBug;
.super Ljava/lang/Object;
.source "SendBug.java"


# static fields
.field private static final EMAIL_REGEX:Ljava/util/regex/Pattern; = null

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SEND_BUG_INTENT_ACTION:Ljava/lang/String; = "android.testing.SEND_BUG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/commands/sendbug/SendBug;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/commands/sendbug/SendBug;->LOG_TAG:Ljava/lang/String;

    .line 41
    const-string v0, "^[\\w.%+-]+@[\\w.-]+\\.[a-zA-Z]{2,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/sendbug/SendBug;->EMAIL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findSendToAccount()Landroid/accounts/Account;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 142
    const-string v8, "account"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v1

    .line 144
    .local v1, accountManager:Landroid/accounts/IAccountManager;
    if-nez v1, :cond_1

    .line 145
    sget-object v8, Lcom/android/commands/sendbug/SendBug;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Cannot get AccountManager, is the system running?"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    const/4 v2, 0x0

    .line 149
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 150
    .local v4, foundAccount:Landroid/accounts/Account;
    const-string v8, "sendbug.preferred.domain"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, preferredDomain:Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    :cond_2
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v1, v8}, Landroid/accounts/IAccountManager;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 159
    :goto_1
    if-eqz v2, :cond_4

    .line 160
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v0, v3, v5

    .line 161
    .local v0, account:Landroid/accounts/Account;
    sget-object v8, Lcom/android/commands/sendbug/SendBug;->EMAIL_REGEX:Ljava/util/regex/Pattern;

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 162
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 165
    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 168
    move-object v4, v0

    .line 160
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_4
    move-object v0, v4

    .line 178
    goto :goto_0

    .line 156
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private getSendMailIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .parameter "bugreportUri"
    .parameter "screenshotUri"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/commands/sendbug/SendBug;->findSendToAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 117
    .local v3, sendToAccount:Landroid/accounts/Account;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v4, "application/octet-stream"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "ro.build.description"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, "\n(Sent from BugMailer)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 125
    if-eqz p2, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 134
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 135
    const-string v4, "android.intent.extra.EMAIL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-object v1

    .line 132
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    array-length v0, p0

    if-ne v0, v3, :cond_1

    .line 47
    new-instance v0, Lcom/android/commands/sendbug/SendBug;

    invoke-direct {v0}, Lcom/android/commands/sendbug/SendBug;-><init>()V

    aget-object v1, p0, v2

    invoke-direct {v0, v1}, Lcom/android/commands/sendbug/SendBug;->run(Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Lcom/android/commands/sendbug/SendBug;

    invoke-direct {v0}, Lcom/android/commands/sendbug/SendBug;-><init>()V

    aget-object v1, p0, v2

    aget-object v2, p0, v3

    invoke-direct {v0, v1, v2}, Lcom/android/commands/sendbug/SendBug;->run(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private run(Ljava/lang/String;)V
    .locals 1
    .parameter "bugreportPath"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/commands/sendbug/SendBug;->run(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private run(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "bugreportPath"
    .parameter "screenShotPath"

    .prologue
    .line 58
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v14, bugreport:Ljava/io/File;
    const/16 v16, 0x0

    .line 60
    .local v16, screenShot:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 61
    new-instance v16, Ljava/io/File;

    .end local v16           #screenShot:Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v16       #screenShot:Ljava/io/File;
    :cond_0
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 65
    .local v15, bugreportUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/commands/sendbug/SendBug;->tryBugReporter(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 66
    .local v4, intent:Landroid/content/Intent;
    if-nez v4, :cond_1

    .line 67
    if-eqz v16, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    .line 69
    .local v17, screenshotUri:Landroid/net/Uri;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/commands/sendbug/SendBug;->getSendMailIntent(Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 71
    .end local v17           #screenshotUri:Landroid/net/Uri;
    :cond_1
    if-eqz v4, :cond_4

    .line 72
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 73
    .local v2, am:Landroid/app/IActivityManager;
    if-nez v2, :cond_3

    .line 74
    sget-object v3, Lcom/android/commands/sendbug/SendBug;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Cannot get ActivityManager, is the system running?"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2           #am:Landroid/app/IActivityManager;
    :goto_1
    return-void

    .line 67
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 78
    .restart local v2       #am:Landroid/app/IActivityManager;
    :cond_3
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v3

    goto :goto_1

    .line 84
    .end local v2           #am:Landroid/app/IActivityManager;
    :cond_4
    sget-object v3, Lcom/android/commands/sendbug/SendBug;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find account to send bugreport, local path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private tryBugReporter(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 10
    .parameter "bugreportUri"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 90
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.testing.SEND_BUG"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 94
    .local v3, pm:Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_0

    .line 95
    sget-object v6, Lcom/android/commands/sendbug/SendBug;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Cannot get PackageManager, is the system running?"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 111
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 100
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v3, v2, v6, v7, v8}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 104
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 105
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v1, info:Landroid/content/pm/ResolveInfo;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 101
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move-object v2, v5

    .line 102
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    move-object v2, v5

    .line 111
    goto :goto_0
.end method
