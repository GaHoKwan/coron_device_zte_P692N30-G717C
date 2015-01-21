.class Lcom/mediatek/lbs/em/LbsGps$15;
.super Ljava/lang/Object;
.source "LbsGps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsGps;->openDialogLatlng(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsGps;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$15;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsGps$15;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$15;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->updateRefLatLng()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsGps;->access$4200(Lcom/mediatek/lbs/em/LbsGps;)V

    .line 705
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 706
    return-void
.end method
