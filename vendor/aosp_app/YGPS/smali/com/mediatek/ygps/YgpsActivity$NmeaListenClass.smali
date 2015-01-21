.class public Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;
.super Ljava/lang/Object;
.source "YgpsActivity.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NmeaListenClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 4
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mIsShowVersion:Z
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1300(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mLastTimestamp:J
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1400(Lcom/mediatek/ygps/YgpsActivity;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->showVersion()V
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1500(Lcom/mediatek/ygps/YgpsActivity;)V

    .line 1325
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #setter for: Lcom/mediatek/ygps/YgpsActivity;->mLastTimestamp:J
    invoke-static {v0, p1, p2}, Lcom/mediatek/ygps/YgpsActivity;->access$1402(Lcom/mediatek/ygps/YgpsActivity;J)J

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1600(Lcom/mediatek/ygps/YgpsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->saveNMEALog(Ljava/lang/String;)V
    invoke-static {v0, p3}, Lcom/mediatek/ygps/YgpsActivity;->access$1700(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #getter for: Lcom/mediatek/ygps/YgpsActivity;->mTvNmeaLog:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1332
    :cond_1
    return-void
.end method
