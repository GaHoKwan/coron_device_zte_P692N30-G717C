.class final Ltmsdkobf/ll;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private CB:Ltmsdkobf/li;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "WupSessionManagerImpl"

    sput-object v0, Ltmsdkobf/ll;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method

.method private r(Landroid/content/Context;)Ltmsdkobf/j;
    .locals 21
    .parameter "context"

    .prologue
    .line 1036
    new-instance v6, Ltmsdkobf/j;

    invoke-direct {v6}, Ltmsdkobf/j;-><init>()V

    .line 1037
    .local v6, channelInfo:Ltmsdkobf/j;
    const-string v18, "channel"

    invoke-static/range {v18 .. v18}, Ltmsdk/common/TMSDKContext;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ltmsdkobf/j;->k(Ljava/lang/String;)V

    .line 1038
    const-string v18, "product"

    invoke-static/range {v18 .. v18}, Ltmsdk/common/TMSDKContext;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ltmsdkobf/j;->f(I)V

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1040
    .local v11, packageManager:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ltmsdkobf/j;->i(I)V

    .line 1052
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2000

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1053
    .local v4, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 1054
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    .line 1055
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ltmsdkobf/j;->i(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1064
    .end local v4           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.tencent.qqpimsecure"

    aput-object v19, v12, v18

    const/16 v18, 0x1

    const-string v19, "com.tencent.qq"

    aput-object v19, v12, v18

    const/16 v18, 0x2

    const-string v19, "com.qzone"

    aput-object v19, v12, v18

    const/16 v18, 0x3

    const-string v19, "com.tencent.qqphonebook"

    aput-object v19, v12, v18

    const/16 v18, 0x4

    const-string v19, "com.tencent.mtt"

    aput-object v19, v12, v18

    const/16 v18, 0x5

    const-string v19, "com.tencent.WBlog"

    aput-object v19, v12, v18

    const/16 v18, 0x6

    const-string v19, "com.tencent.qqgame.hallinstaller.hall"

    aput-object v19, v12, v18

    .line 1066
    .local v12, packageNames:[Ljava/lang/String;
    const-class v18, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v16

    check-cast v16, Ltmsdk/common/module/software/SoftwareManager;

    .line 1067
    .local v16, softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v15, softKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bt;>;"
    move-object v5, v12

    .local v5, arr$:[Ljava/lang/String;
    array-length v10, v5

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_5

    aget-object v13, v5, v8

    .line 1069
    .local v13, pkgName:Ljava/lang/String;
    const/16 v18, 0x19

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v3

    .line 1071
    .local v3, appEntity:Ltmsdk/common/module/software/AppEntity;
    if-eqz v3, :cond_2

    .line 1072
    const-string v18, "isSystem"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 1073
    .local v9, isSys:Ljava/lang/Boolean;
    const-string v18, "versionCode"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 1075
    .local v17, versionCode:Ljava/lang/Integer;
    new-instance v14, Ltmsdkobf/bt;

    invoke-direct {v14}, Ltmsdkobf/bt;-><init>()V

    .line 1076
    .local v14, softKey:Ltmsdkobf/bt;
    const-string v18, "signatureCermMD5"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Ltmsdkobf/bt;->ec:Ljava/lang/String;

    .line 1077
    const-string v18, "pkgName"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Ltmsdkobf/bt;->gX:Ljava/lang/String;

    .line 1078
    const-string v18, "appName"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Ltmsdkobf/bt;->name:Ljava/lang/String;

    .line 1079
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_3

    :cond_1
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    iput v0, v14, Ltmsdkobf/bt;->ab:I

    .line 1080
    const-string v18, "version"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Ltmsdkobf/bt;->version:Ljava/lang/String;

    .line 1081
    if-nez v17, :cond_4

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    iput v0, v14, Ltmsdkobf/bt;->gZ:I

    .line 1082
    const-string v18, ""

    move-object/from16 v0, v18

    iput-object v0, v14, Ltmsdkobf/bt;->gY:Ljava/lang/String;

    .line 1083
    const-string v18, "signatureCermMD5"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ltmsdk/common/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Ltmsdkobf/bt;->dF:Ljava/lang/String;

    .line 1085
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    .end local v9           #isSys:Ljava/lang/Boolean;
    .end local v14           #softKey:Ltmsdkobf/bt;
    .end local v17           #versionCode:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1058
    .end local v3           #appEntity:Ltmsdk/common/module/software/AppEntity;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #packageNames:[Ljava/lang/String;
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v15           #softKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bt;>;"
    .end local v16           #softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    :catch_0
    move-exception v7

    .line 1059
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1079
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appEntity:Ltmsdk/common/module/software/AppEntity;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #isSys:Ljava/lang/Boolean;
    .restart local v10       #len$:I
    .restart local v12       #packageNames:[Ljava/lang/String;
    .restart local v13       #pkgName:Ljava/lang/String;
    .restart local v14       #softKey:Ltmsdkobf/bt;
    .restart local v15       #softKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bt;>;"
    .restart local v16       #softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    .restart local v17       #versionCode:Ljava/lang/Integer;
    :cond_3
    const/16 v18, 0x1

    goto :goto_2

    .line 1081
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    goto :goto_3

    .line 1088
    .end local v3           #appEntity:Ltmsdk/common/module/software/AppEntity;
    .end local v9           #isSys:Ljava/lang/Boolean;
    .end local v13           #pkgName:Ljava/lang/String;
    .end local v14           #softKey:Ltmsdkobf/bt;
    .end local v17           #versionCode:Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v6, v15}, Ltmsdkobf/j;->b(Ljava/util/ArrayList;)V

    .line 1090
    return-object v6

    .line 1060
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #packageNames:[Ljava/lang/String;
    .end local v15           #softKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/bt;>;"
    .end local v16           #softwareManager:Ltmsdk/common/module/software/SoftwareManager;
    :catch_1
    move-exception v18

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 10
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/ch;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, checkRst:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/ch;>;"
    const/4 v6, 0x0

    .line 792
    const/16 v7, 0x11

    invoke-static {v7}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v5

    .line 793
    .local v5, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v3, Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 794
    .local v3, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "phonetype"

    iget-object v8, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v8}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v7, "userinfo"

    iget-object v8, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v8}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    new-instance v2, Ltmsdkobf/cg;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {v2, p1, v7, v6, v8}, Ltmsdkobf/cg;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 797
    .local v2, req:Ltmsdkobf/cg;
    const-string v7, "checkrequest"

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iput-object v3, v5, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 800
    const/16 v0, -0x1770

    .line 801
    .local v0, err:I
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7, v5}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    .end local v0           #err:I
    :goto_0
    return v0

    .line 805
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/ch;

    invoke-direct {v1}, Ltmsdkobf/ch;-><init>()V

    .line 806
    .local v1, proxy:Ltmsdkobf/ch;
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v5, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "checkresponse"

    invoke-virtual {v7, v8, v9, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 807
    .local v4, rsp:Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 808
    check-cast v4, Ltmsdkobf/ch;

    .end local v4           #rsp:Ljava/lang/Object;
    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v6

    .line 811
    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/r;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/s;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/cb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, confInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/r;>;"
    .local p2, confSrcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/s;>;"
    .local p3, tipinfo:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cb;>;"
    const/16 v6, 0xb

    invoke-static {v6}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v5

    .line 659
    .local v5, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v2, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 660
    .local v2, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "phonetype"

    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string v6, "userinfo"

    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v6, "vecinfo"

    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    iput-object v2, v5, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 665
    const/16 v0, -0x1770

    .line 666
    .local v0, err:I
    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6, v5}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    .end local v0           #err:I
    :goto_0
    return v0

    .line 670
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v1, proxy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/s;>;"
    new-instance v6, Ltmsdkobf/s;

    invoke-direct {v6}, Ltmsdkobf/s;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v7, v5, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v8, "vecsrc"

    invoke-virtual {v6, v7, v8, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 673
    .local v3, retConfSrcs:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 674
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 675
    check-cast v3, Ljava/util/Collection;

    .end local v3           #retConfSrcs:Ljava/lang/Object;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 678
    :cond_1
    if-eqz p3, :cond_2

    .line 679
    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v7, v5, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v8, "tipinfo"

    new-instance v9, Ltmsdkobf/cb;

    invoke-direct {v9}, Ltmsdkobf/cb;-><init>()V

    invoke-virtual {v6, v7, v8, v9}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 680
    .local v4, tempTipinfo:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 681
    check-cast v4, Ltmsdkobf/cb;

    .end local v4           #tempTipinfo:Ljava/lang/Object;
    invoke-virtual {p3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 684
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/ArrayList;Z)I
    .locals 8
    .parameter
    .parameter
    .parameter "needCheckWifi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/br;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/d;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, softFeatures:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/br;>;"
    .local p2, analyseInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    const/4 v5, 0x6

    invoke-static {v5}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v4

    .line 422
    .local v4, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 423
    .local v2, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "phonetype"

    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v5, "userinfo"

    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v5, "vecSoftFeature"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iput-object v2, v4, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 427
    iput-boolean p3, v4, Ltmsdkobf/lj;->Cz:Z

    .line 429
    const/16 v0, -0x1770

    .line 430
    .local v0, err:I
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5, v4}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    .end local v0           #err:I
    :goto_0
    return v0

    .line 434
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v1, proxy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/d;>;"
    new-instance v5, Ltmsdkobf/d;

    invoke-direct {v5}, Ltmsdkobf/d;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v6, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v7, "vecAnalyseInfo"

    invoke-virtual {v5, v6, v7, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 437
    .local v3, retAnalyseInfos:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 438
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 439
    check-cast v3, Ljava/util/Collection;

    .end local v3           #retAnalyseInfos:Ljava/lang/Object;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/at;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 825
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, rsptemp:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/at;>;"
    const/16 v10, 0x12

    invoke-static {v10}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v9

    .line 826
    .local v9, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v7, Ljava/util/HashMap;

    const/4 v10, 0x3

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 827
    .local v7, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "phonetype"

    iget-object v11, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v11}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string v10, "userinfo"

    iget-object v11, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v11}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 830
    .local v3, len:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 831
    .local v6, reqs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cg;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 832
    new-instance v11, Ltmsdkobf/cg;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-direct {v11, v10, v12, v13, v14}, Ltmsdkobf/cg;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    :cond_0
    new-instance v5, Ltmsdkobf/ar;

    invoke-direct {v5, v6}, Ltmsdkobf/ar;-><init>(Ljava/util/ArrayList;)V

    .line 835
    .local v5, reqTemplate:Ltmsdkobf/ar;
    const-string v10, "reqtemp"

    invoke-virtual {v7, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iput-object v7, v9, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 838
    const/16 v1, -0x1770

    .line 839
    .local v1, err:I
    iget-object v10, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v10, v9}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    .end local v1           #err:I
    :goto_1
    return v1

    .line 843
    .restart local v1       #err:I
    :cond_1
    new-instance v4, Ltmsdkobf/at;

    invoke-direct {v4}, Ltmsdkobf/at;-><init>()V

    .line 844
    .local v4, proxy:Ltmsdkobf/at;
    iget-object v10, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v11, v9, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v12, "rsptemp"

    invoke-virtual {v10, v11, v12, v4}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 845
    .local v8, rsp:Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 846
    check-cast v8, Ltmsdkobf/at;

    .end local v8           #rsp:Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 849
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;Z)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter "needCheckWifi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bt;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bx;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/ak;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, softKeys:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bt;>;"
    .local p2, serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bx;>;"
    .local p3, softInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ak;>;"
    const/4 v7, 0x5

    invoke-static {v7}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v6

    .line 311
    .local v6, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v3, Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 312
    .local v3, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "phonetype"

    iget-object v8, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v8}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v7, "userinfo"

    iget-object v8, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v8}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v7, "vecsoftkey"

    invoke-virtual {v3, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iput-object v3, v6, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 316
    iput-boolean p4, v6, Ltmsdkobf/lj;->Cz:Z

    .line 318
    const/16 v0, -0x1770

    .line 319
    .local v0, err:I
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7, v6}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    .end local v0           #err:I
    :goto_0
    return v0

    .line 323
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/bx;

    invoke-direct {v1}, Ltmsdkobf/bx;-><init>()V

    .line 324
    .local v1, proxy:Ltmsdkobf/bx;
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v6, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "serverinfo"

    invoke-virtual {v7, v8, v9, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 325
    .local v5, tempInfo:Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 326
    check-cast v5, Ltmsdkobf/bx;

    .end local v5           #tempInfo:Ljava/lang/Object;
    invoke-virtual {p2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 329
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, proxy2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ak;>;"
    new-instance v7, Ltmsdkobf/ak;

    invoke-direct {v7}, Ltmsdkobf/ak;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v6, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "softs"

    invoke-virtual {v7, v8, v9, v2}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 332
    .local v4, retSoftInfos:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 333
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 334
    check-cast v4, Ljava/util/Collection;

    .end local v4           #retSoftInfos:Ljava/lang/Object;
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bn;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, cmdInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bn;>;"
    const-string v4, "Chord"

    const-string v5, "WupSessionManagerImpl getMainTips()"

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 963
    const/16 v4, 0x3e7

    invoke-static {v4}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v3

    .line 964
    .local v3, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 965
    .local v2, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "phonetype"

    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string v4, "userinfo"

    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v4, "reqinfo"

    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5}, Ltmsdkobf/li;->gm()Ltmsdkobf/aj;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iput-object v2, v3, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 970
    const/16 v1, -0x1770

    .line 971
    .local v1, err:I
    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4, v3}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    .end local v1           #err:I
    :goto_0
    return v1

    .line 975
    .restart local v1       #err:I
    :cond_0
    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v5, v3, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v6, "cmdinfo"

    new-instance v7, Ltmsdkobf/bn;

    invoke-direct {v7}, Ltmsdkobf/bn;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 977
    .local v0, cmdInfo:Ljava/lang/Object;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 978
    check-cast v4, Ltmsdkobf/bn;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 980
    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    check-cast v0, Ltmsdkobf/bn;

    .end local v0           #cmdInfo:Ljava/lang/Object;
    invoke-virtual {v0}, Ltmsdkobf/bn;->y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltmsdkobf/li;->cz(Ljava/lang/String;)V

    .line 982
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Ltmsdkobf/ai;Ltmsdkobf/ah;)I
    .locals 10
    .parameter "linceneninfo"
    .parameter "result"

    .prologue
    const/4 v5, -0x2

    .line 890
    const/16 v6, 0x14

    invoke-static {v6}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v4

    .line 891
    .local v4, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 892
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "phonetype"

    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string v6, "userinfo"

    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string v6, "licinfo"

    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iput-object v1, v4, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 897
    const/16 v0, -0x1770

    .line 898
    .local v0, err:I
    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6, v4}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    .end local v0           #err:I
    :goto_0
    return v0

    .line 902
    .restart local v0       #err:I
    :cond_0
    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v7, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v8, "outinfo"

    new-instance v9, Ltmsdkobf/as;

    invoke-direct {v9}, Ltmsdkobf/as;-><init>()V

    invoke-virtual {v6, v7, v8, v9}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 903
    .local v2, retInfo:Ljava/lang/Object;
    if-nez v2, :cond_1

    move v0, v5

    .line 904
    goto :goto_0

    .line 905
    :cond_1
    check-cast v2, Ltmsdkobf/as;

    .end local v2           #retInfo:Ljava/lang/Object;
    iput-object v2, p2, Ltmsdkobf/ah;->dG:Ltmsdkobf/as;

    .line 906
    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v7, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 907
    .local v3, returnValue:Ljava/lang/Object;
    if-nez v3, :cond_2

    move v0, v5

    .line 908
    goto :goto_0

    .line 909
    :cond_2
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #returnValue:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public a(Ltmsdkobf/az;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .parameter "queryParam"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/az;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 563
    .local p2, queryResultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bb;>;"
    const/16 v5, 0x10

    invoke-static {v5}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v4

    .line 564
    .local v4, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v3, Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 565
    .local v3, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "queryParam"

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iput-object v3, v4, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 568
    const/16 v0, -0x1770

    .line 569
    .local v0, err:I
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5, v4}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    .end local v0           #err:I
    :goto_0
    return v0

    .line 573
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/bb;

    invoke-direct {v1}, Ltmsdkobf/bb;-><init>()V

    .line 574
    .local v1, proxy:Ltmsdkobf/bb;
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v6, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v7, "queryresult"

    invoke-virtual {v5, v6, v7, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 575
    .local v2, queryResult:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 576
    check-cast v2, Ltmsdkobf/bb;

    .end local v2           #queryResult:Ljava/lang/Object;
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ltmsdkobf/bd;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 10
    .parameter "smsInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/bd;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/be;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bc;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, trafficTemplateRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/be;>;"
    .local p3, stRetInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bc;>;"
    const/16 v7, 0xf

    invoke-static {v7}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v6

    .line 527
    .local v6, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v3, Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 528
    .local v3, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "smsinfo"

    invoke-virtual {v3, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iput-object v3, v6, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 531
    const/16 v0, -0x1770

    .line 532
    .local v0, err:I
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7, v6}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    .end local v0           #err:I
    :goto_0
    return v0

    .line 536
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/be;

    invoke-direct {v1}, Ltmsdkobf/be;-><init>()V

    .line 537
    .local v1, proxy:Ltmsdkobf/be;
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v6, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "traffictemplate"

    invoke-virtual {v7, v8, v9, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 538
    .local v5, trafficTemplate:Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 539
    check-cast v5, Ltmsdkobf/be;

    .end local v5           #trafficTemplate:Ljava/lang/Object;
    invoke-virtual {p2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 542
    :cond_1
    new-instance v2, Ltmsdkobf/bc;

    invoke-direct {v2}, Ltmsdkobf/bc;-><init>()V

    .line 543
    .local v2, proxy1:Ltmsdkobf/bc;
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v6, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "stretinfo"

    invoke-virtual {v7, v8, v9, v2}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 544
    .local v4, stRetInfo:Ljava/lang/Object;
    if-eqz p3, :cond_2

    .line 545
    check-cast v4, Ltmsdkobf/bc;

    .end local v4           #stRetInfo:Ljava/lang/Object;
    invoke-virtual {p3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 548
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ltmsdkobf/ck;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 10
    .parameter "clientInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/ck;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/cn;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/cm;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/cn;>;"
    .local p3, virusInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cm;>;"
    const/4 v7, 0x2

    invoke-static {v7}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v6

    .line 189
    .local v6, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v3, Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 190
    .local v3, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "phonetype"

    iget-object v8, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v8}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v7, "userinfo"

    iget-object v8, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v8}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v7, "clientinfo"

    invoke-virtual {v3, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iput-object v3, v6, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 195
    const/16 v0, -0x1770

    .line 196
    .local v0, err:I
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v7, v6}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    .end local v0           #err:I
    :goto_0
    return v0

    .line 200
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/cn;

    invoke-direct {v1}, Ltmsdkobf/cn;-><init>()V

    .line 201
    .local v1, proxy:Ltmsdkobf/cn;
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v6, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "serverinfo"

    invoke-virtual {v7, v8, v9, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 202
    .local v5, tempInfo:Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 203
    check-cast v5, Ltmsdkobf/cn;

    .end local v5           #tempInfo:Ljava/lang/Object;
    invoke-virtual {p2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 206
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, proxy2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/cm;>;"
    new-instance v7, Ltmsdkobf/cm;

    invoke-direct {v7}, Ltmsdkobf/cm;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v7, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v8, v6, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v9, "virusinfos"

    invoke-virtual {v7, v8, v9, v2}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    .local v4, retVirusInfos:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 211
    check-cast v4, Ljava/util/Collection;

    .end local v4           #retVirusInfos:Ljava/lang/Object;
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ltmsdkobf/g;Ltmsdkobf/i;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .parameter "browserClient"
    .parameter "browserUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/g;",
            "Ltmsdkobf/i;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/h;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 863
    .local p3, resultRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/h;>;"
    const/16 v5, 0x13

    invoke-static {v5}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v4

    .line 864
    .local v4, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 865
    .local v2, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "client"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v5, "url"

    invoke-virtual {v2, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    iput-object v2, v4, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 869
    const/16 v0, -0x1770

    .line 870
    .local v0, err:I
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5, v4}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    .end local v0           #err:I
    :goto_0
    return v0

    .line 874
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/h;

    invoke-direct {v1}, Ltmsdkobf/h;-><init>()V

    .line 875
    .local v1, proxy:Ltmsdkobf/h;
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v6, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v7, "result"

    invoke-virtual {v5, v6, v7, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 877
    .local v3, result:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 878
    check-cast v3, Ltmsdkobf/h;

    .end local v3           #result:Ljava/lang/Object;
    invoke-virtual {p3, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 880
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ltmsdkobf/cp;)I
    .locals 8
    .parameter "stCtrlRst"

    .prologue
    .line 993
    const/16 v4, 0x16

    invoke-static {v4}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v3

    .line 994
    .local v3, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 995
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "phonetype"

    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string v4, "userinfo"

    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string v4, "stCtrlRst"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iput-object v1, v3, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 999
    const/16 v0, -0x1770

    .line 1000
    .local v0, err:I
    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4, v3}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    .end local v0           #err:I
    :goto_0
    return v0

    .line 1004
    .restart local v0       #err:I
    :cond_0
    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v5, v3, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1005
    .local v2, returnValue:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1006
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1008
    :cond_1
    const/16 v0, -0xfa0

    goto :goto_0
.end method

.method public b(Ltmsdkobf/u;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .parameter "deviceInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/u;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/ag;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, guidInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/ag;>;"
    const/16 v5, 0x9

    invoke-static {v5}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v4

    .line 108
    .local v4, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 109
    .local v2, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "phonetype"

    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v5, "userinfo"

    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v5, "deviceinfo"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iput-object v2, v4, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 114
    const/16 v0, -0x1770

    .line 115
    .local v0, err:I
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    .end local v0           #err:I
    :goto_0
    return v0

    .line 119
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/ag;

    invoke-direct {v1}, Ltmsdkobf/ag;-><init>()V

    .line 120
    .local v1, proxy:Ltmsdkobf/ag;
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v6, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v7, "guidinfo"

    invoke-virtual {v5, v6, v7, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 121
    .local v3, tempInfo:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 122
    check-cast v3, Ltmsdkobf/ag;

    .end local v3           #tempInfo:Ljava/lang/Object;
    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public getTagPhonenum(Ltmsdkobf/aw;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .parameter "queryReq"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdkobf/aw;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdkobf/bg;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 923
    .local p2, result:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bg;>;"
    const/16 v5, 0x17

    invoke-static {v5}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v4

    .line 924
    .local v4, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 925
    .local v2, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "phonetype"

    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string v5, "userinfo"

    iget-object v6, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v6}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v5, "queryreq"

    invoke-virtual {v2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iput-object v2, v4, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 930
    const/16 v0, -0x1770

    .line 931
    .local v0, err:I
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v5, v4}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    .end local v0           #err:I
    :goto_0
    return v0

    .line 935
    .restart local v0       #err:I
    :cond_0
    new-instance v1, Ltmsdkobf/bg;

    invoke-direct {v1}, Ltmsdkobf/bg;-><init>()V

    .line 936
    .local v1, proxy:Ltmsdkobf/bg;
    iget-object v5, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iget-object v6, v4, Ltmsdkobf/lj;->Cy:Ltmsdkobf/cx;

    const-string v7, "telInfo"

    invoke-virtual {v5, v6, v7, v1}, Ltmsdkobf/li;->a(Ltmsdkobf/cx;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 937
    .local v3, serverCmdInfo:Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 938
    check-cast v3, Ltmsdkobf/bg;

    .end local v3           #serverCmdInfo:Ljava/lang/Object;
    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 941
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gf()Z
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v0}, Ltmsdkobf/li;->gf()Z

    move-result v0

    return v0
.end method

.method public gn()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v3, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iput-boolean v4, v3, Ltmsdkobf/li;->Cp:Z

    .line 136
    const/16 v0, -0x1770

    .line 139
    .local v0, err:I
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v2

    .line 141
    .local v2, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "phonetype"

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4}, Ltmsdkobf/li;->gb()Ltmsdkobf/ao;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v3, "userinfo"

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4}, Ltmsdkobf/li;->gc()Ltmsdkobf/cj;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v3, "channelinfo"

    iget-object v4, p0, Ltmsdkobf/ll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Ltmsdkobf/ll;->r(Landroid/content/Context;)Ltmsdkobf/j;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-object v1, v2, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 147
    iget-object v3, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v3, v2}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 148
    if-eqz v0, :cond_0

    .line 152
    iget-object v3, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iput-boolean v5, v3, Ltmsdkobf/li;->Cp:Z

    .line 155
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v3, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iput-boolean v5, v3, Ltmsdkobf/li;->Cp:Z

    goto :goto_0

    .end local v1           #requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #wupSessionInfo:Ltmsdkobf/lj;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    iput-boolean v5, v4, Ltmsdkobf/li;->Cp:Z

    throw v3
.end method

.method public go()Ltmsdkobf/lf;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    return-object v0
.end method

.method public gp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v0, properties:Ltmsdkobf/kf;
    const-string v1, "guid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    iput-object p1, p0, Ltmsdkobf/ll;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Ltmsdkobf/li;

    iget-object v1, p0, Ltmsdkobf/ll;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltmsdkobf/li;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    .line 90
    return-void
.end method

.method public p(Ljava/util/List;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, smsReports:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bo;>;"
    const/16 v3, 0xc

    invoke-static {v3}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v2

    .line 697
    .local v2, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 698
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "phonetype"

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4}, Ltmsdkobf/li;->gg()Ltmsdkobf/av;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v3, "userinfo"

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4}, Ltmsdkobf/li;->gh()Ltmsdkobf/bj;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v3, "vecSmsReport"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    iput-object v1, v2, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 703
    const/16 v0, -0x1770

    .line 704
    .local v0, err:I
    iget-object v3, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v3, v2}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    .end local v0           #err:I
    :goto_0
    return v0

    .restart local v0       #err:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Ljava/util/List;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdkobf/bz;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, telReports:Ljava/util/List;,"Ljava/util/List<Ltmsdkobf/bz;>;"
    const/16 v3, 0xd

    invoke-static {v3}, Ltmsdkobf/lg;->bW(I)Ltmsdkobf/lj;

    move-result-object v2

    .line 720
    .local v2, wupSessionInfo:Ltmsdkobf/lj;
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 721
    .local v1, requestParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "phonetype"

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4}, Ltmsdkobf/li;->gg()Ltmsdkobf/av;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string v3, "userinfo"

    iget-object v4, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v4}, Ltmsdkobf/li;->gh()Ltmsdkobf/bj;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v3, "vecTelReport"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iput-object v1, v2, Ltmsdkobf/lj;->Cw:Ljava/util/HashMap;

    .line 726
    const/16 v0, -0x1770

    .line 727
    .local v0, err:I
    iget-object v3, p0, Ltmsdkobf/ll;->CB:Ltmsdkobf/li;

    invoke-virtual {v3, v2}, Ltmsdkobf/li;->a(Ltmsdkobf/lj;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    .end local v0           #err:I
    :goto_0
    return v0

    .restart local v0       #err:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
