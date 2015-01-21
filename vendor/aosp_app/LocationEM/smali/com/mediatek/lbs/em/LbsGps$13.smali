.class Lcom/mediatek/lbs/em/LbsGps$13;
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

.field final synthetic val$editText_lat:Landroid/widget/EditText;

.field final synthetic val$editText_lng:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsGps$13;->val$editText_lat:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsGps$13;->val$editText_lng:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/mediatek/lbs/em/LbsGps$13;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    .line 685
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->val$editText_lat:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 686
    .local v1, lat:D
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->val$editText_lng:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 687
    .local v3, lng:D
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #setter for: Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D
    invoke-static {v5, v1, v2}, Lcom/mediatek/lbs/em/LbsGps;->access$2502(Lcom/mediatek/lbs/em/LbsGps;D)D

    .line 688
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #setter for: Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D
    invoke-static {v5, v3, v4}, Lcom/mediatek/lbs/em/LbsGps;->access$2602(Lcom/mediatek/lbs/em/LbsGps;D)D

    .line 689
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mTextViewRefLatLng:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsGps;->access$4100(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "Reference Lat=%.06f Lng=%.06f"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsGps;->access$2500(Lcom/mediatek/lbs/em/LbsGps;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #getter for: Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D
    invoke-static {v9}, Lcom/mediatek/lbs/em/LbsGps;->access$2600(Lcom/mediatek/lbs/em/LbsGps;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1           #lat:D
    .end local v3           #lng:D
    :goto_0
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 695
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps$13;->this$0:Lcom/mediatek/lbs/em/LbsGps;

    #calls: Lcom/mediatek/lbs/em/LbsGps;->openDialogLatlng(Z)V
    invoke-static {v5, v11}, Lcom/mediatek/lbs/em/LbsGps;->access$800(Lcom/mediatek/lbs/em/LbsGps;Z)V

    goto :goto_0
.end method
