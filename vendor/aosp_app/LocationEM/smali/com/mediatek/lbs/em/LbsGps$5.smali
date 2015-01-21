.class Lcom/mediatek/lbs/em/LbsGps$5;
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
    .line 206
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$5;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$5;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/lbs/em/LbsGps;->openDialogLatlng(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsGps;->access$800(Lcom/mediatek/lbs/em/LbsGps;Z)V

    .line 209
    return-void
.end method
