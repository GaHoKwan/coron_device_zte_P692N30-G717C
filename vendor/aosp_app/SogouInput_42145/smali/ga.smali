.class public Lga;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static a:J

.field public static a:Lcom/sohu/util/WIFIReceiver;

.field private static a:Lga;

.field public static a:Lgf;

.field public static a:Z

.field public static b:I

.field public static b:Lcom/sohu/util/WIFIReceiver;

.field private static b:Ljava/lang/String;

.field public static b:Z

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static d:Ljava/lang/String;

.field private static d:Z

.field private static e:I

.field private static f:I

.field private static h:I


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lfx;

.field private a:Lgc;

.field private a:Ljava/lang/String;

.field private a:Ljava/text/SimpleDateFormat;

.field a:Ljava/util/LinkedHashMap;

.field a:Ljava/util/List;

.field private a:Ljava/util/Set;

.field private b:J

.field private b:Ljava/util/LinkedHashMap;

.field b:Ljava/util/List;

.field private c:I

.field c:Ljava/util/List;

.field private c:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private i:Ljava/lang/String;

.field private j:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lga;->a:Lga;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lga;->a:Z

    .line 99
    new-instance v0, Lcom/sohu/util/WIFIReceiver;

    invoke-direct {v0}, Lcom/sohu/util/WIFIReceiver;-><init>()V

    sput-object v0, Lga;->a:Lcom/sohu/util/WIFIReceiver;

    .line 100
    new-instance v0, Lcom/sohu/util/WIFIReceiver;

    invoke-direct {v0}, Lcom/sohu/util/WIFIReceiver;-><init>()V

    sput-object v0, Lga;->b:Lcom/sohu/util/WIFIReceiver;

    .line 112
    const-string v0, "w"

    sput-object v0, Lga;->b:Ljava/lang/String;

    .line 113
    const-string v0, "c"

    sput-object v0, Lga;->c:Ljava/lang/String;

    .line 114
    const-string v0, "g"

    sput-object v0, Lga;->d:Ljava/lang/String;

    .line 119
    const/16 v0, 0x64

    sput v0, Lga;->d:I

    .line 121
    const/16 v0, 0xc8

    sput v0, Lga;->e:I

    .line 123
    const/16 v0, 0x12c

    sput v0, Lga;->f:I

    .line 180
    new-instance v0, Lgf;

    const-string v1, "gain"

    invoke-direct {v0, v1}, Lgf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lga;->a:Lgf;

    .line 181
    sput v2, Lga;->h:I

    .line 184
    sput-boolean v2, Lga;->b:Z

    .line 195
    const/16 v0, 0x78

    sput v0, Lga;->a:I

    .line 196
    const/16 v0, 0x14

    sput v0, Lga;->b:I

    .line 200
    const-wide/16 v0, 0x0

    sput-wide v0, Lga;->a:J

    .line 202
    sput-boolean v2, Lga;->d:Z

    return-void
.end method

