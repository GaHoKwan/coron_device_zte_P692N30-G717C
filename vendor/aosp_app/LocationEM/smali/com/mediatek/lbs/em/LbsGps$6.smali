.class Lcom/mediatek/lbs/em/LbsGps$6;
.super Ljava/lang/Object;
.source "LbsGps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsGps;->initWidget()V
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
    .line 211
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$6;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$6;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogToSdcard:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$1000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$6;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogNmea:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsGps;->access$900(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$6;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$6;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    #calls: Lcom/mediatek/lbs/em/LbsGps;->getTimeString2(J)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/mediatek/lbs/em/LbsGps;->access$1200(Lcom/mediatek/lbs/em/LbsGps;J)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/lbs/em/LbsGps;->mNmeaFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsGps;->access$1102(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    return-void
.end method
