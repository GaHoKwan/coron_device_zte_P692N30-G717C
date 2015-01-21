.class Lcom/mediatek/lbs/em/LbsAgps$68;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$68;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$68;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    sget-object v1, Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;->GeoLong:Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->editNumberSetting(Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsAgps;->access$5900(Lcom/mediatek/lbs/em/LbsAgps;Lcom/mediatek/lbs/em/LbsAgps$NUMBER_EDIT_NAME_LIST;)V

    .line 1375
    return-void
.end method
