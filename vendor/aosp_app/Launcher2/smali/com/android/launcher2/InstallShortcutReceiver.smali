.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final EXTRA_SHORTCUT_ICON_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.ICON"

.field private static final EXTRA_SHORTCUT_ICON_RESOURCE_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.ICON_RESOURCE"

.field private static final EXTRA_SHORTCUT_INTENT_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.INTENT"

.field private static final EXTRA_SHORTCUT_NAME_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.NAME"

.field private static final EXTRA_SHORTCUT_STEP_NUMBER:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.stepnumber"

.field private static final EXTRA_SHORTCUT_TOTAL_NUMBER:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.totalnumber"

.field private static final INSTALL_SHORTCUT_ADD_FAIL:I = -0x3

.field private static final INSTALL_SHORTCUT_IS_DUPLICATE:I = -0x1

.field private static final INSTALL_SHORTCUT_NO_SPACE:I = -0x2

.field private static final INSTALL_SHORTCUT_SUCCESSFUL:I = 0x0

.field public static final NEW_APPS_LIST_KEY:Ljava/lang/String; = "apps.new.list"

.field public static final NEW_APPS_PAGE_KEY:Ljava/lang/String; = "apps.new.page"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x4b

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static mInstallQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseInstallQueue:Z

.field private static sItemsAddingToDatabase:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sName2IntentArrayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sName2StepNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sName2TotalNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 81
    return-void
.end method

