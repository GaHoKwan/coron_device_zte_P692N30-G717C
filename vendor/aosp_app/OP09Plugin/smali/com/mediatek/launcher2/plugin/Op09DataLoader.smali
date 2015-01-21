.class public Lcom/mediatek/launcher2/plugin/Op09DataLoader;
.super Lcom/mediatek/launcher2/ext/DefaultDataLoader;
.source "Op09DataLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Op09DataLoader"

.field private static final TAG_ALLAPPS:Ljava/lang/String; = "allapps"

.field private static final TAG_APPLICATION_ITEM:Ljava/lang/String; = "application_item"


# instance fields
.field private mCellIndex:I

.field private mContext:Landroid/content/Context;

.field private mEmptyCells:I

.field private mEmptyScreens:I

.field private mMaxIdInAllAppsList:J

.field private mMaxScreen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/mediatek/launcher2/ext/DefaultDataLoader;-><init>(Landroid/content/Context;)V

    .line 105
    iput-object p1, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private addItemToAllAppsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/ComponentName;)J
    .locals 12
    .parameter "db"
    .parameter "values"
    .parameter "packageManager"
    .parameter "intent"
    .parameter "componentName"

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 316
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {p3, v0, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 320
    :goto_0
    if-nez v1, :cond_0

    .line 321
    const-wide/16 v2, -0x1

    .line 362
    :goto_1
    return-wide v2

    .line 317
    :catch_0
    move-exception v4

    .line 318
    .local v4, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Op09DataLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not add such application: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v4           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    iget v9, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyScreens:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, screen:Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    invoke-direct {p0, v8}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->changeIndexToPositionX(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, x:Ljava/lang/String;
    iget v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    invoke-direct {p0, v8}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->changeIndexToPositionY(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    .local v7, y:Ljava/lang/String;
    const-string v8, "screen"

    invoke-virtual {p2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v8, "cellX"

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v8, "cellY"

    invoke-virtual {p2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-wide/16 v2, -0x1

    .line 334
    .local v2, id:J
    invoke-virtual {p0}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->generateNewIdForAllAppsList()J

    move-result-wide v2

    .line 335
    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    invoke-virtual/range {p4 .. p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 337
    const/high16 v8, 0x1020

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    const-string v8, "intent"

    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v8, "title"

    invoke-virtual {v1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v8, "itemType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string v8, "Op09DataLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Load app item: screen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",x = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",intent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",componentName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v8, "allapps"

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9, p2}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 350
    const-string v8, "Op09DataLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insert app item ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") to database failed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-wide/16 v2, -0x1

    goto/16 :goto_1

    .line 355
    :cond_1
    iget v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    invoke-direct {p0}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->getNumberOfIconsInOnePage()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_2

    .line 356
    const/4 v8, 0x0

    iput v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    .line 357
    iget v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    goto/16 :goto_1

    .line 359
    :cond_2
    iget v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    goto/16 :goto_1
.end method

.method private addItemToAllAppsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;)J
    .locals 26
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/content/ContentValues;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 198
    .local p6, componentNames:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/16 v22, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 199
    .local v18, screen:Ljava/lang/String;
    const/16 v22, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 200
    .local v20, x:Ljava/lang/String;
    const/16 v22, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 202
    .local v21, y:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 203
    .local v19, screenNumber:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 204
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    .line 205
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyScreens:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyScreens:I

    .line 209
    :cond_0
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    .line 217
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyScreens:I

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 218
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyScreens:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 222
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->changePositionToIndex(II)I

    move-result v13

    .line 223
    .local v13, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_4

    .line 224
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "addItemToAllAppsList: Wrong xml configuration! Index is smaller than empty cells: index="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", emptycells="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 210
    .end local v13           #index:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 212
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Wrong xml configuration! The screen number must be ascend: screen number is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", max screen is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 228
    .restart local v13       #index:I
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v23, v0

    sub-int v23, v13, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->changeIndexToPositionX(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 229
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v23, v0

    sub-int v23, v13, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->changeIndexToPositionY(I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 232
    .end local v13           #index:I
    :cond_5
    const-string v22, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v22, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v22, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-wide/16 v11, -0x1

    .line 237
    .local v11, id:J
    const/4 v14, 0x0

    .line 238
    .local v14, info:Landroid/content/pm/ActivityInfo;
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, packageName:Ljava/lang/String;
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 244
    .local v7, cmpName:Landroid/content/ComponentName;
    :try_start_0
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v8, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v7           #cmpName:Landroid/content/ComponentName;
    .local v8, cmpName:Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_1
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v14

    move-object v7, v8

    .line 259
    .end local v8           #cmpName:Landroid/content/ComponentName;
    .restart local v7       #cmpName:Landroid/content/ComponentName;
    :goto_0
    if-nez v14, :cond_6

    .line 260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    .line 261
    const-string v22, "Op09DataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t find the package info, index left is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-wide/16 v22, -0x1

    .line 305
    :goto_1
    return-wide v22

    .line 246
    :catch_0
    move-exception v15

    move-object v8, v7

    .line 247
    .end local v7           #cmpName:Landroid/content/ComponentName;
    .restart local v8       #cmpName:Landroid/content/ComponentName;
    .local v15, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const/16 v22, 0x1

    :try_start_2
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 250
    .local v17, packages:[Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    const/16 v22, 0x0

    aget-object v22, v17, v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    .end local v8           #cmpName:Landroid/content/ComponentName;
    .restart local v7       #cmpName:Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_3
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    goto :goto_0

    .line 253
    .end local v7           #cmpName:Landroid/content/ComponentName;
    .end local v17           #packages:[Ljava/lang/String;
    .restart local v8       #cmpName:Landroid/content/ComponentName;
    :catch_1
    move-exception v9

    move-object v7, v8

    .line 254
    .end local v8           #cmpName:Landroid/content/ComponentName;
    .restart local v7       #cmpName:Landroid/content/ComponentName;
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    const-string v22, "Op09DataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t find the activity info in PackageManager: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    .line 256
    const-wide/16 v22, -0x1

    goto :goto_1

    .line 264
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v10

    .line 266
    .local v10, hasComponent:Z
    const-string v22, "Op09DataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Load app item: screen = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",x = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",y = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",intent = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", id = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",pkgName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", clsName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",cmpName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",hasComponent = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",info = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-nez v10, :cond_7

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    .line 274
    const-string v22, "Op09DataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No such component, index left is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-wide/16 v22, -0x1

    goto/16 :goto_1

    .line 278
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->generateNewIdForAllAppsList()J

    move-result-wide v11

    .line 279
    const-string v22, "_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    const/high16 v22, 0x1020

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    const-string v22, "intent"

    const/16 v23, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v22, "title"

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v22, "itemType"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->changePositionToIndex(II)I

    move-result v5

    .line 288
    .local v5, cellIndex:I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->getNumberOfIconsInOnePage()I

    move-result v22

    move/from16 v0, v22

    if-lt v5, v0, :cond_8

    .line 289
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Wrong xml configuration! The cell number must be smaller than 16: cellIndex is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 293
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_9

    .line 294
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Wrong xml configuration! The cellX and cellY must be ascend and continous: cellIndex is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", last index is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 299
    :cond_9
    const-string v22, "allapps"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_a

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    .line 301
    const-string v22, "Op09DataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Insert app item ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") to database failed."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-wide/16 v22, -0x1

    goto/16 :goto_1

    .line 304
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    move-wide/from16 v22, v11

    .line 305
    goto/16 :goto_1

    .line 253
    .end local v5           #cellIndex:I
    .end local v10           #hasComponent:Z
    .restart local v15       #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v17       #packages:[Ljava/lang/String;
    :catch_2
    move-exception v9

    goto/16 :goto_3

    .line 246
    .end local v7           #cmpName:Landroid/content/ComponentName;
    .end local v15           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17           #packages:[Ljava/lang/String;
    .restart local v8       #cmpName:Landroid/content/ComponentName;
    :catch_3
    move-exception v15

    goto/16 :goto_2
.end method

.method private beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 369
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 373
    :cond_1
    if-eq v0, v2, :cond_2

    .line 374
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 378
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_3
    return-void
.end method

.method private changeIndexToPositionX(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 494
    sget v0, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    rem-int v0, p1, v0

    return v0
.end method

.method private changeIndexToPositionY(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 498
    sget v0, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    div-int v0, p1, v0

    return v0
.end method

.method private changePositionToIndex(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 502
    sget v1, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    mul-int/2addr v1, p2

    add-int v0, v1, p1

    .line 503
    .local v0, index:I
    return v0
.end method

.method private dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 475
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getNumberOfIconsInOnePage()I
    .locals 2

    .prologue
    .line 507
    sget v0, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    sget v1, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private loadDefaultAllAppsList(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 28
    .parameter "db"
    .parameter "allAppsListResourceId"

    .prologue
    .line 385
    const-string v2, "Op09DataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadDefaultAllAppsList begin: allAppsListResourceId = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxScreen:I

    .line 389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyScreens:I

    .line 390
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    .line 391
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mEmptyCells:I

    .line 393
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    .local v7, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 396
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    .line 400
    .local v15, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 401
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 402
    :cond_0
    const-string v2, "Op09DataLoader"

    const-string v3, "queryIntentActivities got null or zero!"

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v19, 0x0

    .line 469
    :goto_0
    return v19

    .line 405
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v8, componentNames:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 407
    .local v23, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 408
    .local v25, packageName:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 411
    .end local v23           #info:Landroid/content/pm/ResolveInfo;
    .end local v25           #packageName:Ljava/lang/String;
    :cond_2
    const-string v2, "Op09DataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadDefaultAllAppsList, query PMS got "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " apps, activityInfos = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v4, values:Landroid/content/ContentValues;
    const/16 v19, 0x0

    .line 417
    .local v19, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    .line 418
    .local v26, parser:Landroid/content/res/XmlResourceParser;
    invoke-static/range {v26 .. v26}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v16

    .line 419
    .local v16, attrs:Landroid/util/AttributeSet;
    const-string v2, "allapps"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 421
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    .line 424
    .local v17, depth:I
    const-wide/16 v21, -0x1

    .line 426
    .local v21, id:J
    :cond_3
    :goto_2
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    .local v27, type:I
    const/4 v2, 0x3

    move/from16 v0, v27

    if-ne v0, v2, :cond_4

    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_6

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_6

    .line 428
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v0, v2, :cond_3

    .line 432
    invoke-interface/range {v26 .. v26}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 433
    .local v24, name:Ljava/lang/String;
    const-string v2, "application_item"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 434
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/op09/plugin/R$styleable;->AllApps:[I

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, a:Landroid/content/res/TypedArray;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 436
    invoke-direct/range {v2 .. v8}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->addItemToAllAppsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;)J

    move-result-wide v21

    .line 437
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 439
    .end local v5           #a:Landroid/content/res/TypedArray;
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-ltz v2, :cond_3

    .line 440
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 443
    .end local v16           #attrs:Landroid/util/AttributeSet;
    .end local v17           #depth:I
    .end local v21           #id:J
    .end local v24           #name:Ljava/lang/String;
    .end local v26           #parser:Landroid/content/res/XmlResourceParser;
    .end local v27           #type:I
    :catch_0
    move-exception v18

    .line 444
    .local v18, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Op09DataLoader"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 451
    .end local v18           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_3
    const-string v2, "Op09DataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAllApps load i "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " components from xml file."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v2, "Op09DataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAllApps remains componentNames "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ",componentNames = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mCellIndex:I

    .line 456
    const-wide/16 v21, -0x1

    .line 457
    .restart local v21       #id:J
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 458
    .local v14, componentName:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-object v12, v6

    move-object v13, v7

    .line 459
    invoke-direct/range {v9 .. v14}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->addItemToAllAppsList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/ComponentName;)J

    move-result-wide v21

    .line 462
    const-wide/16 v2, 0x0

    cmp-long v2, v21, v2

    if-ltz v2, :cond_7

    .line 463
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 445
    .end local v14           #componentName:Landroid/content/ComponentName;
    .end local v21           #id:J
    :catch_1
    move-exception v18

    .line 446
    .local v18, e:Ljava/io/IOException;
    const-string v2, "Op09DataLoader"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 447
    .end local v18           #e:Ljava/io/IOException;
    :catch_2
    move-exception v18

    .line 448
    .local v18, e:Ljava/lang/RuntimeException;
    const-string v2, "Op09DataLoader"

    const-string v3, "Got exception parsing favorites."

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 467
    .end local v18           #e:Ljava/lang/RuntimeException;
    .restart local v21       #id:J
    :cond_8
    const-string v2, "Op09DataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAllApps load i "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " apks totally."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setFlagToLoadAllAppsLater()V
    .locals 5

    .prologue
    .line 484
    const-string v2, "Op09DataLoader"

    const-string v3, " setFlagToLoadAllAppsLater true."

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 487
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 488
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DB_CREATED_BUT_DEFAULT_ALLAPPS_NOT_LOADED"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    return-void
.end method


# virtual methods
.method public createAllAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 110
    const-string v0, "Op09DataLoader"

    const-string v1, "creating all apps table."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    .line 114
    const-string v0, "CREATE TABLE allapps (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,screen INTEGER,cellX INTEGER,cellY INTEGER,itemType INTEGER,visible INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->setFlagToLoadAllAppsLater()V

    .line 120
    return-void
.end method

.method public generateNewIdForAllAppsList()J
    .locals 4

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    .line 170
    const-string v0, "Op09DataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateNewIdMainmenu: mMaxIdMainmenu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-wide v0, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    return-wide v0
.end method

.method public initCellCount()V
    .locals 4

    .prologue
    .line 125
    iget-object v1, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    .line 128
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountY:I

    .line 131
    const-string v1, "Op09DataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " initCellCount AllApps.sAppsCellCountX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AllApps.sAppsCellCountY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public initializeMaxIdForAllAppsList(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, maxIdIndex:I
    const-wide/16 v1, -0x1

    .line 140
    .local v1, id:J
    const/4 v0, 0x0

    .line 143
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    const-string v4, "SELECT MAX(_id) FROM allapps"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_3

    .line 154
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 157
    :cond_3
    const-string v4, "Op09DataLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializeMaxIdForAllAppsList: id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-wide v1, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mMaxIdInAllAppsList:J

    .line 160
    return-void
.end method

.method public loadDefaultAllAppsIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 178
    const-string v3, "Op09DataLoader"

    const-string v4, "loadDefaultAllAppsIfNecessary."

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->mContext:Landroid/content/Context;

    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 182
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "DB_CREATED_BUT_DEFAULT_ALLAPPS_NOT_LOADED"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 184
    .local v1, loadDefault:Z
    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "DB_CREATED_BUT_DEFAULT_ALLAPPS_NOT_LOADED"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const v3, 0x7f040008

    invoke-direct {p0, p1, v3}, Lcom/mediatek/launcher2/plugin/Op09DataLoader;->loadDefaultAllAppsList(Landroid/database/sqlite/SQLiteDatabase;I)I

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method
