.class Lcom/mediatek/connectivity/CdsWifiInfoActivity$2;
.super Ljava/lang/Object;
.source "CdsWifiInfoActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsWifiInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$2;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #setter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostType:I
    invoke-static {v0, p2}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$502(Lcom/mediatek/connectivity/CdsWifiInfoActivity;I)I

    .line 260
    return-void
.end method
