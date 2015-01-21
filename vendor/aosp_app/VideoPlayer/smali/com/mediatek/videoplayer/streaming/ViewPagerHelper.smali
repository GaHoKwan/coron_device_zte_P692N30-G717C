.class public Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"


# static fields
.field private static final LETV_ID:Ljava/lang/String; = "letv_id"

.field private static final TAG:Ljava/lang/String; = "ViewPagerHelper"


# instance fields
.field private mActivityManager:Landroid/app/LocalActivityManager;

.field private mContext:Landroid/content/Context;

.field private mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LocalActivityManager;)V
    .locals 3
    .parameter "context"
    .parameter "activityManager"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 58
    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 65
    new-instance v0, Lcom/mediatek/videoplayer/streaming/SettingsParser;

    invoke-direct {v0, p1}, Lcom/mediatek/videoplayer/streaming/SettingsParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/streaming/SettingsParser;->getSettings()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    .line 66
    const-string v0, "ViewPagerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPagerHelper() mSettings is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method private initLetvApplication()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    const-string v4, "com.mediatek.videoplayer.LetvApplication"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 110
    .local v2, myClass:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 111
    .local v3, obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "onCreate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 132
    return-void

    .line 113
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #myClass:Ljava/lang/Class;
    .end local v3           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ClassNotFoundException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "NoSuchMethodException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "InstantiationException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalArgumentException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "InvocationTargetException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private initVendorSdk(I)V
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v1, "letv_id"

    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->initLetvApplication()V

    .line 104
    :cond_0
    return-void
.end method

.method private reflectCallOnActivityFocus(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 6
    .parameter "activity"
    .parameter "methodName"
    .parameter "isFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    .local v0, method:Ljava/lang/reflect/Method;
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method


# virtual methods
.method public getTabCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabId(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "tabId"

    .prologue
    .line 78
    const/4 v1, -0x1

    .line 79
    .local v1, index:I
    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    .line 80
    .local v2, setting:Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getIndex()I

    move-result v1

    .line 84
    .end local v1           #index:I
    .end local v2           #setting:Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
    :cond_1
    return v1
.end method

.method public getTabName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getTabName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 5
    .parameter "index"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->initVendorSdk(I)V

    .line 93
    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    invoke-virtual {v3}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v4, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    invoke-virtual {v3}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, view:Landroid/view/View;
    return-object v2
.end method

.method public notifyActivities(I)V
    .locals 15
    .parameter "position"

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->getTabId(I)Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, tabId:Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    .line 137
    .local v7, setting:Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
    iget-object v11, p0, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v7}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 138
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 139
    const-string v11, "ViewPagerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "activity is null. Tab id is  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v0           #activity:Landroid/app/Activity;
    .end local v7           #setting:Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
    :cond_0
    return-void

    .line 142
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v7       #setting:Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
    :cond_1
    invoke-virtual {v7}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 143
    .local v5, isFocus:Z
    invoke-virtual {v7}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getCallBackFocus()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, method:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 146
    .local v8, start:J
    invoke-direct {p0, v0, v6, v5}, Lcom/mediatek/videoplayer/streaming/ViewPagerHelper;->reflectCallOnActivityFocus(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    .local v2, end:J
    const-string v11, "ViewPagerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Call onActivityFocus("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", cost:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 149
    .end local v2           #end:J
    .end local v8           #start:J
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IllegalArgumentException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 151
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NoSuchMethodException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 154
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IllegalAccessException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 156
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "InvocationTargetException e:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
