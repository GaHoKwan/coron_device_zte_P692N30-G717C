.class Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;
.super Ljava/lang/Object;
.source "MyMapActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/MKSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/MyMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;-><init>(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)V

    return-void
.end method


# virtual methods
.method public onGetAddrResult(Lcom/baidu/mapapi/MKAddrInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    iget-object v1, p1, Lcom/baidu/mapapi/MKAddrInfo;->strAddr:Ljava/lang/String;

    #setter for: Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;Ljava/lang/String;)V

    .line 249
    const-string v0, "MyMapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addressString="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->mLocationAddress:Landroid/widget/TextView;
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->access$4(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/MyMapActivity$MySearchListener;->this$0:Lzte/com/cn/cloudnotepad/ui/MyMapActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->addressString:Ljava/lang/String;
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/ui/MyMapActivity;->access$3(Lzte/com/cn/cloudnotepad/ui/MyMapActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onGetBusDetailResult(Lcom/baidu/mapapi/MKBusLineResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 259
    return-void
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/MKDrivingRouteResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 266
    return-void
.end method

.method public onGetPoiDetailSearchResult(II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 273
    return-void
.end method

.method public onGetPoiResult(Lcom/baidu/mapapi/MKPoiResult;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 280
    return-void
.end method

.method public onGetRGCShareUrlResult(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 287
    return-void
.end method

.method public onGetSuggestionResult(Lcom/baidu/mapapi/MKSuggestionResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 294
    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/MKTransitRouteResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 301
    return-void
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/MKWalkingRouteResult;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 308
    return-void
.end method
