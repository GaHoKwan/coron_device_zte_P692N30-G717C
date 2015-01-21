.class public Lcom/zte/heartyservice/floater/DetailNetMonitor;
.super Landroid/app/Activity;
.source "DetailNetMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetMonitor"

.field protected static final WHAT:I = 0x123456


# instance fields
.field allAppData:F

.field closeButton:Landroid/widget/Button;

.field private flowInfoStr:Ljava/lang/String;

.field private isRun:Z

.field isScreenOn:Z

.field mClipImageView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field mLayout:Landroid/widget/LinearLayout;

.field private mLockUnlockReceiver1:Landroid/content/BroadcastReceiver;

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field netFlow:Landroid/widget/TextView;

.field netFlowChar:Landroid/widget/TextView;

.field okButton:Landroid/widget/Button;

.field private oldtime:J

.field totalData:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->map:Ljava/util/Map;

    .line 49
    iput-boolean v3, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->oldtime:J

    .line 51
    iput-boolean v3, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isScreenOn:Z

    .line 53
    iput v2, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->totalData:F

    .line 54
    iput v2, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->allAppData:F

    .line 56
    new-instance v0, Lcom/zte/heartyservice/floater/DetailNetMonitor$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor$1;-><init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V

    iput-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLockUnlockReceiver1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/floater/DetailNetMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/floater/DetailNetMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z

    return p1
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/floater/DetailNetMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->oldtime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/floater/DetailNetMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/floater/DetailNetMonitor;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->flowInfoStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/floater/DetailNetMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->flowInfoStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->updateAppNetFlow()V

    return-void
.end method

