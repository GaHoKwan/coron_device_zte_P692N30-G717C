.class Lcom/mediatek/lbs/em/LbsGps$4;
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
    .line 197
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$4;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$4;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->startDeletingAidingData()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$500(Lcom/mediatek/lbs/em/LbsGps;)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$4;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const-wide/16 v1, 0x12c

    #calls: Lcom/mediatek/lbs/em/LbsGps;->msleep(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsGps;->access$600(Lcom/mediatek/lbs/em/LbsGps;J)V

    .line 202
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$4;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->resetVarialbe()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$700(Lcom/mediatek/lbs/em/LbsGps;)V

    .line 204
    return-void
.end method