.method private static clearMaps(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 266
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 373
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 374
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 375
    return-void
.end method

.method static enableInstallQueue()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 370
    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;Ljava/util/ArrayList;[II)Z
    .locals 18
    .parameter "context"
    .parameter
    .parameter "xy"
    .parameter "screen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;[II)Z"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    .line 702
    .local v4, xCount:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    .line 703
    .local v5, yCount:I
    filled-new-array {v4, v5}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Z

    .line 705
    .local v6, occupied:[[Z
    const/4 v10, 0x0

    .line 707
    .local v10, item:Lcom/android/launcher2/ItemInfo;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 708
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #item:Lcom/android/launcher2/ItemInfo;
    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 709
    .restart local v10       #item:Lcom/android/launcher2/ItemInfo;
    iget-wide v1, v10, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v1, v1, v16

    if-nez v1, :cond_1

    .line 710
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_1

    .line 711
    iget v7, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 712
    .local v7, cellX:I
    iget v8, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 713
    .local v8, cellY:I
    iget v12, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 714
    .local v12, spanX:I
    iget v13, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 715
    .local v13, spanY:I
    move v14, v7

    .local v14, x:I
    :goto_1
    if-ltz v14, :cond_1

    add-int v1, v7, v12

    if-ge v14, v1, :cond_1

    if-ge v14, v4, :cond_1

    .line 716
    move v15, v8

    .local v15, y:I
    :goto_2
    if-ltz v15, :cond_0

    add-int v1, v8, v13

    if-ge v15, v1, :cond_0

    if-ge v15, v5, :cond_0

    .line 717
    aget-object v1, v6, v14

    const/4 v2, 0x1

    aput-boolean v2, v1, v15

    .line 716
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 715
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 707
    .end local v7           #cellX:I
    .end local v8           #cellY:I
    .end local v12           #spanX:I
    .end local v13           #spanY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 726
    :cond_2
    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    .line 727
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #item:Lcom/android/launcher2/ItemInfo;
    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 728
    .restart local v10       #item:Lcom/android/launcher2/ItemInfo;
    iget-wide v1, v10, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v1, v1, v16

    if-nez v1, :cond_4

    .line 729
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->screen:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_4

    .line 730
    iget v7, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 731
    .restart local v7       #cellX:I
    iget v8, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 732
    .restart local v8       #cellY:I
    iget v12, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 733
    .restart local v12       #spanX:I
    iget v13, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 734
    .restart local v13       #spanY:I
    move v14, v7

    .restart local v14       #x:I
    :goto_4
    if-ltz v14, :cond_4

    add-int v1, v7, v12

    if-ge v14, v1, :cond_4

    if-ge v14, v4, :cond_4

    .line 735
    move v15, v8

    .restart local v15       #y:I
    :goto_5
    if-ltz v15, :cond_3

    add-int v1, v8, v13

    if-ge v15, v1, :cond_3

    if-ge v15, v5, :cond_3

    .line 736
    aget-object v1, v6, v14

    const/4 v2, 0x1

    aput-boolean v2, v1, v15

    .line 735
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 734
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 726
    .end local v7           #cellX:I
    .end local v8           #cellY:I
    .end local v12           #spanX:I
    .end local v13           #spanY:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 744
    :cond_5
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v1

    return v1
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 378
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 380
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;>;"
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 381
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 384
    :cond_0
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 387
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-static {p0, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 389
    const-string v3, "InstallShortcutReceiver"

    const-string v4, "flushInstallQueue: there is no space for shortcut. Stop right now."

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v0

    .line 393
    .local v2, skipCountNoSpace:I
    invoke-static {p0, v2}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;I)V

    .line 399
    .end local v2           #skipCountNoSpace:I
    :cond_1
    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 400
    return-void

    .line 386
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z
    .locals 20
    .parameter "context"
    .parameter "data"
    .parameter
    .parameter "name"
    .parameter "intent"
    .parameter "screen"
    .parameter "shortcutExists"
    .parameter "sharedPrefs"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "IZ",
            "Landroid/content/SharedPreferences;",
            "[I)Z"
        }
    .end annotation

    .prologue
    .line 627
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    const-string v4, "InstallShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installShortcut data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", items = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shortcutExists = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 633
    .local v19, tmpCoordinates:[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;Ljava/util/ArrayList;[II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 634
    if-eqz p4, :cond_7

    .line 635
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 636
    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :cond_0
    :goto_0
    const-string v4, "duplicate"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 647
    .local v14, duplicate:Z
    if-nez v14, :cond_1

    if-nez p6, :cond_5

    .line 651
    :cond_1
    const-string v4, "apps.new.page"

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 652
    .local v17, newAppsScreen:I
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 653
    .local v16, newApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, v17

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    .line 654
    const-string v4, "apps.new.list"

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v16

    .line 656
    :cond_2
    monitor-enter v16

    .line 657
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    move-object/from16 v18, v16

    .line 660
    .local v18, savedNewApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/launcher2/InstallShortcutReceiver$1;

    const-string v5, "setNewAppsThread"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    move/from16 v2, p5

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver$1;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/LauncherApplication;

    .line 671
    .local v13, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    const-wide/16 v7, -0x64

    const/4 v5, 0x0

    aget v10, v19, v5

    const/4 v5, 0x1

    aget v11, v19, v5

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v15

    .line 674
    .local v15, info:Lcom/android/launcher2/ShortcutInfo;
    if-nez v15, :cond_4

    .line 675
    const/4 v4, 0x0

    const/4 v5, -0x3

    aput v5, p8, v4

    .line 676
    const-string v4, "InstallShortcutReceiver"

    const-string v5, "InstallShortcut Failed: Due to ShortcutInfo is null"

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v4, 0x0

    .line 696
    .end local v13           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v14           #duplicate:Z
    .end local v15           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v16           #newApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #newAppsScreen:I
    .end local v18           #savedNewApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    return v4

    .line 637
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 640
    const/high16 v4, 0x1020

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 658
    .restart local v14       #duplicate:Z
    .restart local v16       #newApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17       #newAppsScreen:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 679
    .restart local v13       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v15       #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v18       #savedNewApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    sget-object v4, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, p8, v4

    .line 682
    const-string v4, "InstallShortcutReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstallShortcut Successfully: Install the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .end local v13           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v15           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v16           #newApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #newAppsScreen:I
    .end local v18           #savedNewApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 685
    :cond_5
    const-string v4, "InstallShortcutReceiver"

    const-string v5, "InstallShortcut Failed: Already Exist!"

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, p8, v4

    goto :goto_2

    .line 692
    .end local v14           #duplicate:Z
    :cond_6
    const-string v4, "InstallShortcutReceiver"

    const-string v5, "InstallShortcut Failed: No Space!"

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v4, 0x0

    const/4 v5, -0x2

    aput v5, p8, v4

    .line 696
    :cond_7
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static installShortcutArray(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "data"

    .prologue
    .line 280
    const-string v14, "com.android.launcher2.extra.shortcut.array.INTENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 281
    .local v7, intentArray:[Landroid/os/Parcelable;
    const-string v14, "com.android.launcher2.extra.shortcut.array.NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, nameArray:[Ljava/lang/String;
    const-string v14, "com.android.launcher2.extra.shortcut.array.ICON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 283
    .local v3, iconArray:[Landroid/os/Parcelable;
    const-string v14, "com.android.launcher2.extra.shortcut.array.ICON_RESOURCE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 286
    .local v4, iconResourceArray:[Landroid/os/Parcelable;
    array-length v13, v7

    .line 288
    .local v13, size:I
    array-length v14, v10

    if-eq v14, v13, :cond_1

    .line 290
    const-string v14, "InstallShortcutReceiver"

    const-string v15, "installShortcutArray: intent array and name array have different size!"

    invoke-static {v14, v15}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v13, :cond_4

    .line 297
    aget-object v14, v7, v2

    check-cast v14, Landroid/content/Intent;

    if-nez v14, :cond_2

    .line 299
    const-string v14, "InstallShortcutReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "installShortcutArray: intent is null with "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_2
    aget-object v14, v10, v2

    if-nez v14, :cond_3

    .line 306
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 307
    .local v12, pm:Landroid/content/pm/PackageManager;
    aget-object v14, v7, v2

    check-cast v14, Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 309
    .local v5, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5, v12}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v5           #info:Landroid/content/pm/ActivityInfo;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    :catch_0
    move-exception v11

    .line 311
    .local v11, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 316
    .end local v11           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    if-eqz v3, :cond_5

    array-length v14, v3

    if-eq v14, v13, :cond_5

    .line 318
    const-string v14, "InstallShortcutReceiver"

    const-string v15, "installShortcutArray: icon array is not null but the size not match!"

    invoke-static {v14, v15}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_5
    if-eqz v4, :cond_6

    array-length v14, v4

    if-eq v14, v13, :cond_6

    .line 326
    const-string v14, "InstallShortcutReceiver"

    const-string v15, "installShortcutArray: icon resource array is not null but the size not match!"

    invoke-static {v14, v15}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v14

    if-lez v14, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v14

    if-gtz v14, :cond_c

    :cond_7
    const/4 v8, 0x1

    .line 336
    .local v8, launcherNotLoaded:Z
    :goto_2
    new-array v1, v13, [Landroid/content/Intent;

    .line 337
    .local v1, dataArray:[Landroid/content/Intent;
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_d

    .line 338
    aget-object v9, v10, v2

    .line 339
    .local v9, name:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v6, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v6, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v14, "android.intent.extra.shortcut.INTENT"

    aget-object v15, v7, v2

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    if-eqz v3, :cond_8

    .line 343
    const-string v14, "android.intent.extra.shortcut.ICON"

    aget-object v15, v3, v2

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    :cond_8
    if-eqz v4, :cond_9

    .line 347
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    aget-object v15, v4, v2

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 350
    :cond_9
    sget-boolean v14, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v14, :cond_a

    if-eqz v8, :cond_b

    .line 352
    :cond_a
    const-string v14, "InstallShortcutReceiver"

    const-string v15, "installShortcutArray: Add into Install Queue!"

    invoke-static {v14, v15}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v5, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    aget-object v14, v7, v2

    check-cast v14, Landroid/content/Intent;

    invoke-direct {v5, v6, v9, v14}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 356
    .local v5, info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    sget-object v14, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v5           #info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    :cond_b
    aput-object v6, v1, v2

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 333
    .end local v1           #dataArray:[Landroid/content/Intent;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #launcherNotLoaded:Z
    .end local v9           #name:Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 361
    .restart local v1       #dataArray:[Landroid/content/Intent;
    .restart local v8       #launcherNotLoaded:Z
    :cond_d
    sget-boolean v14, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v14, :cond_0

    if-nez v8, :cond_0

    .line 363
    array-length v14, v1

    invoke-static {v14}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 364
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcutArray(Landroid/content/Context;[Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private static installShortcutSingle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 119
    const-string v7, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 120
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v7, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, name:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 129
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 130
    .local v0, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 136
    .end local v0           #info:Landroid/content/pm/ActivityInfo;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    const-string v7, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installShortcutSingle: data = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", intent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v7

    if-lez v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v7

    if-gtz v7, :cond_3

    :cond_2
    move v2, v6

    .line 144
    .local v2, launcherNotLoaded:Z
    :cond_3
    new-instance v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, v3, v1}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 145
    .local v0, info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    sget-boolean v7, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v7, :cond_4

    if-eqz v2, :cond_5

    .line 146
    :cond_4
    sget-object v6, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v6, "InstallShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installShortcutSingle: Add the install process into queue "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    .end local v0           #info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v2           #launcherNotLoaded:Z
    :catch_0
    move-exception v4

    .line 132
    .local v4, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 152
    .end local v4           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .restart local v2       #launcherNotLoaded:Z
    :cond_5
    invoke-static {v6}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 153
    invoke-static {p0, v0}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    goto/16 :goto_0
.end method

.method private static installShortcutStep(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "data"

    .prologue
    .line 166
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 167
    .local v7, intent:Landroid/content/Intent;
    if-nez v7, :cond_1

    .line 168
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: Intent is null!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v18, "com.android.launcher2.extra.shortcut.totalnumber"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 173
    .local v16, totalNumber:I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 174
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: total number is smaller than 1!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    const-string v18, "com.android.launcher2.extra.shortcut.stepnumber"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 179
    .local v15, stepNumber:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v15, v0, :cond_3

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 180
    :cond_3
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: Step number is wrong!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    const/4 v13, 0x0

    .line 187
    .local v13, pkgName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 188
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_5

    .line 189
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 190
    if-nez v13, :cond_5

    .line 192
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: Package name is null!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_5
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 199
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 200
    move/from16 v0, v16

    new-array v8, v0, [Landroid/content/Intent;

    .line 201
    .local v8, intentArray:[Landroid/content/Intent;
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v8           #intentArray:[Landroid/content/Intent;
    :cond_6
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 208
    move/from16 v0, v16

    new-array v8, v0, [Landroid/content/Intent;

    .line 209
    .restart local v8       #intentArray:[Landroid/content/Intent;
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v8           #intentArray:[Landroid/content/Intent;
    :cond_7
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/content/Intent;

    add-int/lit8 v19, v15, -0x1

    aput-object p1, v18, v19

    .line 213
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v18, "InstallShortcutReceiver"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "installShortcutStep: data = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", intent = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", total number = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", step = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v18

    if-lez v18, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v18

    if-gtz v18, :cond_b

    :cond_8
    const/4 v9, 0x1

    .line 225
    .local v9, launcherNotLoaded:Z
    :goto_1
    sget-boolean v18, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v18, :cond_9

    if-eqz v9, :cond_c

    .line 226
    :cond_9
    const-string v18, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, name:Ljava/lang/String;
    if-nez v11, :cond_a

    .line 229
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 230
    .local v14, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 231
    .local v6, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v6, v14}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 239
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_a
    new-instance v6, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v11, v7}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 240
    .local v6, info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 222
    .end local v6           #info:Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .end local v9           #launcherNotLoaded:Z
    .end local v11           #name:Ljava/lang/String;
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 232
    .restart local v9       #launcherNotLoaded:Z
    .restart local v11       #name:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 234
    .local v12, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: Activity name is not found!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 245
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: Hit the total and start to install shortcut array!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v18, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/Intent;

    .line 250
    .restart local v8       #intentArray:[Landroid/content/Intent;
    move-object v3, v8

    .local v3, arr$:[Landroid/content/Intent;
    array-length v10, v3

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v10, :cond_e

    aget-object v4, v3, v5

    .line 251
    .local v4, eachIntent:Landroid/content/Intent;
    if-nez v4, :cond_d

    .line 252
    const-string v18, "InstallShortcutReceiver"

    const-string v19, "installShortcutStep: IntentArray has null intent!"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {v13}, Lcom/android/launcher2/InstallShortcutReceiver;->clearMaps(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 258
    .end local v4           #eachIntent:Landroid/content/Intent;
    :cond_e
    array-length v0, v8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 259
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcutArray(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 260
    invoke-static {v13}, Lcom/android/launcher2/InstallShortcutReceiver;->clearMaps(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    .locals 17
    .parameter "context"
    .parameter "pendingInfo"

    .prologue
    .line 404
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v14

    .line 405
    .local v14, spKey:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 407
    .local v8, sp:Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 408
    .local v2, data:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 409
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    .line 412
    .local v4, name:Ljava/lang/String;
    const-string v1, "InstallShortcutReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processInstallShortcut pendingInfo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", intent = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", name = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    .line 419
    .local v10, app:Lcom/android/launcher2/LauncherApplication;
    const/4 v1, 0x1

    new-array v9, v1, [I

    const/4 v1, 0x0

    const/4 v15, 0x0

    aput v15, v9, v1

    .line 420
    .local v9, result:[I
    const/4 v11, 0x0

    .line 421
    .local v11, found:Z
    monitor-enter v10

    .line 422
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 423
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    .line 429
    .local v7, exists:Z
    const/4 v13, 0x2

    .line 430
    .local v13, screen:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v12, v1, :cond_0

    if-nez v11, :cond_0

    .line 431
    int-to-float v1, v12

    const/high16 v15, 0x4000

    div-float/2addr v1, v15

    const/high16 v15, 0x3f00

    add-float/2addr v1, v15

    float-to-int v15, v1

    rem-int/lit8 v1, v12, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    :goto_1
    mul-int/2addr v1, v15

    add-int/lit8 v6, v1, 0x2

    .line 432
    .local v6, si:I
    if-ltz v6, :cond_5

    const/4 v1, 0x5

    if-ge v6, v1, :cond_5

    move-object/from16 v1, p0

    .line 433
    invoke-static/range {v1 .. v9}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z

    move-result v11

    .line 435
    if-eqz v11, :cond_5

    .line 440
    .end local v6           #si:I
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x2

    if-ne v1, v15, :cond_6

    .line 446
    const v1, 0x7f0d0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 454
    :cond_1
    :goto_2
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x2

    if-eq v1, v15, :cond_2

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x1

    if-eq v1, v15, :cond_2

    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x3

    if-ne v1, v15, :cond_3

    .line 457
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    .line 461
    :cond_3
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x2

    if-eq v1, v15, :cond_7

    const/4 v1, 0x1

    :goto_3
    return v1

    .line 431
    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    .line 430
    .restart local v6       #si:I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 440
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .end local v6           #si:I
    .end local v7           #exists:Z
    .end local v12           #i:I
    .end local v13           #screen:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 448
    .restart local v3       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .restart local v7       #exists:Z
    .restart local v12       #i:I
    .restart local v13       #screen:I
    :cond_6
    const/4 v1, 0x0

    aget v1, v9, v1

    const/4 v15, -0x1

    if-ne v1, v15, :cond_1

    .line 449
    const v1, 0x7f0d0036

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 461
    :cond_7
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static processInstallShortcutArray(Landroid/content/Context;[Landroid/content/Intent;)V
    .locals 35
    .parameter "context"
    .parameter "dataArray"

    .prologue
    .line 472
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v29

    .line 473
    .local v29, spKey:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 475
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    .line 476
    .local v12, app:Lcom/android/launcher2/LauncherApplication;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v30, successArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v11, addFailArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v26, noSpaceArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v18, duplicateArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 483
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    const/16 v28, 0x0

    .line 485
    .local v28, skipCountNoSpace:I
    const/16 v22, 0x0

    .local v22, j:I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 486
    aget-object v3, p1, v22

    .line 487
    .local v3, data:Landroid/content/Intent;
    aget-object v2, p1, v22

    const-string v31, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 488
    .local v6, intent:Landroid/content/Intent;
    aget-object v2, p1, v22

    const-string v31, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 491
    .local v5, name:Ljava/lang/String;
    const-string v2, "InstallShortcutReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "processInstallShortcutArray: data = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", intent = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", name = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x1

    new-array v10, v2, [I

    const/4 v2, 0x0

    const/16 v31, 0x0

    aput v31, v10, v2

    .line 498
    .local v10, result:[I
    const/16 v19, 0x0

    .line 499
    .local v19, found:Z
    monitor-enter v12

    .line 500
    :try_start_0
    const-string v2, "duplicate"

    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 501
    .local v17, duplicate:Z
    const/4 v8, 0x0

    .line 502
    .local v8, exists:Z
    if-nez v17, :cond_0

    .line 503
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    .line 510
    :cond_0
    const/16 v27, 0x2

    .line 511
    .local v27, screen:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    const/16 v2, 0xb

    move/from16 v0, v20

    if-ge v0, v2, :cond_1

    if-nez v19, :cond_1

    .line 512
    move/from16 v0, v20

    int-to-float v2, v0

    const/high16 v31, 0x4000

    div-float v2, v2, v31

    const/high16 v31, 0x3f00

    add-float v2, v2, v31

    float-to-int v0, v2

    move/from16 v31, v0

    rem-int/lit8 v2, v20, 0x2

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v2, v0, :cond_6

    const/4 v2, 0x1

    :goto_2
    mul-int v2, v2, v31

    add-int/lit8 v7, v2, 0x2

    .line 513
    .local v7, si:I
    if-ltz v7, :cond_7

    const/4 v2, 0x5

    if-ge v7, v2, :cond_7

    move-object/from16 v2, p0

    .line 514
    invoke-static/range {v2 .. v10}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z

    move-result v19

    .line 516
    if-eqz v19, :cond_7

    .line 521
    .end local v7           #si:I
    :cond_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    const/4 v2, 0x0

    aget v2, v10, v2

    packed-switch v2, :pswitch_data_0

    .line 545
    :goto_3
    const-string v2, "InstallShortcutReceiver"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "processInstallShortcutArray: result is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget v32, v10, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/4 v2, 0x0

    aget v2, v10, v2

    const/16 v31, -0x2

    move/from16 v0, v31

    if-ne v2, v0, :cond_8

    .line 550
    const-string v2, "InstallShortcutReceiver"

    const-string v31, "processInstallShortcutArray: there is no space for shortcut. Stop right now."

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    sub-int v28, v2, v22

    .line 554
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;I)V

    .line 559
    .end local v3           #data:Landroid/content/Intent;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #exists:Z
    .end local v10           #result:[I
    .end local v17           #duplicate:Z
    .end local v19           #found:Z
    .end local v20           #i:I
    .end local v27           #screen:I
    :cond_2
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 560
    .local v16, countSuccess:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 561
    .local v13, countAddFail:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v15, v2, v28

    .line 562
    .local v15, countNoSpace:I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 565
    .local v14, countDuplicate:I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 566
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v24, messageSuccess:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, p1, v2

    const-string v31, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 569
    .local v25, nameStr:Ljava/lang/String;
    const v2, 0x7f0d0034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v25, v31, v32

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 579
    .end local v24           #messageSuccess:Ljava/lang/StringBuilder;
    .end local v25           #nameStr:Ljava/lang/String;
    :cond_3
    :goto_4
    add-int v2, v14, v13

    add-int/2addr v2, v15

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v2, v0, :cond_d

    .line 580
    const/16 v21, 0x0

    .line 581
    .local v21, index:I
    const/4 v2, 0x1

    if-ne v15, v2, :cond_a

    .line 582
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 588
    :cond_4
    :goto_5
    aget-object v2, p1, v21

    const-string v31, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 590
    .restart local v25       #nameStr:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v15, v2, :cond_c

    .line 591
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .local v23, messageFail:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v31, 0x7f0d0031

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, "\n"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const v2, 0x7f0d000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v25, v31, v32

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 621
    .end local v21           #index:I
    .end local v23           #messageFail:Ljava/lang/StringBuilder;
    .end local v25           #nameStr:Ljava/lang/String;
    :cond_5
    :goto_6
    return-void

    .line 512
    .end local v13           #countAddFail:I
    .end local v14           #countDuplicate:I
    .end local v15           #countNoSpace:I
    .end local v16           #countSuccess:I
    .restart local v3       #data:Landroid/content/Intent;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v8       #exists:Z
    .restart local v10       #result:[I
    .restart local v17       #duplicate:Z
    .restart local v19       #found:Z
    .restart local v20       #i:I
    .restart local v27       #screen:I
    :cond_6
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 511
    .restart local v7       #si:I
    :cond_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 521
    .end local v7           #si:I
    .end local v8           #exists:Z
    .end local v17           #duplicate:Z
    .end local v20           #i:I
    .end local v27           #screen:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 524
    .restart local v8       #exists:Z
    .restart local v17       #duplicate:Z
    .restart local v20       #i:I
    .restart local v27       #screen:I
    :pswitch_0
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 527
    :pswitch_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 532
    :pswitch_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 537
    :pswitch_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 485
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 572
    .end local v3           #data:Landroid/content/Intent;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #exists:Z
    .end local v10           #result:[I
    .end local v17           #duplicate:Z
    .end local v19           #found:Z
    .end local v20           #i:I
    .end local v27           #screen:I
    .restart local v13       #countAddFail:I
    .restart local v14       #countDuplicate:I
    .restart local v15       #countNoSpace:I
    .restart local v16       #countSuccess:I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_3

    .line 573
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .restart local v24       #messageSuccess:Ljava/lang/StringBuilder;
    const v2, 0x7f0d0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 583
    .end local v24           #messageSuccess:Ljava/lang/StringBuilder;
    .restart local v21       #index:I
    :cond_a
    const/4 v2, 0x1

    if-ne v14, v2, :cond_b

    .line 584
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto/16 :goto_5

    .line 585
    :cond_b
    const/4 v2, 0x1

    if-ne v13, v2, :cond_4

    .line 586
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    goto/16 :goto_5

    .line 596
    .restart local v25       #nameStr:Ljava/lang/String;
    :cond_c
    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    .line 597
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .restart local v23       #messageFail:Ljava/lang/StringBuilder;
    const v2, 0x7f0d0036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v25, v31, v32

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 602
    .end local v21           #index:I
    .end local v23           #messageFail:Ljava/lang/StringBuilder;
    .end local v25           #nameStr:Ljava/lang/String;
    :cond_d
    add-int v2, v14, v15

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v2, v0, :cond_5

    .line 604
    if-eqz v15, :cond_e

    .line 605
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .restart local v23       #messageFail:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v31, 0x7f0d0031

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, "\n"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const v2, 0x7f0d000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 612
    .end local v23           #messageFail:Ljava/lang/StringBuilder;
    :cond_e
    if-eqz v14, :cond_5

    .line 613
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .restart local v23       #messageFail:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v31, 0x7f0d000c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v31, "\n"

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 522
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "data"

    .prologue
    .line 95
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: received intent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v2, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    const-string v2, "com.android.launcher2.extra.shortcut.array.INTENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 105
    .local v0, intentArray:[Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 106
    :cond_1
    const-string v2, "com.android.launcher2.extra.shortcut.totalnumber"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, totalNumber:I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 108
    invoke-static {p1, p2}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcutSingle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1, p2}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcutStep(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v1           #totalNumber:I
    :cond_3
    invoke-static {p1, p2}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcutArray(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