.method private updateAppNetFlow()V
    .locals 40

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, appCount:I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v23

    .line 251
    .local v23, nowtime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->oldtime:J

    move-wide/from16 v35, v0

    sub-long v10, v23, v35

    .line 252
    .local v10, duration:J
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "duration ---------------------"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/zte/heartyservice/floater/DetailNetMonitor;->oldtime:J

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    const/16 v36, 0x3000

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v26

    .line 255
    .local v26, packinfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 256
    .local v14, info:Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v28, v0

    .line 257
    .local v28, premissions:[Ljava/lang/String;
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v35, v0

    if-lez v35, :cond_0

    .line 258
    move-object/from16 v4, v28

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_0

    aget-object v27, v4, v13

    .line 259
    .local v27, premission:Ljava/lang/String;
    const-string v35, "android.permission.INTERNET"

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 261
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v34, v0

    .line 262
    .local v34, uid:I
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v30

    .line 263
    .local v30, rx:J
    invoke-static/range {v34 .. v34}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v32

    .line 264
    .local v32, tx:J
    const-wide/16 v35, 0x0

    cmp-long v35, v30, v35

    if-gtz v35, :cond_2

    const-wide/16 v35, 0x0

    cmp-long v35, v32, v35

    if-gtz v35, :cond_2

    .line 265
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "no data"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v30           #rx:J
    .end local v32           #tx:J
    .end local v34           #uid:I
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 267
    .restart local v30       #rx:J
    .restart local v32       #tx:J
    .restart local v34       #uid:I
    :cond_2
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "data flow:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "download"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "upload"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->map:Ljava/util/Map;

    move-object/from16 v35, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 273
    const-string v35, "NetMonitor"

    const-string v36, " containskey========================"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->map:Ljava/util/Map;

    move-object/from16 v35, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    .line 275
    .local v25, oldValue:Ljava/lang/Long;
    add-long v35, v30, v32

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    sub-long v6, v35, v37

    .line 277
    .local v6, diff:J
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " containskey===========diff=========="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-wide/16 v35, 0x0

    cmp-long v35, v6, v35

    if-lez v35, :cond_3

    .line 282
    long-to-float v0, v6

    move/from16 v35, v0

    const/high16 v36, 0x4480

    div-float v35, v35, v36

    long-to-float v0, v10

    move/from16 v36, v0

    div-float v35, v35, v36

    const v36, 0x4e6e6b28

    mul-float v8, v35, v36

    .line 283
    .local v8, diff_f:F
    move-object/from16 v0, p0

    iput v8, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->allAppData:F

    .line 284
    const-string v9, "0.0K/S"

    .line 286
    .local v9, diff_s:Ljava/lang/String;
    invoke-static {v8}, Lcom/zte/heartyservice/floater/NetworkUtil;->formatString(F)Ljava/lang/String;

    move-result-object v9

    .line 289
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 290
    .local v22, mlinearlayout:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0b012d

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0b012d

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move-object/from16 v0, v17

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v17, mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    const/16 v35, 0x11

    move/from16 v0, v35

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 295
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 296
    .local v16, mImageView:Landroid/widget/ImageView;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v35, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    sget-object v35, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 301
    .local v21, mTextView:Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/high16 v35, 0x4140

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 305
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 308
    .local v18, mLayoutParams1:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v35, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    add-int/lit8 v3, v3, 0x1

    .line 315
    .end local v8           #diff_f:F
    .end local v9           #diff_s:Ljava/lang/String;
    .end local v16           #mImageView:Landroid/widget/ImageView;
    .end local v17           #mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v18           #mLayoutParams1:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #mTextView:Landroid/widget/TextView;
    .end local v22           #mlinearlayout:Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->map:Ljava/util/Map;

    move-object/from16 v35, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    new-instance v37, Ljava/lang/Long;

    add-long v38, v30, v32

    invoke-direct/range {v37 .. v39}, Ljava/lang/Long;-><init>(J)V

    invoke-interface/range {v35 .. v37}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 326
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #diff:J
    .end local v13           #i$:I
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v15           #len$:I
    .end local v25           #oldValue:Ljava/lang/Long;
    .end local v27           #premission:Ljava/lang/String;
    .end local v28           #premissions:[Ljava/lang/String;
    .end local v30           #rx:J
    .end local v32           #tx:J
    .end local v34           #uid:I
    :cond_4
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " totalData = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->totalData:F

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v35, "NetMonitor"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " allAppData= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->allAppData:F

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->totalData:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->allAppData:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-lez v35, :cond_5

    .line 330
    const-string v9, "0.0K/S"

    .line 332
    .restart local v9       #diff_s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->totalData:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->allAppData:F

    move/from16 v36, v0

    sub-float v35, v35, v36

    invoke-static/range {v35 .. v35}, Lcom/zte/heartyservice/floater/NetworkUtil;->formatString(F)Ljava/lang/String;

    move-result-object v9

    .line 335
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 336
    .restart local v22       #mlinearlayout:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0b012d

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0b012d

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move-object/from16 v0, v17

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 339
    .restart local v17       #mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v35, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 340
    const/16 v35, 0x11

    move/from16 v0, v35

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 341
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 342
    .restart local v16       #mImageView:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0202b7

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    sget-object v35, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 344
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 347
    .restart local v21       #mTextView:Landroid/widget/TextView;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .restart local v18       #mLayoutParams1:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v35, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 351
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/high16 v35, 0x4140

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 354
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 360
    .end local v9           #diff_s:Ljava/lang/String;
    .end local v16           #mImageView:Landroid/widget/ImageView;
    .end local v17           #mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v18           #mLayoutParams1:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #mTextView:Landroid/widget/TextView;
    .end local v22           #mlinearlayout:Landroid/widget/LinearLayout;
    :cond_5
    if-nez v3, :cond_6

    .line 362
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 363
    .local v19, mNothing:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0549

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, -0x1

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 367
    .local v5, contentLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v35, 0x11

    move/from16 v0, v35

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 369
    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 370
    .local v20, mRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v29, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v35, -0x2

    const/16 v36, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 373
    .local v29, relaParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v35, 0xd

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .end local v5           #contentLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #mNothing:Landroid/widget/TextView;
    .end local v20           #mRelativeLayout:Landroid/widget/RelativeLayout;
    .end local v29           #relaParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v16, 0x7f030033

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->setContentView(I)V

    .line 82
    const v16, 0x7f0e00a3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->closeButton:Landroid/widget/Button;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->closeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a054a

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->closeButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    new-instance v17, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor$2;-><init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v16, 0x7f0e00a4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->okButton:Landroid/widget/Button;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->okButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a00ea

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->okButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    new-instance v17, Lcom/zte/heartyservice/floater/DetailNetMonitor$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor$3;-><init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v3, filter1:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v16, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const v16, 0x7f0e009e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlow:Landroid/widget/TextView;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlow:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const-string v17, "0.0K/S "

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v16, 0x7f0e00a0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mClipImageView:Landroid/widget/ImageView;

    .line 114
    const v16, 0x7f0e00a1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlowChar:Landroid/widget/TextView;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v15

    .line 117
    .local v15, util:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-virtual {v15}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed()D

    move-result-wide v13

    .line 119
    .local v13, todayUsed:D
    const-wide/16 v10, 0x0

    .line 120
    .local v10, monthUsed:D
    const-wide/16 v8, 0x0

    .line 121
    .local v8, monthThreshold:J
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 123
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/msim/SimManager;->getDataSim()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v10

    .line 124
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/msim/SimManager;->getDataSim()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v8

    .line 130
    :goto_0
    long-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v16, v16, v10

    const-wide/high16 v18, 0x4059

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059

    div-double v6, v16, v18

    .line 131
    .local v6, monthNoUsed:D
    const-string v16, "NetMonitor"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " monthThreshold ================="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-lez v16, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlowChar:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0578

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "M/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0579

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "M"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mClipImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    long-to-double v0, v8

    move-wide/from16 v17, v0

    div-double v17, v10, v17

    const-wide v19, 0x40c3880000000000L

    mul-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 143
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mClipImageView:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlowChar:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :cond_0
    const v16, 0x7f0e009c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLayout:Landroid/widget/LinearLayout;

    .line 151
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v4, mNothing:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0549

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v2, contentLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v16, 0x11

    move/from16 v0, v16

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 158
    new-instance v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 159
    .local v5, mRelativeLayout:Landroid/widget/RelativeLayout;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v12, relaParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    invoke-virtual {v5, v4, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v16, Ljava/lang/Thread;

    new-instance v17, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor$4;-><init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V

    invoke-direct/range {v16 .. v17}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 216
    new-instance v16, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;-><init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mHandler:Landroid/os/Handler;

    .line 244
    return-void

    .line 127
    .end local v2           #contentLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #mNothing:Landroid/widget/TextView;
    .end local v5           #mRelativeLayout:Landroid/widget/RelativeLayout;
    .end local v6           #monthNoUsed:D
    .end local v12           #relaParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v15}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed()D

    move-result-wide v10

    .line 128
    invoke-virtual {v15}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold()J

    move-result-wide v8

    goto/16 :goto_0

    .line 138
    .restart local v6       #monthNoUsed:D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlowChar:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a066c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->isRun:Z

    .line 398
    const-string v0, "NetMonitor"

    const-string v1, "start onDestroy~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 390
    const-string v0, "NetMonitor"

    const-string v1, "start onPause~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 384
    const-string v0, "NetMonitor"

    const-string v1, "start onResume~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method
