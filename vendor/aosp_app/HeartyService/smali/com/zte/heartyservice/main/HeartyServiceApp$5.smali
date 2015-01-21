.class Lcom/zte/heartyservice/main/HeartyServiceApp$5;
.super Landroid/content/BroadcastReceiver;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "mContext"
    .parameter "intent"

    .prologue
    .line 1870
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1872
    .local v3, action:Ljava/lang/String;
    const-string v29, "HeartyServiceApp"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "liuji ------ onReceive action:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const-string v29, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->startAutoStartAndPersistentForEver()V
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$500(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    .line 1876
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v29

    const-string v30, "activity"

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1877
    .local v5, am:Landroid/app/ActivityManager;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v23

    .line 1879
    .local v23, runningTasksInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1881
    .local v22, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1882
    .local v8, component:Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1883
    .local v20, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAllLockedPackages()Ljava/util/List;

    move-result-object v4

    .line 1884
    .local v4, allLockedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 1885
    new-instance v15, Landroid/content/Intent;

    const-string v29, "zte.intent.action.APP_LOCK_EVENT"

    move-object/from16 v0, v29

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1886
    .local v15, intent_lock:Landroid/content/Intent;
    const-string v29, "zte.intent.extra.type"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1887
    const-string v29, "zte.intent.extra.package"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1888
    invoke-static {v15}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doReceiveAppLockEvent(Landroid/content/Intent;)V

    .line 1890
    .end local v15           #intent_lock:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->resumeWatch()V

    .line 2062
    .end local v4           #allLockedPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #am:Landroid/app/ActivityManager;
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v20           #packageName:Ljava/lang/String;
    .end local v22           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v23           #runningTasksInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_0
    return-void

    .line 1891
    :cond_2
    const-string v29, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->checkMemoryAndRecycle()V
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$600(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    goto :goto_0

    .line 1893
    :cond_3
    const-string v29, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    const-string v29, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 1895
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    goto :goto_0

    .line 1896
    :cond_5
    const-string v29, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 1897
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->collapseStatusBar()V

    .line 1899
    const-string v29, "click_notification_id_key"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1901
    .local v13, id:I
    if-nez v13, :cond_6

    .line 1902
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    const-string v30, "notification_key"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const-string v31, "notification_extra"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/zte/heartyservice/indicator/Notifier;->dispatchClickEvent(ILjava/lang/String;)V

    goto :goto_0

    .line 1904
    :cond_6
    if-lez v13, :cond_1

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    #getter for: Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$700(Lcom/zte/heartyservice/main/HeartyServiceApp;)Landroid/app/NotificationManager;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1906
    const-string v29, "start_exam"

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 1907
    .local v25, startExam:Z
    if-eqz v25, :cond_1

    .line 1908
    new-instance v11, Landroid/content/Intent;

    const-string v29, "com.zte.heartyservice.intent.action.startActivity.EXAMINATION"

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v11, examIntent:Landroid/content/Intent;
    const/high16 v29, 0x1400

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1910
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1913
    .end local v11           #examIntent:Landroid/content/Intent;
    .end local v13           #id:I
    .end local v25           #startExam:Z
    :cond_7
    const-string v29, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    .line 1915
    .local v28, uri:Landroid/net/Uri;
    if-eqz v28, :cond_1

    .line 1918
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .line 1920
    .local v21, pkgName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v29

    if-nez v29, :cond_8

    .line 1921
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 1925
    :cond_8
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1926
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->disablePackegePermissions(Ljava/lang/String;)V

    .line 1930
    :cond_9
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/privacy/AppLockActivity;->addLockedApp(Ljava/lang/String;)V

    .line 1932
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAppMD5(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1933
    .end local v21           #pkgName:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_a
    const-string v29, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 1934
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    .line 1935
    .restart local v28       #uri:Landroid/net/Uri;
    if-eqz v28, :cond_1

    .line 1938
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .line 1939
    .restart local v21       #pkgName:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v29

    if-nez v29, :cond_1

    .line 1940
    invoke-static/range {v21 .. v21}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanAppForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    goto/16 :goto_0

    .line 1942
    .end local v21           #pkgName:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_b
    const-string v29, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    .line 1944
    .restart local v28       #uri:Landroid/net/Uri;
    if-eqz v28, :cond_1

    .line 1947
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .line 1948
    .restart local v21       #pkgName:Ljava/lang/String;
    new-instance v19, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct/range {v19 .. v19}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>()V

    .line 1949
    .local v19, localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 1950
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1951
    .local v17, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1952
    invoke-static/range {v17 .. v17}, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleteNotSecurityAppFromTable(Ljava/util/List;)V

    .line 1953
    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->isRemovedPkgHasUnDeletedFile(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$800(Lcom/zte/heartyservice/main/HeartyServiceApp;Ljava/lang/String;)Z

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 1954
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v29

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v30

    const v31, 0x7f0a03fe

    invoke-virtual/range {v30 .. v31}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Toast;->show()V

    .line 1958
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetManagermentUtils;->deleteWifiIptablesRulesImpl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1960
    .end local v17           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    .end local v19           #localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .end local v21           #pkgName:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_d
    const-string v29, "com.android.server.action.SETTINGS_TIMER"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1961
    const-string v29, "key_settings_alarm"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1962
    .restart local v13       #id:I
    if-ltz v13, :cond_e

    .line 1963
    move-object/from16 v0, p1

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->doExpire(Landroid/content/Context;I)V
    invoke-static {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$900(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1965
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkAllTimer()V

    goto/16 :goto_0

    .line 1967
    .end local v13           #id:I
    :cond_f
    const-string v29, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 1968
    const-string v29, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1969
    .local v26, stateExtra:Ljava/lang/String;
    const-string v29, "subscription"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1970
    .local v27, subscription:I
    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 1971
    const-string v29, "simId"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1973
    :cond_10
    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 1974
    const-string v29, "simId"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    .line 1975
    .local v24, sim_id:Ljava/io/Serializable;
    if-eqz v24, :cond_13

    const-string v29, "SIM2"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1976
    const/16 v27, 0x1

    .line 1981
    .end local v24           #sim_id:Ljava/io/Serializable;
    :cond_11
    :goto_1
    if-nez v27, :cond_16

    .line 1982
    const-string v29, "ABSENT"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 1983
    const/16 v29, 0x0

    sput v29, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    .line 1989
    :cond_12
    :goto_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    sget v30, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    invoke-virtual/range {v29 .. v30}, Lcom/zte/heartyservice/indicator/Notifier;->notifySimStateChanged(I)V

    goto/16 :goto_0

    .line 1978
    .restart local v24       #sim_id:Ljava/io/Serializable;
    :cond_13
    const/16 v27, 0x0

    goto :goto_1

    .line 1984
    .end local v24           #sim_id:Ljava/io/Serializable;
    :cond_14
    const-string v29, "LOADED"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1985
    const/16 v29, 0x2

    sput v29, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    goto :goto_2

    .line 1986
    :cond_15
    const-string v29, "NOT_READY"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 1987
    const/16 v29, 0x1

    sput v29, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    goto :goto_2

    .line 1990
    :cond_16
    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1991
    const-string v29, "ABSENT"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 1992
    const/16 v29, 0x0

    sput v29, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus2:I

    goto/16 :goto_0

    .line 1993
    :cond_17
    const-string v29, "LOADED"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 1994
    const/16 v29, 0x2

    sput v29, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus2:I

    goto/16 :goto_0

    .line 1995
    :cond_18
    const-string v29, "NOT_READY"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1996
    const/16 v29, 0x1

    sput v29, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus2:I

    goto/16 :goto_0

    .line 1999
    .end local v26           #stateExtra:Ljava/lang/String;
    .end local v27           #subscription:I
    :cond_19
    const-string v29, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 2000
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    .line 2001
    .restart local v28       #uri:Landroid/net/Uri;
    if-eqz v28, :cond_1

    .line 2004
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .line 2005
    .restart local v21       #pkgName:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 2009
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    goto/16 :goto_0

    .line 2011
    .end local v21           #pkgName:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_1a
    const-string v29, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    .line 2013
    .restart local v28       #uri:Landroid/net/Uri;
    if-eqz v28, :cond_1

    .line 2016
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    .line 2017
    .restart local v21       #pkgName:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1b

    .line 2026
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 2028
    :cond_1b
    const-string v29, "20140122"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "pkgName:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const-string v29, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2030
    .local v9, components:[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v0, v9

    move/from16 v29, v0

    if-lez v29, :cond_1

    .line 2031
    move-object v6, v9

    .local v6, arr$:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    aget-object v8, v6, v12

    .line 2032
    .local v8, component:Ljava/lang/String;
    const-string v29, "20140122"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "component:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    invoke-direct {v7, v0, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    .local v7, cn:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getFromExSet(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v29

    if-nez v29, :cond_1d

    .line 2035
    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :cond_1c
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2037
    :cond_1d
    const/4 v14, 0x0

    .line 2039
    .local v14, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2043
    :goto_5
    if-eqz v14, :cond_1c

    .line 2044
    new-instance v18, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    invoke-direct/range {v18 .. v18}, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;-><init>()V

    .line 2045
    .local v18, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->packageName:Ljava/lang/String;

    .line 2046
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v18

    iput v0, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->version:I

    .line 2047
    invoke-static/range {v18 .. v18}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->analysisReceiver(Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;)V

    goto :goto_4

    .line 2040
    .end local v18           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :catch_0
    move-exception v10

    .line 2041
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 2053
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v8           #component:Ljava/lang/String;
    .end local v9           #components:[Ljava/lang/String;
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #i$:I
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v16           #len$:I
    .end local v21           #pkgName:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :cond_1e
    const-string v29, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    .line 2054
    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->doSta()V
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1000()V

    goto/16 :goto_0

    .line 2055
    :cond_1f
    const-string v29, "android.intent.action.TIME_SET"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_20

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-object/from16 v29, v0

    #calls: Lcom/zte/heartyservice/main/HeartyServiceApp;->checkAllTimerWhenAppStart()V
    invoke-static/range {v29 .. v29}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$1100(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    goto/16 :goto_0

    .line 2057
    :cond_20
    const-string v29, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 2058
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 2059
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->access$400()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/zte/heartyservice/indicator/Notifier;->update()V

    goto/16 :goto_0
.end method
