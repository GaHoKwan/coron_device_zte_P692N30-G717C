.class Lcom/mediatek/ygps/YgpsActivity$5;
.super Ljava/lang/Object;
.source "YgpsActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 26
    .parameter "location"

    .prologue
    .line 1689
    const-string v22, "YGPS/Activity"

    const-string v23, "Enter onLocationChanged function"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$1900(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 1691
    const-string v22, "YGPS/Activity"

    const-string v23, "mFirstFix is false, onLocationChanged"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2000(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1694
    const/4 v7, 0x0

    .line 1695
    .local v7, str:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1696
    .local v9, tmp:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1698
    .local v3, da:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    .end local v3           #da:Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1699
    .restart local v3       #da:Ljava/util/Date;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    .line 1701
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 1702
    const/16 v22, 0x0

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1704
    :cond_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1705
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    .line 1706
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 1707
    const/16 v22, 0x0

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1709
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;

    move-result-object v22

    if-nez v22, :cond_7

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;
    invoke-static/range {v22 .. v23}, Lcom/mediatek/ygps/YgpsActivity;->access$2102(Lcom/mediatek/ygps/YgpsActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;

    move-result-object v22

    const/16 v23, 0x50

    const/16 v24, 0x0

    const/16 v25, 0x96

    invoke-virtual/range {v22 .. v25}, Landroid/widget/Toast;->setGravity(III)V

    .line 1717
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 1720
    .end local v3           #da:Ljava/util/Date;
    .end local v7           #str:Ljava/lang/String;
    .end local v9           #tmp:Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1721
    .local v2, d:Ljava/util/Date;
    const-string v22, "%s %+02d %04d/%02d/%02d"

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "GMT"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v2}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x76c

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1724
    .local v4, date:Ljava/lang/String;
    const-string v22, "%02d:%02d:%02d"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual {v2}, Ljava/util/Date;->getSeconds()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1727
    .local v8, time:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070011

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1728
    .local v20, tvTime:Landroid/widget/TextView;
    if-eqz v20, :cond_4

    .line 1729
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070010

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1733
    .local v13, tvDate:Landroid/widget/TextView;
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2200(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z
    invoke-static/range {v22 .. v23}, Lcom/mediatek/ygps/YgpsActivity;->access$2202(Lcom/mediatek/ygps/YgpsActivity;Z)Z

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070013

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1738
    .local v6, firstLon:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070012

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1740
    .local v5, firstLat:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Longitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/ygps/YgpsActivity;->access$2300(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Latitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/mediatek/ygps/YgpsActivity;->access$2300(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)V

    .line 1744
    .end local v5           #firstLat:Landroid/widget/TextView;
    .end local v6           #firstLon:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070014

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1745
    .local v15, tvLat:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070015

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1747
    .local v16, tvLon:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070016

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1749
    .local v11, tvAlt:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070017

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1751
    .local v10, tvAcc:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070018

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1753
    .local v12, tvBear:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070019

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1755
    .local v18, tvSpeed:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mLastLocation:Landroid/location/Location;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2400(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/Location;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07001a

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1758
    .local v14, tvDist:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mLastLocation:Landroid/location/Location;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2400(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/Location;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    .end local v14           #tvDist:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07000f

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1763
    .local v21, tvTtff:Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/ygps/YgpsActivity;->access$2500(Lcom/mediatek/ygps/YgpsActivity;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v23, v0

    const v24, 0x7f050071

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07000d

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1771
    .local v17, tvProvider:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2600(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07000e

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1773
    .local v19, tvStatus:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2700(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    const/4 v2, 0x0

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mLastLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/mediatek/ygps/YgpsActivity;->access$2402(Lcom/mediatek/ygps/YgpsActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 1776
    return-void

    .line 1715
    .end local v2           #d:Ljava/util/Date;
    .end local v4           #date:Ljava/lang/String;
    .end local v8           #time:Ljava/lang/String;
    .end local v10           #tvAcc:Landroid/widget/TextView;
    .end local v11           #tvAlt:Landroid/widget/TextView;
    .end local v12           #tvBear:Landroid/widget/TextView;
    .end local v13           #tvDate:Landroid/widget/TextView;
    .end local v15           #tvLat:Landroid/widget/TextView;
    .end local v16           #tvLon:Landroid/widget/TextView;
    .end local v17           #tvProvider:Landroid/widget/TextView;
    .end local v18           #tvSpeed:Landroid/widget/TextView;
    .end local v19           #tvStatus:Landroid/widget/TextView;
    .end local v20           #tvTime:Landroid/widget/TextView;
    .end local v21           #tvTtff:Landroid/widget/TextView;
    .restart local v3       #da:Ljava/util/Date;
    .restart local v7       #str:Ljava/lang/String;
    .restart local v9       #tmp:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/ygps/YgpsActivity;->access$2100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    const/4 v6, 0x0

    .line 1780
    const-string v1, "YGPS/Activity"

    const-string v2, "Enter onProviderDisabled function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v3, 0x7f05006a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "gps"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2602(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1783
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1784
    .local v0, tvProvider:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$2600(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    const/4 v6, 0x0

    .line 1789
    const-string v1, "YGPS/Activity"

    const-string v2, "Enter onProviderEnabled function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v3, 0x7f050069

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "gps"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/ygps/YgpsActivity;->access$2602(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1792
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1793
    .local v0, tvProvider:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/ygps/YgpsActivity;->access$2600(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$5;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I
    invoke-static {v1, v6}, Lcom/mediatek/ygps/YgpsActivity;->access$2502(Lcom/mediatek/ygps/YgpsActivity;I)I

    .line 1795
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1799
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter onStatusChanged function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void
.end method
