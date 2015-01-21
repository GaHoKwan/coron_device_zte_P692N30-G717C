.class Lcom/mediatek/lbs/em/LbsMisc$2;
.super Ljava/lang/Object;
.source "LbsMisc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMisc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$2;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$2;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    const-string v1, "com.mediatek.ygps"

    const-string v2, "com.mediatek.ygps.YgpsActivity"

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->startComponent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/lbs/em/LbsMisc;->access$300(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
