.class public Lcom/android/browser/BrowserBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, action:Ljava/lang/String;
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 39
    const-string v19, "BrowserBootReceiver"

    const-string v20, "hx--BrowserBootReceiver intent:ACTION_BOOT_COMPLETED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 43
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    const-string v15, "android.intent.category.DEFAULT"

    .line 44
    .local v15, str1:Ljava/lang/String;
    const-string v16, "android.intent.category.BROWSABLE"

    .line 45
    .local v16, str2:Ljava/lang/String;
    const-string v17, "android.intent.action.VIEW"

    .line 48
    .local v17, str3:Ljava/lang/String;
    new-instance v8, Landroid/content/IntentFilter;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v8, filter:Landroid/content/IntentFilter;
    invoke-virtual {v8, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 51
    const-string v19, "http"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 53
    new-instance v6, Landroid/content/ComponentName;

    const-string v19, "com.android.browser"

    const-string v20, "com.android.browser.BrowserActivity"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v6, component:Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v10, intentTmp:Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {v10, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v19, "http://"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 60
    .local v18, uri:Landroid/net/Uri;
    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v11, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 67
    .local v13, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 68
    .local v14, size:I
    new-array v4, v14, [Landroid/content/ComponentName;

    .line 69
    .local v4, arrayOfComponentName:[Landroid/content/ComponentName;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 70
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v12, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 72
    .local v12, packageName:Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 78
    .local v5, className:Ljava/lang/String;
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 79
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v12, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v7, componentName:Landroid/content/ComponentName;
    aput-object v7, v4, v9

    .line 69
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 83
    .end local v3           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #className:Ljava/lang/String;
    .end local v7           #componentName:Landroid/content/ComponentName;
    .end local v12           #packageName:Ljava/lang/String;
    :cond_0
    const/high16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v11, v8, v0, v4, v6}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 89
    .end local v4           #arrayOfComponentName:[Landroid/content/ComponentName;
    .end local v6           #component:Landroid/content/ComponentName;
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v9           #i:I
    .end local v10           #intentTmp:Landroid/content/Intent;
    .end local v11           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #size:I
    .end local v15           #str1:Ljava/lang/String;
    .end local v16           #str2:Ljava/lang/String;
    .end local v17           #str3:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
