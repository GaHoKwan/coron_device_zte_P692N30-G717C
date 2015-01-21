.class Lcom/isw/android/corp/telephony/CallUtil$2;
.super Ljava/lang/Thread;
.source "CallUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/telephony/CallUtil;->checkPush(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ccs:I

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$number:Ljava/lang/String;

.field private final synthetic val$pushdelay:I

.field private final synthetic val$pushpreembed:Z


# direct methods
.method constructor <init>(ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$pushdelay:I

    iput-object p2, p0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$number:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$pushpreembed:Z

    iput-object p4, p0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$name:Ljava/lang/String;

    iput p5, p0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$ccs:I

    .line 856
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 860
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$pushdelay:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 861
    const-wide/16 v15, 0x7d0

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/telephony/CallUtil$2;->sleep(J)V

    .line 865
    :goto_0
    const/4 v1, 0x0

    .line 866
    .local v1, bFinish:Z
    const/4 v12, 0x0

    .line 868
    .local v12, times:I
    const-string v15, "pushDuration"

    .line 869
    const/16 v16, 0x1e

    .line 868
    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 869
    const v16, 0xea60

    .line 868
    mul-int v15, v15, v16

    int-to-long v5, v15

    .line 870
    .local v5, pushDuration:J
    const-string v15, "pushPeriod"

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 871
    const v16, 0xea60

    .line 870
    mul-int v15, v15, v16

    int-to-long v7, v15

    .line 873
    .local v7, pushPeriod:J
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-gez v15, :cond_0

    .line 874
    const-wide/16 v5, 0x0

    .line 877
    :cond_0
    const-wide/32 v15, 0xea60

    cmp-long v15, v7, v15

    if-gez v15, :cond_1

    .line 878
    const-wide/32 v7, 0xea60

    .line 881
    :cond_1
    invoke-static {}, Lcom/isw/android/corp/util/WinksTools;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v11

    .line 882
    .local v11, timeStamp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$number:Ljava/lang/String;

    invoke-static {v15, v11}, Lcom/isw/android/corp/telephony/CallUtil;->setPushRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 884
    int-to-long v15, v12

    div-long v17, v5, v7

    .line 883
    cmp-long v15, v15, v17

    if-lez v15, :cond_5

    .line 1013
    .end local v1           #bFinish:Z
    .end local v5           #pushDuration:J
    .end local v7           #pushPeriod:J
    .end local v11           #timeStamp:Ljava/lang/String;
    .end local v12           #times:I
    :cond_3
    :goto_2
    return-void

    .line 863
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$pushdelay:I

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v15, v15

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/telephony/CallUtil$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v3

    .line 1009
    .local v3, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "[checkPush] ex: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 886
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #bFinish:Z
    .restart local v5       #pushDuration:J
    .restart local v7       #pushPeriod:J
    .restart local v11       #timeStamp:Ljava/lang/String;
    .restart local v12       #times:I
    :cond_5
    if-eqz v12, :cond_6

    .line 887
    :try_start_1
    invoke-static {v7, v8}, Lcom/isw/android/corp/telephony/CallUtil$2;->sleep(J)V

    .line 890
    :cond_6
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$1()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v15

    .line 891
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v15 .. v16}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 892
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$pushpreembed:Z

    if-eqz v15, :cond_e

    .line 894
    :cond_7
    const-string v9, ""

    .line 895
    .local v9, pushXML:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$pushpreembed:Z

    if-eqz v15, :cond_d

    .line 896
    new-instance v15, Ljava/lang/StringBuilder;

    .line 897
    const-string v16, "pushpreurl"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "?n="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$number:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 896
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 898
    .local v13, u:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><p><t>\u6b22\u8fce\u8054\u7cfb"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 902
    const-string v16, ", \u66f4\u591a\u8be6\u60c5\u8bf7\u67e5\u770b"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 903
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 904
    const-string v16, "</t>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 905
    const-string v16, "<u>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 906
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</u>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</p>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 898
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 937
    .end local v13           #u:Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "pushXML: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "pushXML.length: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-static {v9}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 941
    const/4 v1, 0x1

    .line 942
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x32

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 943
    invoke-static {v11}, Lcom/isw/android/corp/telephony/CallUtil;->updatePushRecord(Ljava/lang/String;)V

    .line 945
    :cond_8
    #calls: Lcom/isw/android/corp/telephony/CallUtil;->parsePush(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyPushBean;
    invoke-static {v9}, Lcom/isw/android/corp/telephony/CallUtil;->access$2(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyPushBean;

    move-result-object v10

    .line 960
    .local v10, pushbean:Lcom/isw/android/corp/bean/CompanyPushBean;
    iget-object v15, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    invoke-static {v15}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 961
    iget-object v15, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->i:Ljava/lang/String;

    invoke-static {v15}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 963
    iget-object v15, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->i:Ljava/lang/String;

    #calls: Lcom/isw/android/corp/telephony/CallUtil;->downloadImg(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V
    invoke-static {v10, v15}, Lcom/isw/android/corp/telephony/CallUtil;->access$3(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V

    .line 965
    :cond_9
    iget-object v15, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->b:Ljava/lang/String;

    invoke-static {v15}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 967
    iget-object v15, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->b:Ljava/lang/String;

    #calls: Lcom/isw/android/corp/telephony/CallUtil;->downloadImg(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V
    invoke-static {v10, v15}, Lcom/isw/android/corp/telephony/CallUtil;->access$3(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 970
    :cond_a
    const/4 v4, 0x0

    .line 972
    .local v4, id:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$number:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 979
    :cond_b
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "t: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 980
    const-string v17, ", u: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->u:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 981
    const-string v17, ", id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ipath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 982
    iget-object v0, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->ip:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "bpath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 983
    iget-object v0, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 979
    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "push.a:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    sget-object v15, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 987
    #calls: Lcom/isw/android/corp/telephony/CallUtil;->setSWUpdateNotification(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V
    invoke-static {v15, v10, v4}, Lcom/isw/android/corp/telephony/CallUtil;->access$4(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V

    .line 990
    const-string v15, "pushinbox"

    .line 991
    const/16 v16, 0x0

    .line 990
    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 991
    if-eqz v15, :cond_c

    .line 992
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$number:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 993
    iget-object v0, v10, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 992
    invoke-static/range {v15 .. v17}, Lcom/isw/android/corp/telephony/CallUtil;->addPushInbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    .end local v4           #id:I
    .end local v9           #pushXML:Ljava/lang/String;
    .end local v10           #pushbean:Lcom/isw/android/corp/bean/CompanyPushBean;
    :cond_c
    :goto_5
    if-nez v1, :cond_2

    .line 1004
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 908
    .restart local v9       #pushXML:Ljava/lang/String;
    :cond_d
    new-instance v15, Ljava/lang/StringBuilder;

    .line 909
    const-string v16, "pushUrl"

    .line 910
    const-string v17, "http://d.zqlx.com:8100/winksWS"

    invoke-static/range {v16 .. v17}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    const-string v16, "/qpi"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 912
    const-string v16, "?"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 913
    const-string v16, "n="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$number:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 915
    const-string v16, "&imsi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 916
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 917
    const-string v16, "&pkgname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 918
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 919
    const-string v16, "&an="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 920
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->an:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 921
    const-string v16, "&av="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 922
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->av:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 923
    const-string v16, "&ccs="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isw/android/corp/telephony/CallUtil$2;->val$ccs:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 925
    const-string v16, "&adccompany="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 926
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->adc:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 927
    const-string v16, "&model="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 928
    sget-object v16, Lcom/isw/android/corp/util/WinksApplication;->model:Ljava/lang/String;

    .line 929
    const-string v17, " "

    const-string v18, ""

    .line 928
    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 930
    const-string v16, "&pvf="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 931
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 908
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 933
    .local v14, url:Ljava/lang/String;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "url: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-static {v14}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 973
    .end local v14           #url:Ljava/lang/String;
    .restart local v4       #id:I
    .restart local v10       #pushbean:Lcom/isw/android/corp/bean/CompanyPushBean;
    :catch_1
    move-exception v3

    .line 974
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 975
    if-gez v4, :cond_b

    .line 976
    neg-int v4, v4

    goto/16 :goto_4

    .line 999
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #id:I
    .end local v9           #pushXML:Ljava/lang/String;
    .end local v10           #pushbean:Lcom/isw/android/corp/bean/CompanyPushBean;
    :cond_e
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    .line 1000
    const-string v16, "Current network is unavailable!"

    .line 999
    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_5

    .line 1010
    .end local v1           #bFinish:Z
    .end local v5           #pushDuration:J
    .end local v7           #pushPeriod:J
    .end local v11           #timeStamp:Ljava/lang/String;
    .end local v12           #times:I
    :catch_2
    move-exception v2

    .line 1011
    .local v2, err:Ljava/lang/Error;
    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->access$0()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "[checkPush] err: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