.method public static a()Lga;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lga;->a:Lga;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lga;->a:Landroid/content/Context;

    sget-object v1, Lga;->b:Lcom/sohu/util/WIFIReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    iget-object v0, p0, Lga;->a:Lgc;

    invoke-virtual {v0}, Lgc;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lga;->b:J

    .line 348
    :try_start_0
    sget-object v0, Lga;->a:Lgf;

    const-string v1, "unregisterReceiver wifiReceiver"

    invoke-virtual {v0, v1}, Lgf;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lga;->a:Lfx;

    invoke-virtual {v0}, Lfx;->a()V

    .line 350
    sget-object v0, Lga;->a:Lgf;

    const-string v1, "stopCellListener"

    invoke-virtual {v0, v1}, Lgf;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iput-boolean v3, p0, Lga;->c:Z

    .line 362
    sget-object v0, Lga;->a:Lgf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop collecter,type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lga;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgf;->a(Ljava/lang/String;)V

    .line 363
    iput v3, p0, Lga;->g:I

    .line 364
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lga;->i:I

    sput v0, Lga;->h:I

    .line 447
    sget v0, Lga;->h:I

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lga;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 336
    invoke-direct {p0}, Lga;->e()V

    .line 340
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1062
    iget v0, p0, Lga;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1063
    sget-object v0, Lga;->a:Lgf;

    const-string v1, "jobCompleted,get backData,delete passive data in memory by ids ,start to analysis and clear"

    invoke-virtual {v0, v1}, Lgf;->a(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    :try_start_0
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1069
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1070
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1076
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    iget-object v2, p0, Lga;->a:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    .line 1078
    iget-object v2, p0, Lga;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lga;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1080
    iget v2, p0, Lga;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lga;->i:I

    .line 1082
    :cond_2
    iget-object v2, p0, Lga;->c:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1083
    iget-object v2, p0, Lga;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1085
    :cond_3
    iget-object v2, p0, Lga;->b:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1086
    iget-object v2, p0, Lga;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1088
    :cond_4
    iget-object v2, p0, Lga;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1089
    iget-object v2, p0, Lga;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1072
    :catch_0
    move-exception v1

    .line 1073
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1094
    :cond_5
    sget-object v0, Lga;->a:Lgf;

    const-string v1, "clear passiveTable"

    invoke-virtual {v0, v1}, Lgf;->a(Ljava/lang/String;)V

    .line 1096
    sget-object v0, Lga;->a:Lgf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analyBackData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgf;->a(Ljava/lang/String;)V

    .line 1097
    const/4 v0, 0x3

    iput v0, p0, Lga;->g:I

    .line 1099
    iget-object v0, p0, Lga;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1100
    iget-object v2, p0, Lga;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1102
    :cond_6
    iget-object v0, p0, Lga;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1106
    return-void

    .line 1104
    :cond_7
    new-instance v0, Lfz;

    const-string v1, "confirm you have getData"

    invoke-direct {v0, v1}, Lfz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)[Ljava/lang/String;
    .locals 19
    .parameter

    .prologue
    .line 776
    .line 777
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 778
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 779
    const/4 v4, 0x0

    .line 781
    move-object/from16 v0, p0

    iget v2, v0, Lga;->g:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lga;->g:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lga;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 784
    :cond_0
    sget-object v2, Lga;->a:Lgf;

    const-string v3, "getDataFromMemroy"

    invoke-virtual {v2, v3}, Lgf;->a(Ljava/lang/String;)V

    .line 785
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 786
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lga;->a:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_11

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lga;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 790
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 791
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 792
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 793
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 795
    :goto_0
    move/from16 v0, p1

    if-le v4, v0, :cond_2

    .line 856
    :cond_1
    :try_start_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_b

    .line 857
    const/4 v2, 0x0

    .line 928
    :goto_1
    return-object v2

    .line 798
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 800
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lge;

    .line 801
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 802
    invoke-virtual {v3}, Lge;->b()Ljava/lang/String;

    move-result-object v14

    .line 803
    invoke-virtual {v3}, Lge;->a()Ljava/lang/String;

    move-result-object v15

    .line 804
    invoke-virtual {v3}, Lge;->a()J

    move-result-wide v16

    .line 806
    const/4 v6, 0x0

    .line 809
    :try_start_1
    invoke-static {v14}, Lgb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 810
    if-eqz v18, :cond_3

    .line 811
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 812
    :try_start_2
    const-string v6, "recordTime"

    move-wide/from16 v0, v16

    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 824
    :goto_2
    sget-object v6, Lga;->c:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 825
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 826
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 827
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    .line 849
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v2

    goto :goto_0

    .line 814
    :cond_3
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 815
    :try_start_4
    const-string v6, "recordTime"

    move-wide/from16 v0, v16

    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 817
    :catch_0
    move-exception v6

    move-object v6, v3

    .line 819
    :goto_4
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    .line 820
    :try_start_6
    const-string v6, "recordTime"

    move-wide/from16 v0, v16

    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 821
    :catch_1
    move-exception v6

    goto :goto_2

    .line 829
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    goto :goto_3

    .line 831
    :cond_5
    sget-object v6, Lga;->b:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 832
    invoke-virtual {v12, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 833
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_6

    .line 834
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    goto :goto_3

    .line 836
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v4

    goto :goto_3

    .line 838
    :cond_7
    sget-object v6, Lga;->d:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 839
    move/from16 v0, p1

    if-ge v4, v0, :cond_8

    .line 840
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 841
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_9

    .line 842
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 847
    :cond_8
    :goto_5
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_3

    .line 844
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 852
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 859
    :cond_b
    :try_start_7
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 860
    const-string v2, "gpses"

    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    :cond_c
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 862
    const-string v2, "wifies"

    invoke-virtual {v9, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    :cond_d
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 864
    const-string v2, "cells"

    invoke-virtual {v9, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 867
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lga;->a:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 868
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lga;->e:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    .line 871
    :goto_6
    :try_start_9
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lga;->f:Ljava/lang/String;

    .line 872
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lga;->g:Ljava/lang/String;

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lga;->h:Ljava/lang/String;

    .line 874
    const-string v2, "deviceId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->e:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    const-string v2, "manufacturer"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->f:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    const-string v2, "platform"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->g:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    const-string v2, "os"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->h:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lga;->a:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lga;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 882
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 883
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 884
    if-eqz v3, :cond_f

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 885
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lga;->a:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    .line 895
    :catch_2
    move-exception v2

    .line 903
    :goto_8
    :try_start_a
    const-string v2, "locationData"

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 907
    :goto_9
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    sget-object v3, Lga;->a:Lgf;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getData whithout Code:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgf;->a(Ljava/lang/String;)V

    .line 912
    :try_start_b
    const-string v3, "6E09C97EB8798EEB"

    invoke-static {v3, v2}, Lgd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v2

    .line 920
    :goto_a
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lga;->g:I

    .line 925
    const/4 v3, 0x0

    aput-object v2, v5, v3

    .line 926
    const/4 v2, 0x1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    move-object v2, v5

    .line 928
    goto/16 :goto_1

    .line 889
    :cond_10
    :try_start_c
    const-string v2, "counter"

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 890
    const-string v2, "versionName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->i:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 891
    const-string v2, "versionCode"

    move-object/from16 v0, p0

    iget v3, v0, Lga;->j:I

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 892
    const-string v2, "packageName"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->j:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v2, "version"

    move-object/from16 v0, p0

    iget-object v3, v0, Lga;->a:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .line 898
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 922
    :cond_12
    new-instance v2, Lfz;

    const-string v3, "Confirm the state is Stop or jobCompleted"

    invoke-direct {v2, v3}, Lfz;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :catch_3
    move-exception v3

    goto :goto_a

    .line 904
    :catch_4
    move-exception v2

    goto :goto_9

    .line 869
    :catch_5
    move-exception v2

    goto/16 :goto_6

    .line 821
    :catch_6
    move-exception v3

    move-object v3, v6

    goto/16 :goto_2

    .line 817
    :catch_7
    move-exception v3

    goto/16 :goto_4

    :catch_8
    move-exception v6

    move-object v6, v3

    goto/16 :goto_4

    :cond_13
    move v2, v4

    goto/16 :goto_3
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1196
    .line 1197
    iget v0, p0, Lga;->g:I

    .line 1198
    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lga;->a()V

    .line 371
    invoke-direct {p0}, Lga;->d()V

    .line 380
    const/4 v0, 0x0

    sput-object v0, Lga;->a:Lga;

    .line 381
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x3

    iput v0, p0, Lga;->g:I

    .line 1188
    return-void
.end method
