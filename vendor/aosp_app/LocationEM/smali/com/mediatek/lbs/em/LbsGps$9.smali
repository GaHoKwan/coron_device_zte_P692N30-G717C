.class Lcom/mediatek/lbs/em/LbsGps$9;
.super Ljava/lang/Object;
.source "LbsGps.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsGps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 6
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    .line 301
    const-string v0, "NMEA"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$1600(Lcom/mediatek/lbs/em/LbsGps;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mediatek/lbs/em/UtilityStringList;->add(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$1708(Lcom/mediatek/lbs/em/LbsGps;)I

    .line 304
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mTextViewNmea:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$1800(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NMEA Count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mNmeaCount:I
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsGps;->access$1700(Lcom/mediatek/lbs/em/LbsGps;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsGps;->access$1600(Lcom/mediatek/lbs/em/LbsGps;)Lcom/mediatek/lbs/em/UtilityStringList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/UtilityStringList;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogNmea:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$900(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const-string v1, "nmea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NMEA_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mNmeaFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsGps;->access$1100(Lcom/mediatek/lbs/em/LbsGps;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsGps$9;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mLogToSdcard:Z
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsGps;->access$1300(Lcom/mediatek/lbs/em/LbsGps;)Z

    move-result v5

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/lbs/em/LbsGps;->write2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 307
    :cond_0
    return-void
.end method
