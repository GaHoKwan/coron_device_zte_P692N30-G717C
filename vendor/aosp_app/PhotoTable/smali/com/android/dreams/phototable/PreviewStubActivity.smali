.class public Lcom/android/dreams/phototable/PreviewStubActivity;
.super Landroid/app/Activity;
.source "PreviewStubActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCarousel:Lcom/android/dreams/phototable/PhotoCarousel;

.field private mTable:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/dreams/phototable/PreviewStubActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getObjectValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "cls"
    .parameter "fieldName"
    .parameter "targetObject"

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 131
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 132
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 133
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 145
    .end local v2           #result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 134
    .restart local v2       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getObjectValue NoSuchFieldException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getObjectValue IllegalArgumentException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getObjectValue IllegalAccessException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "cls"
    .parameter "obj"
    .parameter "fieldName"
    .parameter "value"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 113
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 114
    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/NoSuchFieldException;
    sget-object v2, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFieldValue NoSuchFieldException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFieldValue IllegalArgumentException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 121
    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/android/dreams/phototable/PreviewStubActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFieldValue IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 40
    .local v6, intent:Landroid/content/Intent;
    const-string v14, "dream"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, dreamType:Ljava/lang/String;
    const-string v14, "empty"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 42
    .local v11, showEmpty:Z
    if-eqz v3, :cond_0

    const-string v14, "flip"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 43
    :cond_0
    const-string v14, "FlipperDream"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-static {v14}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v10

    .line 46
    .local v10, settings:Lcom/android/dreams/phototable/AlbumSettings;
    invoke-virtual {v10}, Lcom/android/dreams/phototable/AlbumSettings;->isConfigured()Z

    move-result v14

    if-eqz v14, :cond_2

    if-nez v11, :cond_2

    .line 47
    const v14, 0x7f040002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    const v14, 0x7f0b0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dreams/phototable/PhotoCarousel;

    .line 49
    .local v2, carousel:Lcom/android/dreams/phototable/PhotoCarousel;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/dreams/phototable/PreviewStubActivity;->mCarousel:Lcom/android/dreams/phototable/PhotoCarousel;

    .line 50
    const-class v14, Lcom/android/dreams/phototable/PhotoCarousel;

    const-string v15, "mDropPeriod"

    const/16 v16, 0xbb8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v2, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-class v14, Lcom/android/dreams/phototable/PhotoCarousel;

    const-string v15, "mFlipDuration"

    const/16 v16, 0x3e8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v2, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v14, "badlimit"

    const/16 v15, 0xa

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 55
    .local v7, limit:I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mPhotoSource"

    invoke-static {v14, v15, v2}, Lcom/android/dreams/phototable/PreviewStubActivity;->getObjectValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dreams/phototable/PhotoSource;

    .line 57
    .local v8, photoSource:Lcom/android/dreams/phototable/PhotoSource;
    const-class v14, Lcom/android/dreams/phototable/PhotoSource;

    const-string v15, "mBadImageSkipLimit"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v8, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    .end local v2           #carousel:Lcom/android/dreams/phototable/PhotoCarousel;
    .end local v7           #limit:I
    .end local v8           #photoSource:Lcom/android/dreams/phototable/PhotoSource;
    .end local v10           #settings:Lcom/android/dreams/phototable/AlbumSettings;
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v10       #settings:Lcom/android/dreams/phototable/AlbumSettings;
    :cond_2
    const v14, 0x7f040001

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->setContentView(I)V

    .line 61
    const v14, 0x7f0b0006

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/BummerView;

    .line 62
    .local v1, bummer:Lcom/android/dreams/phototable/BummerView;
    const-class v14, Lcom/android/dreams/phototable/BummerView;

    const-string v15, "mDelay"

    const/16 v16, 0xbb8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v1, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-class v14, Lcom/android/dreams/phototable/BummerView;

    const-string v15, "mAnimTime"

    const/16 v16, 0x3e8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v1, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    .end local v1           #bummer:Lcom/android/dreams/phototable/BummerView;
    .end local v10           #settings:Lcom/android/dreams/phototable/AlbumSettings;
    :cond_3
    const-string v14, "table"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 66
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 67
    .local v5, inflater:Landroid/view/LayoutInflater;
    const-string v14, "PhotoTableDream"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-static {v14}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v10

    .line 70
    .restart local v10       #settings:Lcom/android/dreams/phototable/AlbumSettings;
    const/4 v13, 0x0

    .line 71
    .local v13, view:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/dreams/phototable/AlbumSettings;->isConfigured()Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v11, :cond_4

    .line 72
    const v14, 0x7f040006

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .end local v13           #view:Landroid/view/ViewGroup;
    check-cast v13, Landroid/view/ViewGroup;

    .line 73
    .restart local v13       #view:Landroid/view/ViewGroup;
    const v14, 0x7f0b000c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/dreams/phototable/PhotoTable;

    .line 74
    .local v12, table:Lcom/android/dreams/phototable/PhotoTable;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/dreams/phototable/PhotoTable;->setDream(Landroid/service/dreams/DreamService;)V

    .line 75
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/dreams/phototable/PreviewStubActivity;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 76
    const-string v14, "fast"

    const/16 v15, 0xfa0

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 77
    .local v4, fast:I
    const-class v14, Lcom/android/dreams/phototable/PhotoTable;

    const-string v15, "mFastDropPeriod"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v12, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const-string v14, "badlimit"

    const/16 v15, 0xa

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 79
    .restart local v7       #limit:I
    const-class v14, Lcom/android/dreams/phototable/PhotoTable;

    const-string v15, "mPhotoSource"

    invoke-static {v14, v15, v12}, Lcom/android/dreams/phototable/PreviewStubActivity;->getObjectValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dreams/phototable/PhotoSource;

    .line 81
    .restart local v8       #photoSource:Lcom/android/dreams/phototable/PhotoSource;
    const-class v14, Lcom/android/dreams/phototable/PhotoSource;

    const-string v15, "mBadImageSkipLimit"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v8, v15, v0}, Lcom/android/dreams/phototable/PreviewStubActivity;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .end local v4           #fast:I
    .end local v7           #limit:I
    .end local v8           #photoSource:Lcom/android/dreams/phototable/PhotoSource;
    .end local v12           #table:Lcom/android/dreams/phototable/PhotoTable;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 84
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 85
    .local v9, resources:Landroid/content/res/Resources;
    const v14, 0x7f040001

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .end local v13           #view:Landroid/view/ViewGroup;
    check-cast v13, Landroid/view/ViewGroup;

    .line 86
    .restart local v13       #view:Landroid/view/ViewGroup;
    const v14, 0x7f0b0006

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/BummerView;

    .line 87
    .restart local v1       #bummer:Lcom/android/dreams/phototable/BummerView;
    const/4 v14, 0x1

    const/16 v15, 0xbb8

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Lcom/android/dreams/phototable/BummerView;->setAnimationParams(ZII)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    const v2, 0x7f0b0007

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/PhotoCarousel;

    .line 96
    .local v0, carousel:Lcom/android/dreams/phototable/PhotoCarousel;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->removeTasks()V

    .line 99
    :cond_0
    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dreams/phototable/PhotoTable;

    .line 100
    .local v1, table:Lcom/android/dreams/phototable/PhotoTable;
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->removeTasks()V

    .line 103
    :cond_1
    iput-object v3, p0, Lcom/android/dreams/phototable/PreviewStubActivity;->mTable:Lcom/android/dreams/phototable/PhotoTable;

    .line 104
    iput-object v3, p0, Lcom/android/dreams/phototable/PreviewStubActivity;->mCarousel:Lcom/android/dreams/phototable/PhotoCarousel;

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method
