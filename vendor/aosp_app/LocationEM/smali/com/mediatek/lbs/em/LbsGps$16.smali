.class Lcom/mediatek/lbs/em/LbsGps$16;
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

.field final synthetic val$dialog1:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$16;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsGps$16;->val$dialog1:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$16;->val$dialog1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 721
    return-void
.end method
