.class Lcom/isw/third/app/LBSWebActivity$3;
.super Ljava/lang/Thread;
.source "LBSWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/third/app/LBSWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/third/app/LBSWebActivity;


# direct methods
.method constructor <init>(Lcom/isw/third/app/LBSWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 55
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/isw/third/app/LBSWebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/isw/android/corp/util/DotInfoClient;->queryDotUrlInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/DotInfoBean;

    move-result-object v7

    .line 56
    .local v7, dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    if-eqz v7, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    .line 58
    const-string v20, "isw_data"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/isw/third/app/LBSWebActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 59
    .local v17, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 60
    .local v9, editor:Landroid/content/SharedPreferences$Editor;
    const-string v19, "lastlbstime"

    .line 61
    const-string v20, "0"

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 60
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 62
    .local v11, lastlbstime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 63
    .local v5, currentlbstime:J
    const/4 v14, 0x0

    .line 64
    .local v14, location:Landroid/location/Location;
    sub-long v19, v5, v11

    const-wide/32 v21, 0x927c0

    cmp-long v19, v19, v21

    if-lez v19, :cond_3

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v14

    .line 67
    const-string v19, "lastlbstime"

    move-object/from16 v0, v19

    invoke-interface {v9, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    if-eqz v14, :cond_2

    .line 69
    const-string v19, "latitude"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 69
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string v19, "longitude"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 71
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-static {}, Lcom/isw/third/app/LBSWebActivity;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "location.getLatitudeByGet"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 74
    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/isw/third/app/LBSWebActivity;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "location.getlongitudeByGet"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 76
    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    .line 101
    invoke-virtual/range {v19 .. v19}, Lcom/isw/third/app/LBSWebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 100
    invoke-static/range {v19 .. v19}, Lcom/isw/android/corp/util/DotInterface;->getContactInfo(Landroid/content/ContentResolver;)Lcom/isw/android/corp/bean/ContactInfoBean;

    move-result-object v4

    .line 102
    .local v4, contactInfoBean:Lcom/isw/android/corp/bean/ContactInfoBean;
    const-string v18, ""

    .line 103
    .local v18, url:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/isw/third/app/LBSWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 105
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    const-string v20, "city"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/isw/third/app/LBSWebActivity;->city:Ljava/lang/String;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    const-string v20, "keyword"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/isw/third/app/LBSWebActivity;->keyword:Ljava/lang/String;

    .line 108
    new-instance v19, Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/isw/android/corp/bean/ContactInfoBean;->contactUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "lbsinfo?imsi="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/isw/android/corp/bean/DotInfoBean;->imsi:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 109
    const-string v20, "&imei="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/isw/android/corp/bean/DotInfoBean;->imei:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&latitude="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 110
    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&longitude="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 111
    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&city="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity;->city:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&keyword="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity;->keyword:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "an="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/isw/android/corp/bean/DotInfoBean;->an:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "adccompany="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 113
    iget-object v0, v7, Lcom/isw/android/corp/bean/DotInfoBean;->adccompany:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "model="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/isw/android/corp/bean/DotInfoBean;->model:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 108
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 114
    invoke-static {}, Lcom/isw/third/app/LBSWebActivity;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "url"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v10           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 117
    .local v16, msg:Landroid/os/Message;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->what:I

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isw/third/app/LBSWebActivity$3;->this$0:Lcom/isw/third/app/LBSWebActivity;

    move-object/from16 v19, v0

    #getter for: Lcom/isw/third/app/LBSWebActivity;->handler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/isw/third/app/LBSWebActivity;->access$1(Lcom/isw/third/app/LBSWebActivity;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    .end local v4           #contactInfoBean:Lcom/isw/android/corp/bean/ContactInfoBean;
    .end local v5           #currentlbstime:J
    .end local v7           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #lastlbstime:J
    .end local v14           #location:Landroid/location/Location;
    .end local v16           #msg:Landroid/os/Message;
    .end local v17           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v18           #url:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 79
    .restart local v5       #currentlbstime:J
    .restart local v7       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v9       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v11       #lastlbstime:J
    .restart local v14       #location:Landroid/location/Location;
    .restart local v17       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    new-instance v14, Landroid/location/Location;

    .end local v14           #location:Landroid/location/Location;
    const-string v19, "network"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v14       #location:Landroid/location/Location;
    const-string v19, "39.913448"

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 81
    const-string v19, "116.372686"

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 122
    .end local v5           #currentlbstime:J
    .end local v7           #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .end local v9           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #lastlbstime:J
    .end local v14           #location:Landroid/location/Location;
    .end local v17           #sharedPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 123
    .local v8, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/isw/third/app/LBSWebActivity;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v5       #currentlbstime:J
    .restart local v7       #dotInfo:Lcom/isw/android/corp/bean/DotInfoBean;
    .restart local v9       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v11       #lastlbstime:J
    .restart local v14       #location:Landroid/location/Location;
    .restart local v17       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    const-string v19, "latitude"

    const-string v20, ""

    .line 84
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, latitude:Ljava/lang/String;
    const-string v19, "longitude"

    const-string v20, ""

    .line 86
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, longitude:Ljava/lang/String;
    new-instance v14, Landroid/location/Location;

    .line 89
    .end local v14           #location:Landroid/location/Location;
    const-string v19, "network"

    .line 88
    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v14       #location:Landroid/location/Location;
    invoke-static {}, Lcom/isw/third/app/LBSWebActivity;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "location.getLatitudeByLocal"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 91
    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/isw/third/app/LBSWebActivity;->access$0()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "location.getlongitudeByLocal"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 93
    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 96
    invoke-static {v15}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v14, v0, v1}, Landroid/location/Location;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
