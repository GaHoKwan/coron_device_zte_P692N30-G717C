.class Lcom/mediatek/lbs/em/LbsGps$7;
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
    .line 217
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$7;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps$7;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps$7;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogToSdcard:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsGps;->access$1000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/mediatek/lbs/em/LbsGps;->mLogToSdcard:Z
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsGps;->access$1302(Lcom/mediatek/lbs/em/LbsGps;Z)Z

    .line 220
    return-void
.end method
